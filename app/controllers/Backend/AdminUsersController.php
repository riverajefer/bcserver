<?php


class AdminUsersController extends BaseController {

	public function getUsers()
	{

	   $usuarios= User::all();
	   return View::make('Backend/usuarios.index')->with('usuarios', $usuarios);

	}




}
