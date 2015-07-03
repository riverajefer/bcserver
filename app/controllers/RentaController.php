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
			
			$arreglo = [];
			$fechas = [];
			$renta = [];
			$rentam = [];
			$output = [];
			$arra = [];
			$valor =[];
			$mas = [];


			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();

			//return $lista_renta;


			foreach($portafolios as $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->get();
				
				foreach ($valor[$portafolio->id] as $key => $value) {
					$renta[] = $value->renta;
					$mas['portafolio'.$portafolio->id][] = floatval($value->renta);
				}

			}


			$fechas2 = Renta::groupBy('fecha')->get();
			foreach ($fechas2 as $key => $value) {
				$fechas[$key] = strftime("%d,%b", utf8_encode(strtotime($value->fecha)));
			}

			return Response::json(['success'=>true, 'fechas'=>$fechas, 'renta'=>$mas]);
	}


	
}
