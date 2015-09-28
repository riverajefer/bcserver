<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableUsersDevice extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users_device', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->string('device')->nullable();
			$table->string('cordova')->nullable();
			$table->string('model')->nullable();
			$table->string('platform')->nullable();
			$table->string('uuid')->nullable();
			$table->string('version')->nullable();

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
		Schema::drop('users_device');
	}

}
