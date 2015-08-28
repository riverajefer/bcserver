<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransaccionesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('transacciones', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('tipo');
			$table->decimal('valor', 19, 4);
			$table->string('origen');
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
		Schema::drop('transacciones');
	}

}
