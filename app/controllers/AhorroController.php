<?php

class AhorroController extends BaseController {


	/****************************************************
	  Guarda el deposito, enviado por el user (monedas)
	*****************************************************/

	public function postDeposito()
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

	        $deposito = new UserAlcanciaDeposito();
	        $deposito->user_alcancia_id = $consecutivo;
	        $deposito->moneda 	 	    = $moneda; 
	        $deposito->fecha 	  	  	= $fecha;
	        $deposito->fecha_corta      = $fecha_corta;
	        $deposito->save();

			$uad = UserAlcancia::find($consecutivo)->transacciones->first();

			if(empty($uad)){

	            $transaccion = new Transacciones();
	            $transaccion->user_id          = $user_id;
	            $transaccion->valor            = $moneda;
	            $transaccion->tipo             = 1;
	            $transaccion->origen           = $deposito->userAlcancia->alcancia->ubicacion; // ubicació de la alcancia
	            $transaccion->user_alcancia_id = $consecutivo;
	            $transaccion->estado           = 1; 
	            $transaccion->save();	
	            
			}
			else{

				$update_transaccion = Transacciones::find($uad->id);
	            $suma_moneda = $update_transaccion->valor + $moneda;
	            $update_transaccion->valor = $suma_moneda;
	            $update_transaccion->save();	
			}

			// Para enviar en tiempo real con pusher
			$usuario = User::find($user_id);
			// get porcentaje user
			$porcentaje = $usuario->porcentaje;
			$suma = Recursos::getSumaMonedaByUser($user_id);
			$suma = $suma - ($suma*$porcentaje);

		    //Pusherer::trigger('Canal_moneda'.$usuario->email, 'my_event-'.$usuario->email, array('suma'=>$suma ));
	        
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
		
		
		$porcentaje = $usuario->porcentaje;

		$suma = Recursos::getSumaMonedaByUser($user_id);
		$suma = $suma - ($suma*$porcentaje);

		return Response::json(['success'=>true, 'suma'=>$suma]);	
	}


	/**********************************************************************
	  Retorna el ahorro, de los últimos 30 dias por usuario
	***********************************************************************/	

	public function getAhorro30dias($id)
	{

		$user = User::find($id);
		$ua = $user->UserAlcancia;


		$hoy = date('Y-m-d');
		$hace_30_dias = date('Y-m-d', strtotime('today - 30 days')); 
		$date = new DateTime($hoy);

		$date->modify('+1 day');
		$hoy =  $date->format('Y-m-d');
			
		$suma = 0;
		foreach ($ua as $key => $value) {
			$suma = $suma + $value->userAlcanciaDeposito()->whereBetween('users_alcancia_deposito.created_at', array($hace_30_dias, $hoy))->sum('moneda');
		}
		$porcentaje = $user->porcentaje;
		$ahorro_30dias = $suma - ($suma*$porcentaje);				

		return Response::json(['success'=>true, 'ahorro_30d'=>$ahorro_30dias]);

	}


}
