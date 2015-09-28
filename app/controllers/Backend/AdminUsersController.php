<?php

class AdminUsersController extends BaseController {

	public function getUsers()
	{

	   $usuarios= User::where('admin',0)->get();
       $hoy = new DateTime();
       $data = array(
        'usuarios' =>$usuarios,
        'hoy'=>$hoy
       );

	   return View::make('Backend/usuarios.index', $data);

	}


}
