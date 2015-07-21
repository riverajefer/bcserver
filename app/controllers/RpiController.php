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

	public function getConsecutivo($user_id)
	{
		$conse = Ahorro::where('user_id', $user_id)->orderBy('created_at', 'desc')->first();

	    if(empty($conse)){
	        $conse = 1;
	    }else{
	    	$conse = $conse->consecutivo+1;	
	    }

        return $conse;
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


	public function getEstadoPuerta()
	{

		$estado_puerta = Puerta::where('token', '123456')->first();
		return $estado_puerta->estado;

	}

	public function cerrarPuerta()
	{

		$cambio_estado = Puerta::find(1);
		$cambio_estado->estado = 1;
		$cambio_estado->save();
		return Response::json(['success'=>true]);	

	}	

}
