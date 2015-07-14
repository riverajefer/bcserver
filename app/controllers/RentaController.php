<?php

class RentaController extends BaseController {

	public function vista()
	{

	    $portafolios = Portafolio::all();
	    return View::make('renta.crear')->with('portafolios', $portafolios);

	}


	public function save()
	{

		$portafolios = Portafolio::all();

		foreach($portafolios as $portafolio) {

			$renta = new Renta();
			$renta->portafolio_id  = $portafolio->id;
			$renta->renta 		   = Input::get($portafolio->id);
			$renta->fecha 		   = Input::get('fecha');
			$renta->save();		    

		}

		Session::flash('message', "Datos guardados !.");
		return Redirect::back();

	}


	public function getAll()
	{

			$portafolios = Portafolio::all();

			$valor  = [];
			$renta  = [];
			$promedio = [];
			$portafoliosArray = [];
			$colores = ['#DF7401', '#088A85', '#2E64FE', '#04B404'];

			//$hoy = date('2015-07-09');
			$hoy = date('Y-m-d');
			$fecha_inicio = Recursos::ultimoDiaHabilDesde($hoy, 100);
			$fecha_inicio_semana = Recursos::ultimoDiaHabilDesde($hoy, 7);
			
			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();
			

			foreach($portafolios as $keyi => $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio, $hoy))->orderBy('fecha')->get();
				$promedio = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio_semana, $hoy))->avg('renta');

				$portafoliosArray[($keyi+1)]['promedio']      = $promedio;
				$portafoliosArray[($keyi+1)]['nombre']        = $portafolio->nombre;
				$portafoliosArray[($keyi+1)]['id']       	  = $portafolio->id;
				//$portafoliosArray[($keyi+1)]['descripcion']   = $portafolio->descripcion;
				$portafoliosArray[($keyi+1)]['color']         = $colores[$keyi];

				//return $promedio;
				
				foreach ($valor[$portafolio->id] as $key => $value) {
					
					$fecha = $value->fecha;
					$date = new DateTime($fecha);

					$date->modify('+1 day');
					$fecha = $date->format('Y-m-d');

					date_default_timezone_set('UTC');
					$fechaUTC =  (strtotime($fecha) * 1000) - (strtotime('02-01-1970 00:00:00') * 1000);					
					//$renta['portafolio'.($keyi+1)][] = array($fechaUTC, floatval(floatval($value->renta)));
					$portafoliosArray[($keyi+1)]['renta'][] = array($fechaUTC, $value->renta );

				}

			}

			return Response::json(['success'=>true, 'portafolios'=>$portafoliosArray]);

	}

}