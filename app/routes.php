<?php

Route::get('/', function()
{
	return View::make('index');

});

/****************************************************
  Rutas: Comunicación la Raspberry Pi
*****************************************************/

Route::get('rpi/user/{tag}', 'RpiController@getUser');
Route::get('rpi/user_id/{tag}', 'RpiController@getUserId');
Route::get('rpi/consecutivo/{id}', 'RpiController@getConsecutivo');
Route::post('rpi/ahorro', 'AhorroController@postAhorro');
Route::post('rpi/rejected', 'AhorroController@postRejected');

Route::get('usuarios', 'UsersController@getUsers');
Route::get('usuario/historial/{id}', 'UsersController@getHistorialUser');

Route::get('ahorro/{id}', 'AhorroController@getAhorro');

Route::post('api/registro/mobil', 'AuthController@postRegistro');

Route::group(array('prefix' => 'api', 'before' => 'auth.login'), function() {

    Route::get('login', 'AuthController@postLogin');

	// Rutas para el restablecer la contraseña
	Route::post('resetpw/{email}', 'ResetPwController@getCodigo');
	Route::post('valida_codigo/{codigo}', 'ResetPwController@validaCodigo');
	Route::post('cambio_pw/{codigo}', 'ResetPwController@cambioPw');

}); 


Route::group(array('prefix' => 'api', 'before' => 'auth.token'), function() {

	Route::get('portafolios', 'PortafolioController@lista');
	Route::get('portafolio/{id}', 'PortafolioController@portafolio');
	Route::get('portafolio/user/{id}', 'PortafolioController@portafolioUser');

	Route::post('registroTarjeta', 'UsersController@registroTarjeta');

	Route::post('suma_ahorro', 'AhorroController@sumaAhorro');
	Route::get('ahooro/last_30/{id}', 'AhorroController@getAhorro30dias'); // Total, ahorrado ultimos 30 dias

	/** Rutas Historial **/
	Route::get('historial/{id}', 'HistorialController@getHistorial'); // Todos los registros por usuario
	Route::post('historial/rango/{id}', 'HistorialController@getHistorialRango'); // Todos los registros por usuario
	Route::get('historial/more/{id}/{take}', 'HistorialController@getMoreHistorial');
	Route::get('historial/detalles/{user_id}/{consecutivo}', 'HistorialController@getHistorialDetalles');
	/** End Rutas Historial **/

	Route::get('codigoTarjeta/{id}', 'UsersController@getCodigoTarjeta');

	Route::get('renta/all', 'RentaController@getAll');

	Route::get('renta/resultados/{user_id}', 'RentaController@getResultado');

	Route::get('porcentaje/valor/{user_id}', 'PorcentajeController@getValor');

	Route::post('perfil/modificar/{user_id}', 'UsersController@postModificarPerfil');


	/** Rutas Retiros y Transacciones **/
	Route::get('ryt/buscar/{email}/{mi_email}', 'RyTController@buscarUserbyEmail');
	Route::post('ryt/agregar_user', 'RyTController@addUserBancoink');
	Route::post('ryt/transferencia_bancoink', 'RyTController@TransferenciaBancoink');

}); 


Route::get('hola', function(){
	return "Hola";
});


Route::get('renta', 'RentaController@vista');
Route::post('renta', 'RentaController@save');

Route::get('renta_all', 'RentaController@getAll');
Route::get('renta_semana', 'RentaController@getSemana');

