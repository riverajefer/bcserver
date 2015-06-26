<?php

class PortafolioController extends BaseController {


	/****************************************
	  Retorna Todos los portafolios
	****************************************/
	
	public function lista()
	{

	    $portafolios = Portafolio::all();
	    
	    if(empty($portafolios)){
	        App::abort(404);
	        return Response::json(['success'=>false]);
	    }
		return Response::json(['success'=>true, 'portafolios'=>$portafolios]);
	}


	/***************************************************
	  Guarda el portafolio seleccionado por el user
	****************************************************/

	public function postRegistro(){

		$input = Input::all();
	    $user_id = Input::get('user_id');
	    $portafolio = Input::get('portafolio_id');

	    $user = User::find($user_id);
	    $user->portafolio_id = $portafolio;
	    $user->save();

	    return Response::json(['success'=>true, 'user'=>$user]);
		
	}

	public function portafolio($id)
	{
		$portafolio = Portafolio::find($id);
	    
	    if(empty($portafolio)){
	        App::abort(404);
	        return Response::json(['success'=>false]);
	    }
		return Response::json(['success'=>true, 'portafolios'=>$portafolio]);
	}



}
