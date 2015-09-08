<?php

Route::get('/', function()
{
	return View::make('index');

});

/****************************************************
  Rutas: Comunicación la Raspberry Pi
*****************************************************/

Route::get('rpi/user/{tag}', 'RpiController@getUser');
Route::get('rpi/user_tag/{tag}', 'RpiController@getUserId');
Route::get('rpi/sesion_user_alcancia/{user_id}/{alcancia_id}', 'RpiController@sesionUserAlcancia');
Route::post('rpi/deposito', 'AhorroController@postDeposito');
Route::post('rpi/rejected/{id}', 'RpiController@saveRejected');
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
	Route::post('perfil/modificar/{user_id}', 'UsersController@postModificarPerfil');

	/****************************************************
	  Rutas Retiros y Transacciones
	*****************************************************/

	Route::get('ryt/buscar/{email}/{mi_email}', 'RyTController@buscarUserbyEmail');
	Route::post('ryt/agregar_user', 'RyTController@addUserBancoink');
	Route::post('ryt/agregar_transferencia_bancoink', 'RyTController@TransferenciaBancoink');

	Route::get('ryt/lista_transferencias_bancoink/{user_id}', 'RyTController@listaTransferenciasBancoink');

	// Bancos
	Route::get('ryt/lista_bancos', 'RyTController@listaBancos');
	Route::get('ryt/banco/{id}', 'RyTController@getBanco');
	
	// Agregar Banco
	Route::post('ryt/agregar_banco', 'RyTController@addBanco');
	Route::get('ryt/lista_transferencias_banco/{user_id}', 'RyTController@listaTransferenciasBanco');
	Route::get('ryt/detalles_transferencias_bancoink/{id}', 'RyTController@detallesTransferenciasBancoink');
	Route::get('ryt/detalles_transferencias_banco/{id}', 'RyTController@detallesTransferenciasBanco');
	Route::get('ryt/cuenta_bancaria/{id}', 'RyTController@getCuentaBancaria');
	Route::post('ryt/agregar_transferencia_banco', 'RyTController@TransferenciaBanco');

	// Ruta histrial transacciones




}); 


Route::get('hola', function(){

	return $detalles = UserAlcancia::find(1)->alcancia;

	$transacciones = User::find(1)->transacciones()->where('estado', 1)->get();
		return Response::json(['success'=>true, 'historial'=>$transacciones, 'count'=>count($transacciones)]);

	return UserAlcanciaDeposito::find(1)->userAlcancia->alcancia->id;
		$user_id = 1;
		$usuario = User::find($user_id)->alcancia;
		return $porcentaje = $usuario->porcentaje;
		return $suma = Recursos::getSumaMonedaByUser($user_id);
		return $suma = $suma - ($suma*$porcentaje);

	return Transacciones::all();


});

