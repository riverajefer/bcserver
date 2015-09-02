<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableUsersBancos extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users_bancos', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('banco_id');
			$table->string('numero_cuenta');
			$table->string('tipo_cuenta');
			$table->string('titular');
			$table->string('cedula');
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
		Schema::drop('users_bancos');
	}

}
