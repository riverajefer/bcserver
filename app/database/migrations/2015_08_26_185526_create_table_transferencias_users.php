<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableTransferenciasUsers extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('transferencias_users', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('user_id_t');
			$table->string('alisas');
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
		Schema::drop('transferencias_users');
	}

}
