<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersAlcanciaDeposito extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users_alcancia_deposito', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_alcancia_id');
			$table->decimal('moneda', 19, 4);
			$table->string('fecha');
			$table->string('fecha_corta');
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
		Schema::drop('users_alcancia_deposito');
	}

}
