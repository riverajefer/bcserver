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
	  Retorna Todo el historial por usuario, agrupados por su consecutivo
	***********************************************************************/	

	public function getHistorial2($id)
	{

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.created_at as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(15)->skip(0)
		    ->get();


		$count = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->where('ahorro.user_id', $id)
		    ->groupBy('ahorro.consecutivo')
		    ->get();

		return Response::json(['success'=>true, 'historial'=>$historial, 'count'=>count($count)]);

	}




	/***********************************************************************************
	  Retorna El último registro de la semana, por usuario, agrupado por su consecutivo
	************************************************************************************/	

	public function getMoreHistorial2($id, $mas)
	{

		$skip_ini = 9; 
		$skip = $skip_ini + $mas;

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.created_at as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(3)->skip($skip)
		    ->get();

		return Response::json(['success'=>true, 'historial'=>$historial]);

	}



	/**********************************************************************
	  Retorna Detalles del ahorro por consecutivo
	***********************************************************************/	

	public function getHistorialDetalles($user_id, $consecutivo)
	{

		/*
		$detalles = DB::table('ahorro')->where('user_id', $user_id)->where('consecutivo', $consecutivo);
		$registros =  $detalles->get();

		$alcancia = $detalles->first()->alcancia_id;
		$ubicacion = Alcancia::find($alcancia)->ubicacion;
*/
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

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.created_at as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    //->take(30)->skip(0)
		    ->get();

		$user = User::find($id);
		$ahorro = $user->ahorro()->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))->sum('moneda');

		return Response::json(['success'=>true, 'historial'=>$historial, 'ahorro'=>$ahorro]);

	}

	

}
