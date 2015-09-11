<?php

class Recursos {


    public static function hola() 
    {
        return "Hola Mundo de los recursos";
    }


    public static function fechaUTC($fecha){

		$date = new DateTime($fecha);
		$date->modify('+1 day');
		$nueva_fecha = $date->format('Y-m-d H:i:s');
		date_default_timezone_set('UTC');
		$fechaUTC =  (strtotime($nueva_fecha) * 1000) - (strtotime('02-01-1970 00:00:00') * 1000);
		return $fechaUTC;
    }

    public static function getSumaMonedaByUser($user_id){
		$ua = User::find($user_id)->UserAlcancia;
		$suma = 0;
		foreach ($ua as $key => $value) {
			$suma = $suma + $value->userAlcanciaDeposito->sum('moneda');
		}
		return $suma;
    }

	// último día habíl dese
	public static function ultimoDiaHabilDesde($date, $dias){
	    $workdays = array();
	    $holidays = self::getHolidays();
	    $date     = strtotime($date);

	    while(count($workdays) < $dias){
	        $date = strtotime("-1 day", $date);

	        if(date('N',$date) < 6 && !in_array(date('Y-m-d',$date), $holidays))
	            $workdays[] = date('Y-m-d', $date);
	    }

	    krsort($workdays);
	    return reset($workdays);
	}

	// Array rango de fechas
	public static function getFechasArray($date, $dias){
	    $workdays = array();
	    $holidays = self::getHolidays();
	    $date     = strtotime($date);

	    while(count($workdays) < $dias){
	        $date = strtotime("-1 day", $date);

	        if(date('N',$date) < 6 && !in_array(date('Y-m-d',$date), $holidays))
	            $workdays[] = date('Y-m-d', $date);
	    }

	    krsort($workdays);
	    return $workdays;
	}


	public static function getHolidays(){
	    $holidays = array(
	    	'2015-01-01',
	    	'2015-01-15',

	    	'2015-03-23',

	    	'2015-04-02',
	    	'2015-04-03',

	    	'2015-05-01',
	    	'2015-05-18',

	    	'2015-06-08',
	    	'2015-06-15',
	    	'2015-06-29',

	    	'2015-07-20',

	    	'2015-08-07',
	    	'2015-08-17',

	    	'2015-10-12',

	    	'2015-11-02',
	    	'2015-11-16',

	    	'2015-12-08',
	    	'2015-12-25',
	    );
	    $variable = $holidays;
	    return $variable;
	}







	// Previous and Next 3 working days
	public static function getWorkingDays2($date){
	    $workdays['prev'] = $workdays['next'] = array();
	    $holidays = self::getHolidays();
	    $date     = strtotime($date);

	    $start_date = $date;
	    while(count($workdays['prev']) < 10){
	        $date = strtotime("-1 day", $date);

	        if(date('N',$date) < 6 && !in_array(date('Y-m-d',$date),$holidays))
	            $workdays['prev'][] = date('Y-m-d',$date);
	    }
	    $date = $start_date;
	    while(count($workdays['next']) < 10){
	        $date = strtotime("+1 day", $date);

	        if(date('N',$date) < 6 && !in_array(date('Y-m-d',$date),$holidays))
	            $workdays['next'][] = date('Y-m-d',$date);
	    }

	    krsort($workdays['prev']);
	    return $workdays;
	}


	public static function sanear_string($string)
	{

	    $string = trim($string);

	    $string = str_replace(
	        array('á', 'à', 'ä', 'â', 'ª', 'Á', 'À', 'Â', 'Ä'),
	        array('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A'),
	        $string
	    );

	    $string = str_replace(
	        array('é', 'è', 'ë', 'ê', 'É', 'È', 'Ê', 'Ë'),
	        array('e', 'e', 'e', 'e', 'E', 'E', 'E', 'E'),
	        $string
	    );

	    $string = str_replace(
	        array('í', 'ì', 'ï', 'î', 'Í', 'Ì', 'Ï', 'Î'),
	        array('i', 'i', 'i', 'i', 'I', 'I', 'I', 'I'),
	        $string
	    );

	    $string = str_replace(
	        array('ó', 'ò', 'ö', 'ô', 'Ó', 'Ò', 'Ö', 'Ô'),
	        array('o', 'o', 'o', 'o', 'O', 'O', 'O', 'O'),
	        $string
	    );

	    $string = str_replace(
	        array('ú', 'ù', 'ü', 'û', 'Ú', 'Ù', 'Û', 'Ü'),
	        array('u', 'u', 'u', 'u', 'U', 'U', 'U', 'U'),
	        $string
	    );

	    $string = str_replace(
	        array('ñ', 'Ñ', 'ç', 'Ç'),
	        array('n', 'N', 'c', 'C',),
	        $string
	    );

	    //Esta parte se encarga de eliminar cualquier caracter extraño
	    $string = str_replace(
	        array("\\", "¨", "º", "-", "~",
	             "#", "@", "|", "!", "\"",
	             "·", "$", "%", "&", "/",
	             "(", ")", "?", "'", "¡",
	             "¿", "[", "^", "`", "]",
	             "+", "}", "{", "¨", "´",
	             ">", "< ", ";", ",", ":",
	             ".", " "),
	        '',
	        $string
	    );


	    return $string;
	}


 } // fin class