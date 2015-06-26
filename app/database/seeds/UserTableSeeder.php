<?php

class UserTableSeeder  extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
       User::create(array(
            'username'  => 'jeffer',
            'email'     => 'jefersonpatino@yahoo.es',
            'name'=> 'Jefferson',
            'password' => Hash::make('320542') // Hash::make() nos va generar una cadena con nuestra contraseña encriptada
        ));
	}

}
