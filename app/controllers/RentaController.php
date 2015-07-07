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
			
			$fechas = [];
			$valor  = [];
			$renta  = [];

			

			$hoy = date('2015-06-30');
			//$hoy = date('Y-m-d');
			$fecha_inicio = Recursos::ultimoDiaHabilDesde($hoy, 5);
			
			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();

			foreach($portafolios as $keyi => $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio, $hoy))->get();
				
				foreach ($valor[$portafolio->id] as $key => $value) {
					
					$fecha = $value->fecha;
					$date = new DateTime($fecha);

					$date->modify('+1 day');
					$fecha = $date->format('Y-m-d');

					date_default_timezone_set('UTC');
					$fechaUTC =  (strtotime($fecha) * 1000) - (strtotime('02-01-1970 00:00:00') * 1000);					
					$renta['portafolio'.($keyi+1)][] = array($fechaUTC, floatval(floatval($value->renta)));

				}

			}
			//return $renta;
			return Response::json(['success'=>true,  'renta'=>$renta]);




		$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'created_at', 'fecha')->groupBy('fecha')->orderBy('portafolio_id')->get();
		//return $lista_renta;
		$arr = [];
		$output = [];
		$fechas = [];
		foreach($lista_renta as $key => $renta) 
			{

					$dater = $renta->fecha;
					date_default_timezone_set('UTC');
					$datek =   (strtotime($dater) * 1000) - (strtotime('02-01-1970 00:00:00') * 1000);
				    $pos = $renta->renta;
				    $arr = array($datek, floatval($pos));
				    array_push($output, $arr);  
			}

			//return $output;


return Response::json(['success'=>false,  'renta'=>$output]);


		/*
		$array = array(
				'[Date.UTC(2013,5,2),0.7695]',
				'[Date.UTC(2013,5,3),0.7648]',
				'[Date.UTC(2013,5,4),0.7645]',
				'[Date.UTC(2013,5,5),0.7638]',
				'[Date.UTC(2013,5,6),0.7549]',
				'[Date.UTC(2013,5,7),0.7562]',
				'[Date.UTC(2013,5,9),0.7574]'
				);
		return $array;

$output = [];
$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();
while ($item = mysql_fetch_assoc($result)) {            
    $name = $item['Item1'];
    $date = str_replace("-",",",$item['Item2']);
    $pos = $item['Item3'];

    //I don't think there's supposed to be a comma after this square bracket
    $arr = array("name"=>$name,"data"=>"[Date.UTC(".$date."), ".$pos." ]");
    array_push($output, json_encode($arr));  	   
}

echo "[";
foreach($output as $val){
    echo $val;
    if($val != end($output)) echo ",";
}
echo "]";
*/


			$portafolios = Portafolio::all();
			
			$fechas = [];
			$valor  = [];
			$renta  = [];
			$mas  = [];
			$output = [];
			

			$hoy = date('2015-06-29');
			//$hoy = date('Y-m-d');
			$fecha_inicio = Recursos::ultimoDiaHabilDesde($hoy, 6);

			$lista_renta = DB::table('rentabilidad')->select('portafolio_id', 'renta', 'fecha')->orderBy('portafolio_id')->get();

			foreach($portafolios as $keyi => $portafolio) 
			{

				$valor[$portafolio->id] = $portafolio->renta()->whereBetween('fecha', array($fecha_inicio, $hoy))->get();
				
				foreach ($valor[$portafolio->id] as $key => $value) {
					//$renta['portafolio'.($keyi+1)][] = $value->fecha;
					$date = str_replace("-",",",$value->fecha);
					$renta['portafolio'.($keyi+1)][] = $date;
					$renta['portafolio'.($keyi+1)][] = floatval($value->renta);

					$arr = array("data"=>"[Date.UTC(".$date."), ".$value->renta." ]");
					//$arr = array("data"=>"[Date.UTC(".$date."), ".floatval($value->renta."]");
					array_push($output, json_encode($arr));     
				}

			}

echo "[";
foreach($output as $val){
    echo $val;
    if($val != end($output)) echo ",";
}
echo "]";
return;

			$fechas2 = Renta::groupBy('fecha')->whereBetween('fecha', array($fecha_inicio, $hoy))->get();

			foreach ($fechas2 as $key => $value) {
				$fechas[$key] = strftime("%d,%b,%y", utf8_encode(strtotime($value->fecha))); // retorno la fecha en formato "22,Jun"
			}

			return Response::json(['success'=>true, 'fechas'=>$fechas, 'renta'=>$renta]);
	}


	
}

