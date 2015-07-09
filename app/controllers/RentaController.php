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
			
			$fechas = [];
			$renta = [];
			$valor =[];
			$mas = [];


			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();

			foreach($portafolios as $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->whereBetween('fecha', array('2015-06-22', '2015-06-26'))->get();
				
				foreach ($valor[$portafolio->id] as $key => $value) {
					$renta[] = $value->renta;
					$mas['portafolio'.$portafolio->id][] = floatval($value->renta);
				}

			}


			$fechas2 = Renta::groupBy('fecha')->whereBetween('fecha', array('2015-06-22', '2015-06-26'))->get();
			foreach ($fechas2 as $key => $value) {
				$fechas[$key] = strftime("%d,%b", utf8_encode(strtotime($value->fecha)));
			}

			return Response::json(['success'=>true, 'fechas'=>$fechas, 'renta'=>$mas]);
	}


	public function getSemanaOriginal()
	{
			$portafolios = Portafolio::all();
			
			$fechas = [];
			$valor  = [];
			$renta  = [];

			

			$hoy = date('2015-06-29');
			//$hoy = date('Y-m-d');
			$fecha_inicio = Recursos::ultimoDiaHabilDesde($hoy, 6);

			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();

			foreach($portafolios as $keyi => $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio, $hoy))->get();
				
				foreach ($valor[$portafolio->id] as $key => $value) {
					$renta['portafolio'.($keyi+1)][] = floatval($value->renta);

				}

			}

			$fechas2 = Renta::groupBy('fecha')->whereBetween('fecha', array($fecha_inicio, $hoy))->get();

			foreach ($fechas2 as $key => $value) {
				$fechas[$key] = strftime("%d,%b,%y", utf8_encode(strtotime($value->fecha))); // retorno la fecha en formato "22,Jun"
			}

			return Response::json(['success'=>true, 'fechas'=>$fechas, 'renta'=>$renta]);
	}


	public function getSemana()
	{

			$portafolios = Portafolio::all();

			$valor  = [];
			$renta  = [];
			$promedio = [];
			$portafoliosArray = [];
			$colores = ['#DF7401', '#088A85', '#DF7401', '#04B404'];

			$hoy = date('2015-07-09');
			//$hoy = date('Y-m-d');
			$fecha_inicio = Recursos::ultimoDiaHabilDesde($hoy, 100);
			
			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();
			

			foreach($portafolios as $keyi => $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio, $hoy))->orderBy('fecha')->get();
				$promedio = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio, $hoy))->avg('renta');

				$portafoliosArray[($keyi+1)]['promedio']      = $promedio;
				$portafoliosArray[($keyi+1)]['nombre']        = $portafolio->nombre;
				$portafoliosArray[($keyi+1)]['id']       	  = $portafolio->id;
				$portafoliosArray[($keyi+1)]['descripcion']   = $portafolio->descripcion;
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
					$portafoliosArray[($keyi+1)]['renta'][] = array($fechaUTC, floatval(floatval($value->renta)));

				}

			}

			return Response::json(['success'=>true, 'portafolios'=>$portafoliosArray]);

	}

}