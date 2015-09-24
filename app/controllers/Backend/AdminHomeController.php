<?php

class AdminHomeController extends BaseController {

	public function index()
	{

        $Total = UserAlcanciaDeposito::all()->sum('moneda');
        $SumaMonedas = $Total + $Total*0.05;

        $Renta = $SumaMonedas*0.05;
        $data = array(
            'SumaMonedas'=>$SumaMonedas,
            'Renta'=>$Renta,
        );
	   return View::make('Backend/index', $data);
	}


}
