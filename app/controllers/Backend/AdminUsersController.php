<?php

class AdminUsersController extends BaseController {

	public function getUsers()
	{

	   $usuarios= User::all();
       $hoy = new DateTime();
       $data = array(
        'usuarios' =>$usuarios,
        'hoy'=>$hoy
       );

	   return View::make('Backend/usuarios.index', $data);

	}


}
