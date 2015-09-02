<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableUsersBancosTransferencias extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users_bancos_transferencias', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('userbanco_id');
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
		Schema::drop('users_bancos_transferencias');
	}

}
