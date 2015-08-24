<?php

class UsersController extends BaseController {

	public function getUsers()
	{

	    $usuarios= User::all();
	    
	    if(empty($usuarios)){
	        App::abort(404);
	    }

	    return View::make('usuarios.index')->with('usuarios', $usuarios);

	}

	public function getHistorialUser($id)
	{

		$usuario = User::find($id);
		$ahorros = $usuario->ahorro;
	    return View::make('usuarios.historial')->with('ahorros', $ahorros)->with('usuario', $usuario);

	}

	public function registroTarjeta()
	{

		$input = Input::all();

	    $user_id = Input::get('user_id');
	    $tarjeta = Input::get('tarjeta');

        $reglas =  array(
            'tarjeta'    => 'required|numeric',
        );

       $validation = Validator::make($input, $reglas);

       if ($validation->fails())
        {
            return Response::json([
                'success'=>false, 
                'errors'=>$validation->errors()->toArray()
            ]);
        }  

        $existe_tarjeta = User::where('tag', $tarjeta)->first();

        if( empty($existe_tarjeta) ){
		    $user = User::find($user_id);
		    $user->tag = $tarjeta;
		    $user->save();

		    return Response::json(['success'=>true, 'user'=>$user]);	
        }
        else{

            return Response::json([
                'success'=>false, 
                'errors'=>array('tarjeta' => 'El número de tarjeta ya está registrado' )
            ]);
        }
	}

	public function getCodigoTarjeta($id)
	{
		$usuario = User::find($id);
		return Response::json(['success'=>true, 'tag'=>$usuario->tag]);	
	}

    public function postModificarPerfil($user_id)
    {

        $input = Input::all();
        $reglas =  array(
            'nombre'    		=> 'required', 
            'apellido'  		=> 'required',
            'cedula'    		=> 'required|numeric',
            'email'     		=> 'required|email|unique:users,email,'.$user_id,
            'pin'       		=> 'required|numeric|digits_between:0,4',
            'fecha_nacimiento'	=> 'required|date',
            'sexo'				=> 'required',
            'habilitar_pin'		=> 'required'
            
        );

       $validation = Validator::make($input, $reglas);

       if ($validation->fails())
        {
            return Response::json([
                'success'=>false, 
                'errors'=>$validation->errors()->toArray()
            ]);
        }       

        $user = User::find($user_id);

        $user->first_name 		= Input::get('nombre');
        $user->last_name 		= Input::get('apellido');
        $user->cedula	  		= Input::get('cedula');
        $user->email 	 		= Input::get('email');
        $user->pin 				= Input::get('pin');
        $user->fecha_nacimiento = Input::get('fecha_nacimiento');
        $user->sexo 			= Input::get('sexo');
        $user->habilitar_pin 	= Input::get('habilitar_pin');
        $user->save();


		return Response::json(['success'=>true, 'user'=>$user]);

    }

}
