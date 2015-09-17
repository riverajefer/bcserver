<?php

Route::get('/', function()
{
	return View::make('index');

});

/****************************************************
  Rutas: Comunicación con la Raspberry Pi
*****************************************************/

Route::get('rpi/user/{tag}', 'RpiController@getUser');
Route::get('rpi/user_tag/{tag}', 'RpiController@getUserId');
Route::get('rpi/sesion_user_alcancia/{user_id}/{alcancia_id}', 'RpiController@sesionUserAlcancia');
Route::post('rpi/deposito', 'AhorroController@postDeposito');
Route::post('rpi/rejected/{id}', 'RpiController@saveRejected');


/****************************************************
  Rutas: De inicio, no valida Token
*****************************************************/
Route::group(array('prefix' => 'api'), function() {

	Route::get('login', array('before' => 'auth.login', 'uses' => 'AuthController@postLogin'));
    Route::post('registro/mobil', 'AuthController@postRegistro');

	// Rutas para el restablecer la contraseña
	Route::post('resetpw/{email}', 'ResetPwController@getCodigo');
	Route::post('valida_codigo/{codigo}', 'ResetPwController@validaCodigo');
	Route::post('cambio_pw/{codigo}', 'ResetPwController@cambioPw');

}); 


/*************************************************************
  Rutas: De la aplicación, filtro de validación de Token
*************************************************************/

Route::group(array('prefix' => 'api', 'before' => 'auth.token'), function() {

	Route::post('registroTarjeta', 'UsersController@registroTarjeta');

	Route::get('saldo/{id}', 'AhorroController@getSaldo');
	Route::get('ahooro/last_30/{id}', 'AhorroController@getAhorro30dias'); // Total, ahorrado ultimos 30 dias

	/** Rutas Historial **/
	Route::get('historial/{id}', 'HistorialController@getHistorial'); // Todos los registros por usuario
	Route::post('historial/rango/{id}', 'HistorialController@getHistorialRango'); // Todos los registros por usuario
	Route::get('historial/more/{id}/{take}', 'HistorialController@getMoreHistorial');
	Route::get('historial/detalles/{user_id}/{consecutivo}', 'HistorialController@getHistorialDetalles');
	Route::get('historial/get_data_grafica/{id}', 'HistorialController@getDataGrafica');
	/** End Rutas Historial **/

	Route::get('codigoTarjeta/{id}', 'UsersController@getCodigoTarjeta');
	Route::post('perfil/modificar/{user_id}', 'UsersController@postModificarPerfil');


	/****************************************************
	  Rutas Retiros y Transacciones
	*****************************************************/
	Route::get('ryt/buscar/{email}/{mi_email}', 'RyTController@buscarUserbyEmail');
	Route::post('ryt/agregar_user', 'RyTController@addUserBancoink');
	Route::post('ryt/agregar_transferencia_bancoink', 'RyTController@TransferenciaBancoink');
	Route::get('ryt/lista_transferencias_bancoink/{user_id}', 'RyTController@listaTransferenciasBancoink');
	Route::get('ryt/lista_bancos', 'RyTController@listaBancos');
	Route::get('ryt/banco/{id}', 'RyTController@getBanco');
	Route::post('ryt/agregar_banco', 'RyTController@addBanco');
	Route::get('ryt/lista_transferencias_banco/{user_id}', 'RyTController@listaTransferenciasBanco');
	Route::get('ryt/detalles_transferencias_bancoink/{id}', 'RyTController@detallesTransferenciasBancoink');
	Route::get('ryt/detalles_transferencias_banco/{id}', 'RyTController@detallesTransferenciasBanco');
	Route::get('ryt/cuenta_bancaria/{id}', 'RyTController@getCuentaBancaria');
	Route::post('ryt/agregar_transferencia_banco', 'RyTController@TransferenciaBanco');
	Route::get('ryt/detalle_transferencias_bancoink/{id}', 'RyTController@detalleTransferenciasBancoink');
	Route::get('ryt/detalle_transferencias_banco/{id}', 'RyTController@detalleTransferenciasBanco');

}); 


/****************************************************
  Rutas: Backend
*****************************************************/

Route::get('usuarios', 'Controllers\Backend\UsersController@getUsers');

//Route::get('usuario/historial/{id}', 'UsersController@getHistorialUser');




Route::group(array('prefix' => 'admin'), function() {

    Route::get('usuarios', array('as' => 'usuarios', 'uses' => 'AdminUsersController@getUsers'));
    //Route::get('group/index', array('as'   => 'adminGroupIndex', 'uses' => 'GroupController@index'));

});



Route::get('hola', function(){
		
		$query = DB::table('transacciones')
			->selectRaw('fecha, sum(valor) as sum')
			->where('user_id', 1)
			->groupBy('fecha')
			->orderBy('fecha')
			->get();

		$datos = array();
		$prepara = array();
		$suma = 0;
		foreach ($query as $key => $value) {
			$fechaUTC = Recursos::fechaUTC($value->fecha);
			$suma =  $suma +  $value->sum;
			$datos[]  = array($fechaUTC, $suma);
			$prepara[]  = array($suma, $fechaUTC, $value->fecha);
		}

		// Logica, para agregar al comienzo del arreglo, un dato 0, el día anterior de un deposito.
		if($query)
		{
			$fecha_ini =  $prepara[0][2];
			$ayer = date('Y-m-d', strtotime('-1 day', strtotime($fecha_ini)));
			$ayer = Recursos::fechaUTC($ayer);
			$nuevo = array($ayer, 0);
			array_unshift($datos, $nuevo);
		}


		return Response::json(['success'=>true, 'datos'=>$datos]);

});

