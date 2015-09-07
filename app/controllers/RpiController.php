<?php

class RpiController extends BaseController {


	public function getUser($tag)
	{

	    $user = User::where('tag', $tag)->first();
	    if(empty($user)){
	        App::abort(404);
	    }

		$nombre = Recursos::sanear_string($user->first_name);
		$apellido =Recursos::sanear_string($user->last_name);
		$nombre_completo = $nombre.' '.$apellido;

	    return $nombre_completo;
	    
	}

	public function getUserId($tag)
	{

	    $user = User::where('tag', $tag)->first();
	    
	    if(empty($user)){
	        App::abort(404);
	    }

	    $id = $user->id;
	    return $id;

	}


	public function sesionUserAlcancia($user_id, $alcancia_id)
	{
		$UserAlcancia = new UserAlcancia();

		$UserAlcancia->user_id 	   = $user_id;
		$UserAlcancia->alcancia_id = $alcancia_id;
		$UserAlcancia->save();

		return $UserAlcancia->id;
	}

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


	/****************************************************
	  Guarda los registros de las monedas rechazadas
	*****************************************************/

	public function saveRejected($id)
	{

	    $email       = Input::get('email');
	    $password    = Input::get('password');
	    $user_id     = Input::get('user_id');

	    Auth::attempt(array(
	        'email'     => $email ,
	        'password'  => $password,
	    ));

	    if(Auth::check())
	    {

	        $rejected = new Rejected();
	        $rejected->user_alcancia_id  = $id; 
	        $rejected->save();

	        return "Rejected Guardado Ok";
	    }

	    else{
	        return "No logueado";
	    }

	}

}
