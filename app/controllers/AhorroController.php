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
			// get porcentaje user
			$porcentaje = Recursos::getPorcentajeUser($user_id);

			$ahorro = $usuario->ahorro;

			$suma = $ahorro->sum('moneda');
			$suma = $suma - ($suma*$porcentaje);

		    //Pusherer::trigger('Canal_moneda'.$usuario->email, 'my_event-'.$usuario->email, array( 'moneda' => $moneda, 'suma'=>$suma ));
	        
	        return "Ahorro Guardado Ok";
	    }

	    else{
	        return "No logueado";
	    }

	}

	/****************************************************
	  Guarda los registros de las monedas rechazadas
	*****************************************************/

	public function postRejected()
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

	    	$alcancia_id = Auth::User()->id;
	        
	        $rejected = new Rejected();
	        $rejected->user_id      = $user_id; 
	        $rejected->alcancia_id  = $alcancia_id;
	        $rejected->save();

	        return "Rejected Guardado Ok";
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

		// get porcentaje user
		$porcentaje = Recursos::getPorcentajeUser($user_id);

		$ahorro = $usuario->ahorro;

		$suma = $ahorro->sum('moneda');
		$suma = $suma - ($suma*$porcentaje);
		return Response::json(['success'=>true, 'suma'=>$suma]);	
	}


	/**********************************************************************
	  Retorna el ahorro, de los últimos 30 dias por usuario
	***********************************************************************/	

	public function getAhorro30dias($id)
	{

		$user = User::find($id);

		$hoy = date('Y-m-d');
		$hace_30_dias = date('Y-m-d', strtotime('today - 30 days')); 
		$date = new DateTime($hoy);

		$date->modify('+1 day');
		$hoy =  $date->format('Y-m-d');
		
		$ahorro_30dias = $user->ahorro()->whereBetween('ahorro.created_at', array($hace_30_dias, $hoy))->sum('moneda');

		// get porcentaje user
		$porcentaje = Recursos::getPorcentajeUser($id);
		$ahorro_30dias = $ahorro_30dias - ($ahorro_30dias*$porcentaje);		

		return Response::json(['success'=>true, 'ahorro_30d'=>$ahorro_30dias]);

	}


}
