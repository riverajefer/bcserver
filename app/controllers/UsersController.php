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


}
