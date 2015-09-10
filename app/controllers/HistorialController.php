<?php

class HistorialController extends BaseController {


	/**********************************************************************
	  Retorna Todo el historial por usuario, agrupados por su consecutivo
	***********************************************************************/	

	public function getHistorial($id)
	{

		$transacciones = User::find($id)->transacciones()
			->where('estado', 1)
			->orderBy('id', 'desc')
			->take(15)->skip(0)
			->get();
		return Response::json(['success'=>true, 'historial'=>$transacciones, 'count'=>count($transacciones)]);

	}

	/***********************************************************************************
	  Retorna El último registro de la semana, por usuario, agrupado por su consecutivo
	************************************************************************************/	

	public function getMoreHistorial($id, $mas)
	{

		$skip_ini = 9; 
		$skip = $skip_ini + $mas;
		
		$transacciones = User::find($id)->transacciones()
			->where('estado', 1)
			->orderBy('id', 'desc')
			->take(3)->skip($skip)
			->get();

		return Response::json(['success'=>true, 'historial'=>$transacciones]);

	}	


	/**********************************************************************
	  Retorna Detalles del ahorro por consecutivo
	***********************************************************************/	

	public function getHistorialDetalles($user_id, $consecutivo)
	{

		$ua = UserAlcancia::find($consecutivo);
		$detalles = $ua->userAlcanciaDeposito;
		$ubicacion_alcancia = $ua->alcancia->ubicacion;

 		return Response::json(['success'=>true, 'ubicacion' =>$ubicacion_alcancia, 'detalles'=>$detalles]);            

	}		


	/******************************************************************************
	  Retorna El historial entre un rango de fechas para un user
	*******************************************************************************/

	public function getHistorialRango($id)
	{

		$fecha_inicio = Input::get('fecha_inicio');
		$fecha_fin = Input::get('fecha_fin');

		$fecha_fin = date('Y-m-d', strtotime('+1 day', strtotime($fecha_fin)));

		$transacciones = User::find($id)->transacciones()
			->where('estado', 1)
			->orderBy('id', 'desc')
			->whereBetween('created_at', array($fecha_inicio, $fecha_fin))
			->get();

		$cantidad = count($transacciones);
		$saldo    = $transacciones->sum('valor');

		return Response::json(['success'=>true, 'historial'=>$transacciones, 'cantidad'=>$cantidad, 'saldo'=>$saldo]);
	}

	

}
