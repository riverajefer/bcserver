<?php

class RyTController extends BaseController {

	public function buscarUserbyEmail($email, $mi_email)
	{

        try{

            $user = Sentry::findUserByLogin($email);

            if($mi_email == $user->email){
                return Response::json(['success'=>false, 'msg'=>'No, se puede buscar a usted mismo']);
            }        

            return Response::json(['success'=>true, 'user'=>$user]);
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            return Response::json(['success'=>false, 'msg'=>'El usuario No existe']);
        }

	}

    public function addUserBancoink()
    {

        $TransferenciaUser = new TransferenciaUser();
        $TransferenciaUser->user_id = Input::get('user_id');
        $TransferenciaUser->user_id = Input::get('user_id_t');
        $TransferenciaUser->alias   = Input::get('alias');
        $TransferenciaUser->save();

        return Response::json(['success'=>true, 'datos'=>$TransferenciaUser]);

    }

}
