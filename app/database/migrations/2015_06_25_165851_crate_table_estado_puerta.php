<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrateTableEstadoPuerta extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('estado_puerta', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('alcancia_id');
			$table->string('token');
			$table->boolean('estado');
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
		Schema::drop('estado_puerta');
	}

}
