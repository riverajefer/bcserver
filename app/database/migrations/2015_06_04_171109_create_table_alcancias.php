<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableAlcancias extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('alcancias', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('referencia');
			$table->string('nombre');
			$table->string('ubicacion');
		    $table->string('email', 100)->unique();
		    $table->string('password', 64);				
		    $table->string('remember_token', 100);
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
		Schema::drop('alcancias');
	}

}
