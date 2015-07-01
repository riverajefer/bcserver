<?php

class AhorroController extends BaseController {


	/****************************************************
	  Retorna el total ahorrado por user
	*****************************************************/

	public function getAhorro($id)
	{
		$user  = User::find($id);
		$ahorro = number_format($user->ahorro->sum('moneda'), 2);
		return "$ ".$ahorro;
	}


	/****************************************************
	  Guarda el ahorro, enviado por el user
	*****************************************************/

	public function postAhorro()
	{

	    $email       = Input::get('email');
	    $password    = Input::get('password');
	    $moneda      = Input::get('moneda');
	    $user_id     = Input::get('user_id');
	    $consecutivo = Input::get('consecutivo');

	    Auth::attempt(array(
	        'email'     => $email ,
	        'password'  => $password,
	    ));

	    if(Auth::check())
	    {

			setlocale(LC_TIME, "esp");
			$fecha =  utf8_encode(strftime("%A, %d de %B de %Y, Hora %H:%M"));
			$fecha_corta =  utf8_encode(strftime("%d de %B - %H:%M"));

	    	$alcancia_id = Auth::User()->id;
	        
	    	
	        $ahorro = new Ahorro();
	        $ahorro->user_id          = $user_id; 
	        $ahorro->alcancia_id      = $alcancia_id;
	        $ahorro->consecutivo      = $consecutivo;
	        $ahorro->moneda 	 	  = $moneda; 
	        $ahorro->fecha 	  	  	  = $fecha;
	        $ahorro->fecha_corta      = $fecha_corta;
	        $ahorro->save();

			$usuario = User::find($user_id);
			$ahorro = $usuario->ahorro;
			$suma = $ahorro->sum('moneda');

		    Pusherer::trigger('Canal_moneda'.$usuario->email, 'my_event-'.$usuario->email, array( 'moneda' => $moneda, 'suma'=>$suma ));
	        
	        return "Ahorro Guardado Ok";
	    }

	    else{
	        return "No logueado";
	    }

	}

	/****************************************************
	  Retorna el total ahorrado por user
	*****************************************************/	

	public function sumaAhorro()
	{
		$user_id = Input::get('user_id');

		$usuario = User::find($user_id);
		$ahorro = $usuario->ahorro;
		$suma = $ahorro->sum('moneda');
		return Response::json(['success'=>true, 'suma'=>$suma]);	
	}

	/**********************************************************************
	  Retorna Todo el historial por usuario, agrupados por su consecutivo
	***********************************************************************/	

	public function getHistorial($id)
	{

		$historial = DB::table('alcancias')
            ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
            ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
            ->where('ahorro.user_id', $id)
            ->groupBy('ahorro.consecutivo')
            ->orderBy('ahorro.id', 'desc')
            ->get();

		return Response::json(['success'=>true, 'historial'=>$historial]);

	}


	/******************************************************************************
	  Retorna El historial de la semana, por usuario, agrupados por su consecutivo
	*******************************************************************************/	

	public function getHistorialSemana($id)
	{

		$fecha = new DateTime();

		$fecha->setISODate(date("Y"), date("W"))->format('Y-m-d');
		$fecha_inicio = $fecha->format('Y-m-d');

		$fecha_fin =  $fecha->add(new DateInterval('P1W'))->format('Y-m-d');

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(10)->skip(0)
		    ->get();

		$user = User::find($id);
		$ahorro_semana = $user->ahorro()->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))->sum('moneda');

		return Response::json(['success'=>true, 'historial'=>$historial, 'ahorro_semana'=>$ahorro_semana]);

	}


	/***********************************************************************************
	  Retorna El último registro de la semana, por usuario, agrupado por su consecutivo
	************************************************************************************/	

	public function getLastRowHistorialSemana($id, $mas)
	{

		$skip_ini = 9; 
		$skip = $skip_ini + $mas;

		$fecha = new DateTime();

		$fecha->setISODate(date("Y"), date("W"))->format('Y-m-d');
		$fecha_inicio = $fecha->format('Y-m-d');

		$fecha_fin =  $fecha->add(new DateInterval('P1W'))->format('Y-m-d');

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(1)->skip($skip)
		    ->get();

		return Response::json(['success'=>true, 'historial'=>$historial]);

	}	




	/******************************************************************************
	  Retorna El historial del mes, por usuario, agrupados por su consecutivo
	*******************************************************************************/

	public function getHistorialMes($id)
	{

		$primer_dia = new DateTime("first day of this month");
		$ultimo_dia = new DateTime("last day of this month");

		$fecha_inicio = $primer_dia->format('Y-m-d');
		$fecha_fin = $ultimo_dia->format('Y-m-d');

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(10)->skip(0)
		    ->get();


		// envio el mes, para mostrarlo el la app    
		setlocale(LC_TIME, "esp");
		$mes =  ucwords(strftime("%B"));

		$user = User::find($id);
		$ahorro_mes = $user->ahorro()->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))->sum('moneda');

		return Response::json(['success'=>true, 'historial'=>$historial, 'ahorro_mes'=>$ahorro_mes, 'mes'=>$mes]);


	}


	/***********************************************************************************
	  Retorna El último registro del mes, por usuario, agrupado por su consecutivo
	************************************************************************************/	

	public function getLastRowHistorialMes($id, $mas)
	{

		$skip_ini = 9; 
		$skip = $skip_ini + $mas;

		$primer_dia = new DateTime("first day of this month");
		$ultimo_dia = new DateTime("last day of this month");

		$fecha_inicio = $primer_dia->format('Y-m-d');
		$fecha_fin = $ultimo_dia->format('Y-m-d');

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(1)->skip($skip)
		    ->get();

		return Response::json(['success'=>true, 'historial'=>$historial]);

	}




	/**********************************************************************
	  Retorna Detalles del ahorro por consecutivo
	***********************************************************************/	

	public function getHistorialDetalles($user_id, $consecutivo)
	{

		$detalles = DB::table('ahorro')->where('user_id', $user_id)->where('consecutivo', $consecutivo);
		$registros =  $detalles->get();

		$alcancia = $detalles->first()->alcancia_id;
		$ubicacion = Alcancia::find($alcancia)->ubicacion;

 		return Response::json(['success'=>true, 'ubicacion' =>$ubicacion, 'detalles'=>$registros]);            

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
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
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

	/***********************************************************************************
	  Retorna el siguiente registro para el scroll infinito, por rango de fecha
	************************************************************************************/	

	public function getLastRowHistorialRango($id, $mas)
	{

		$skip_ini = 29; 
		$skip = $skip_ini + $mas;

		$fecha_inicio = Input::get('fecha_inicio');
		$fecha_fin    = Input::get('fecha_fin');

		$historial = DB::table('alcancias')
		    ->join('ahorro', 'alcancias.id', '=', 'ahorro.alcancia_id')
		    ->select(DB::raw('sum(ahorro.moneda) as suma, ahorro.consecutivo, ahorro.fecha_corta as fecha,  ahorro.fecha as fecha_letra, alcancias.nombre, alcancias.ubicacion'))
		    ->where('ahorro.user_id', $id)
		    ->whereBetween('ahorro.created_at', array($fecha_inicio, $fecha_fin))
		    ->groupBy('ahorro.consecutivo')
		    ->orderBy('ahorro.id', 'desc')
		    ->take(1)->skip($skip)
		    ->get();

		return Response::json(['success'=>true, 'historial'=>$historial]);

	}	

	/**********************************************************************
	  Retorna el historial, de los últimos 30 dias por usuario, agrupados por su consecutivo
	***********************************************************************/	

	public function getHistorialLast30($id)
	{

		$user = User::find($id);

		$hoy = date('Y-m-d');
		$hace_30_dias = date('Y-m-d', strtotime('today - 30 days')); 
		$date = new DateTime($hoy);

		$date->modify('+1 day');
		$hoy =  $date->format('Y-m-d');
		
		/*echo "Hoy: ".$hoy;
		echo "<br>";
		echo "hace_30_dias: ".$hace_30_dias;
		*/
		//return;

		$ahorro_30dias = $user->ahorro()->whereBetween('ahorro.created_at', array($hace_30_dias, $hoy))->sum('moneda');

		return Response::json(['success'=>true, 'ahorro_30d'=>$ahorro_30dias]);

	}

}
