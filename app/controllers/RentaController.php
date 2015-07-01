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

			foreach($portafolios as $portafolio) {

				$arreglo[preg_replace('[\s+]',"", $portafolio->nombre)] = $portafolio->renta()->get();

			}
			foreach ($arreglo['Moderado'] as $key => $moderado) {

				$originalDate = "2010-03-21";
				$newDate = date("Y,m,d", strtotime($moderado->fecha));				
				$fecha = $moderado->fecha;
			}
			return $fecha;


			return Response::json(['success'=>true, 'portafolio'=>$arreglo]);

	}


	
}
