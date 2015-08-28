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
        //falta validar que si el usuario ya esta agregado, no lo vuelva a adicionar

        $UsuariosBancoink = new UsuariosBancoink();
        $UsuariosBancoink->user_id   = Input::get('user_id');
        $UsuariosBancoink->user_id_t = Input::get('user_id_t');
        $UsuariosBancoink->alias     = Input::get('alias');
        $UsuariosBancoink->save();

        return Response::json(['success'=>true, 'datos'=>$UsuariosBancoink]);

    }

    public function TransferenciaBancoink()
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
            $user = Sentry::findUserById(Input::get('user_id'));

            if($user->checkPassword( Input::get('pw') ))
            {

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
                $transaccion->save();

                $transaccion2 = new Transacciones();

                $transaccion2->user_id  = $userbancoink->user_id_t;
                $transaccion2->valor    = Input::get('valor');
                $transaccion2->tipo     = 2;
                $transaccion2->origen   = 'UsuarioBancoink';
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
}
