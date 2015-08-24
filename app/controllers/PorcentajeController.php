<?php

class PorcentajeController extends BaseController {

// Este metodo, devuelve, el porcentaje (de descuento)  general, 
// o el espcifico, por user, en caso de que este registrado
	public function getValor($user_id)
	{

	    $porcentaje_general = Porcentaje::take(1)->get();

	    $user = User::findOrFail($user_id);

	   	$user_porcentaje = $user->porcentaje;	

	   	$ValorPorcentaje = '';

		if($user_porcentaje)
		{
			$ValorPorcentaje = $user_porcentaje->valor;
		}

		else{

			$ValorPorcentaje = $porcentaje_general[0]->valor;
		}

		return Response::json(['success'=>true, 'porcentaje'=> floatval($ValorPorcentaje)]);


	}

}