<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableUsuariosBancoinkTransferencias extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('usuarios_bancoink_transferencias', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('usuariobancoink_id');
			$table->string('descripcion');
			$table->double('valor');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('usuarios_bancoink_transferencias');
	}

}
