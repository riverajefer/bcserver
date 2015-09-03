<?php

class RyTController extends BaseController {

	public function buscarUserbyEmail($email, $mi_email)
	{

        try{

            $user = Sentry::findUserByLogin($email);

            if($mi_email == $user->email){
                return Response::json(['success'=>false, 'msg'=>'No, se puede buscar a usted mismo']);
            }        

            return Response::json(['success'=>true, 'user'=>$user]);
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            return Response::json(['success'=>false, 'msg'=>'El usuario No existe']);
        }

	}

    public function addUserBancoink()
    {

        $user_id   = Input::get('user_id');
        $user_id_t = Input::get('user_id_t');

        $usuario_registrado = UsuariosBancoink::where('user_id', $user_id)->where('user_id_t', $user_id_t)->first();

        if($usuario_registrado){
            return Response::json(['success'=>false, 'msg'=>'El usuario ya está registrado', 'datos'=>$usuario_registrado ]);
        }else{

            $UsuariosBancoink = new UsuariosBancoink();
            $UsuariosBancoink->user_id   = Input::get('user_id');
            $UsuariosBancoink->user_id_t = Input::get('user_id_t');
            $UsuariosBancoink->alias     = Input::get('alias');
            $UsuariosBancoink->save();

            return Response::json(['success'=>true, 'datos'=>$UsuariosBancoink]);

        }

    }

    public function TransferenciaBancoink()
    {

        // validar que el valor que se va atransferir nosea superior al saldo

        $input = Input::all();
        $reglas =  array(
            'pw'    => 'required',
            'valor' => 'required|numeric',
        );

       $validation = Validator::make($input, $reglas);

       if ($validation->fails())
        {
            return Response::json([
                'success'=>false, 
                'valida_input'=>false,
                'errors' =>$validation->errors()->toArray()
            ]);
        } 

        // validar si la contraseña, fue correcta    
        try
        {
            // Find the user using the user id
            $user_id = Input::get('user_id');
            $user = Sentry::findUserById(Input::get('user_id'));

            if($user->checkPassword( Input::get('pw') ))
            {

                // validar que el valor que se va atransferir nosea superior al saldo

                $porcentaje = Recursos::getPorcentajeUser($user_id);
                $saldo = User::find($user_id)->ahorro->sum('moneda');
                $saldo = $saldo - ($saldo*$porcentaje);

                if(Input::get('valor') >= $saldo){
                    return Response::json(['success'=>false, 'msg'=>'El valor que va a transferir, debe ser menor a su saldo']);
                }
                

                $transferencia = new UserBancoinkTransferencia();

                $transferencia->usuariobancoink_id = Input::get('id');
                $transferencia->descripcion        = Input::get('descripcion');
                $transferencia->valor              = Input::get('valor');
                $transferencia->save();

                // 
                $userbancoink = UsuariosBancoink::find(Input::get('id'));

                $transaccion = new Transacciones();

                $transaccion->user_id  = $userbancoink->user_id;
                $transaccion->valor    = Input::get('valor')*(-1); // se vuelve negativo
                $transaccion->tipo     = 3;
                $transaccion->origen   = 'UsuarioBancoink';
                $transaccion->transferencia_id   = $transferencia->id;
                $transaccion->save();

                $transaccion2 = new Transacciones();

                $transaccion2->user_id  = $userbancoink->user_id_t;
                $transaccion2->valor    = Input::get('valor');
                $transaccion2->tipo     = 2;
                $transaccion2->origen   = 'UsuarioBancoink';
                $transaccion2->transferencia_id   = $transferencia->id;
                $transaccion2->save();                

                return Response::json(['success'=>true, 'valida_input'=>true, 'msg'=>'La transferencia de realizo correctamente']);

            }
            else
            {
                return Response::json(['success'=>false, 'valida_input'=>true,  'msg'=>'Contraseña incorrecta']);
            }
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            return Response::json(['success'=>false, 'valida_input'=>true, 'msg'=>'El usuario no existe']);
        }


    }


    public function addTransferenciaBancoink()
    {
        //falta validar que si el usuario ya esta agregado, no lo vuelva a adicionar

        $UsuariosBancoink = new UsuariosBancoink();
        $UsuariosBancoink->user_id   = Input::get('user_id');
        $UsuariosBancoink->user_id_t = Input::get('user_id_t');
        $UsuariosBancoink->alias     = Input::get('alias');
        $UsuariosBancoink->save();

        return Response::json(['success'=>true, 'datos'=>$UsuariosBancoink]);

    }

    public function listaTransferenciasBancoink($user_id)
    {

        $ub = User::find($user_id)->usuarioBancoink;
        $trans = array();

        foreach ($ub as $key => $value) {
            $trans[$key]['alias'] = $value->alias;
            $trans[$key]['id']   =  $value->id;
            $trans[$key]['transacciones'] = count($value->userBancoinkTransferencia);
        }
        return Response::json(['success'=>true, 'datos'=>$trans]);        

    }

    public function listaBancos()
    {
        $bancos = Bancos::all();
        return Response::json(['success'=>true, 'bancos'=>$bancos]);        
    }    

    public function getBanco($id)
    {
        $banco = Bancos::find($id);
        return Response::json(['success'=>true, 'banco'=>$banco]);        
    }    

    public function addBanco()
    {

        $usuarioBanco = new UsersBanco();
        $usuarioBanco->user_id        = Input::get('user_id');
        $usuarioBanco->banco_id       = Input::get('banco_id');
        $usuarioBanco->cedula         = Input::get('cedula');
        $usuarioBanco->tipo_cuenta    = Input::get('tipo_cuenta');
        $usuarioBanco->numero_cuenta  = Input::get('numero_cuenta');
        $usuarioBanco->titular        = Input::get('titular');
        $usuarioBanco->save();

        return Response::json(['success'=>true, 'datos'=>$usuarioBanco]);

    }

    public function listaTransferenciasBanco($user_id)
    {

        $ub = User::find($user_id)->bancos;
        $trans = array();

        foreach ($ub as $key => $value) {
                $banco = Bancos::find($value->banco_id);
                $trans[$key]['id']   =  $value->id;
                $trans[$key]['banco'] = $banco->banco;
                $trans[$key]['logo']  = $banco->logo;
                $trans[$key]['transacciones'] = count($value->userBancoTransferencia);
        }
        return Response::json(['success'=>true, 'datos'=>$trans]);        

    }    

    public function detallesTransferenciasBancoink($id)
    {

        $ub = UsuariosBancoink::find($id);
        $alias = $ub->alias;
        $trans = $ub->userBancoinkTransferencia;

        return Response::json(['success'=>true, 'datos'=>$trans, 'alias'=>$alias]);       

    }

    public function detallesTransferenciasBanco($id)
    {

        $ub = UsersBanco::find($id);
        $b  = Bancos::find($ub->banco_id);
        $banco = $b->banco;
        $logo  = $b->logo;
        $trans = $ub->userBancoTransferencia;

        return Response::json(['success'=>true, 'banco'=>$banco, 'logo'=>$logo, 'datos'=>$trans]);       

    }


}


