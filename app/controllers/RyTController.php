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
            return Response::json(['success'=>false, 'msg'=>'El usuario no se encontró, en la base de datos']);
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

                // Valida que el valor, a transferir no sea superior al saldo
                $usuario = User::find($user_id);
                
                $porcentaje = $usuario->porcentaje; // get porcentaje user
                $saldo = Recursos::getSumaMonedaByUser($user_id);
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
                $transaccion->movimiento   = 'Transferencia Bancoink';
                $transaccion->transferencia_id   = $transferencia->id;
                $transaccion->fecha            = date('Y-m-d');
                $transaccion->estado    = 1;
                $transaccion->save();

                $transaccion2 = new Transacciones();

                $transaccion2->user_id          = $userbancoink->user_id_t;
                $transaccion2->valor            = Input::get('valor');
                $transaccion2->tipo             = 2;
                $transaccion2->origen           = 'UsuarioBancoink';
                $transaccion2->movimiento       = 'Transferencia Bancoink';
                $transaccion2->transferencia_id = $transferencia->id;
                $transaccion2->fecha            = date('Y-m-d');
                $transaccion2->estado           = 1;
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
        $usuarioBanco->estado         = 0;
        $usuarioBanco->msg_estado     = 'Inactiva';

        $usuarioBanco->save();

        return Response::json(['success'=>true, 'datos'=>$usuarioBanco]);
    }

    public function listaTransferenciasBanco($user_id)
    {

        $ub = User::find($user_id)->bancos;
        $trans = array();

        foreach ($ub as $key => $value) {
                $banco = Bancos::find($value->banco_id);
                $trans[$key]['id']            = $value->id;
                $trans[$key]['banco']         = $banco->banco;
                $trans[$key]['logo']          = $banco->logo;
                $trans[$key]['estado']        = $value->estado;
                $trans[$key]['msg_estado']    = $value->msg_estado;
                $trans[$key]['titular']       = $value->titular;
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

    public function detalleTransferenciasBancoink($id)
    {

        $trans = UserBancoinkTransferencia::find($id);
        $alias = UsuariosBancoink::find($trans->usuariobancoink_id)->alias;

        return Response::json(['success'=>true, 'datos'=>$trans, 'alias'=>$alias]);       
    }

    public function detallesTransferenciasBanco($id)
    {

        $cuenta = UsersBanco::find($id);
        $banco  = Bancos::find($cuenta->banco_id);
        $trans  = $cuenta->userBancoTransferencia;

        return Response::json(['success'=>true, 'banco'=>$banco, 'cuenta'=>$cuenta, 'datos'=>$trans]);       

    }

    public function detalleTransferenciasBanco($id)
    {


        $trans  = UserBancoTransferencia::find($id);
        $cuenta = UsersBanco::find($trans->userbanco_id);
        $banco  = Bancos::find($cuenta->banco_id);

        return Response::json(['success'=>true, 'banco'=>$banco, 'cuenta'=>$cuenta, 'datos'=>$trans]);       

    }


    public function getCuentaBancaria($id)
    {

        $cuenta = UsersBanco::find($id);
        $banco  = Bancos::find($cuenta->banco_id);

        return Response::json(['success'=>true, 'banco'=>$banco, 'cuenta'=>$cuenta]);
    }

    public function TransferenciaBanco()
    {

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

                // Valida que el valor, a transferir no sea superior al saldo
                $usuario = User::find($user_id);
                
                $porcentaje = $usuario->porcentaje; // get porcentaje user
                $saldo = Recursos::getSumaMonedaByUser($user_id);
                $saldo = $saldo - ($saldo*$porcentaje);


                if(Input::get('valor') >= $saldo){
                    return Response::json(['success'=>false, 'msg'=>'El valor que va a transferir, debe ser menor a su saldo']);
                }


                $transferencia = new UserBancoTransferencia();

                $transferencia->userbanco_id  = Input::get('id');
                $transferencia->descripcion   = Input::get('descripcion');
                $transferencia->valor         = Input::get('valor');
                $transferencia->estado        = 0;
                $transferencia->msg_estado    = 'Pendiente';
                $transferencia->save();

                $userbanco = UsersBanco::find(Input::get('id'));

                $transaccion = new Transacciones();

                // Programar el % descuento, por está transaccion
                $transaccion->user_id                = $userbanco->user_id;
                $transaccion->valor                  = Input::get('valor')*(-1); // se vuelve negativo, 
                $transaccion->tipo                   = 4;
                $transaccion->origen                 = 'Transferencia Bancaria';
                $transaccion->transferencia_banco_id = $transferencia->id;
                $transaccion->movimiento             = 'Transferencia Bancaria';
                $transaccion->fecha                  = date('Y-m-d');
                $transaccion->estado                 = 0; 
                $transaccion->save();

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


}


