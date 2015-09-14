<?php

class HistorialController extends BaseController {


	/**********************************************************************
	  Retorna Todo el historial por usuario, agrupados por su consecutivo
	***********************************************************************/	

	public function getHistorial($id)
	{

		$query = User::find(1)->transacciones()->where('estado', 1)->orderBy('id', 'desc');

	    $transacciones = $query->take(15)->skip(0)->get();
	    $cantidad      = count($query->get());
	    $saldo         = $query->sum('valor');

	    return Response::json(['success'=>true, 'historial'=>$transacciones, 'count'=>$cantidad, 'saldo'=>$saldo]);

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

	/******************************************************************************
	  Retorna El historial entre un rango de fechas para un user
	*******************************************************************************/

	public function getDataGrafica($id)
	{

		$query = DB::table('transacciones')
			->selectRaw('fecha, sum(valor) as sum')
			->where('user_id', $id)
			->groupBy('fecha')
			->orderBy('fecha')
			->get();

		$datos = array();
		$prepara = array();
		foreach ($query as $key => $value) {
			$fechaUTC = Recursos::fechaUTC($value->fecha);
			$datos[]  = array($fechaUTC, $value->sum);
			$prepara[]  = array($value->sum, $fechaUTC, $value->fecha);
		}

		// Logica, para agregar al comienzo del arreglo, un dato 0, el día anterior de un deposito.
		$fecha_ini =  $prepara[0][2];
		$ayer = date('Y-m-d', strtotime('-1 day', strtotime($fecha_ini)));
		$ayer = Recursos::fechaUTC($ayer);
		$nuevo = array($ayer, 0);
		array_unshift($datos, $nuevo);

		return Response::json(['success'=>true, 'datos'=>$datos]);

	}
	

	/******************************************************************************
	  Retorna El historial entre un rango de fechas para un user, por movimiento
	*******************************************************************************/

	public function getDataGrafica2($id)
	{

		$transacciones = User::find($id)->transacciones()->orderBy('id', 'asc')->get();

		$datos = array();
		$movimientos = array();
		foreach ($transacciones as $key => $value) {
			$fecha = $value->created_at;
			$name = $value->origen;
			$fechaUTC = Recursos::fechaUTC($fecha);
			$movimientos[round($value->valor)]  = array($value->movimiento);
			///$datos[]  = array($fechaUTC, $value->valor, 'id'=>$name);
			$datos[]  = array($fechaUTC, $value->valor);
		}

		return Response::json(['success'=>true, 'datos'=>$datos, 'movimientos'=>$movimientos]);

	}	

}
