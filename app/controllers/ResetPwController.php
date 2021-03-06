<?php

class ResetPwController extends BaseController {


	/****************************************************
	  Retorna el còdigo para restablecer la contraseña
	*****************************************************/

	public function getCodigo($email)
	{

		try
		{

		    $user = Sentry::findUserByLogin($email);

		    $resetCode = $user->getResetPasswordCode(5);

		    $data  = array('codigo'=>$resetCode);

			Mail::queue('emails.resetpw', $data, function($message) use ($user)
			{
			    $message->from('info@bancoink.com', 'Bancoink');
			    $message->to($user->email, $user->first_name)->subject('Reset Password!');
			});		

		    return Response::json(['success'=>true, 'codigo'=>$resetCode]);

		}
		catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
		{
		    $error = 'El email no está registrado';
		    return Response::json(['success'=>false, 'error'=>$error]);
		}

	}

	/****************************************************
	  Valida el codigo para restablecer la contraseña
	*****************************************************/

	public function validaCodigo($codigo)
	{
		try
		{
		    $user = Sentry::findUserByResetPasswordCode($codigo);

		    $data  = array('codigo'=>$codigo);

			Mail::send('emails.resetpw', $data, function($message)
			{
			    $message->from('info@bancoink.com', 'Bancoink');

			    //$message->to($user->email, $user->first_name);

			});		    

		    return Response::json(['success'=>true, 'codigo'=>$codigo]);

		}
		catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
		{
		    $error =  'El código no es valido';
		    return Response::json(['success'=>false, 'error'=>$error]);
		}

	}

	/****************************************************
	  Valida  la contraseña
	*****************************************************/

	public function cambioPw($codigo)
	{


		try
		{
		    $user = Sentry::findUserByResetPasswordCode($codigo);

		    // Check if the reset password code is valid
		    if ($user->checkResetPasswordCode($codigo))
		    {


		        $input = Input::all();
		        $reglas =  array(
		            'password'  => 'required|case_diff|letters|min:6|confirmed',
		            'password_confirmation' => 'required|min:6'
		        );

		       $validation = Validator::make($input, $reglas);

		       if ($validation->fails())
		        {
		            return Response::json([
		                'success'=>false, 
		                'errors'=>$validation->errors()->toArray()
		            ]);
		        } 


		        // Attempt to reset the user password
		        if ($user->attemptResetPassword($codigo, Input::get('password')))
		        {
		            // Password reset passed
		            return Response::json(['success'=>true]);
		        }
		        else
		        {
		        	$error = array('error' => 'No  es posible cambiar la contraseña' );
		            return Response::json(['success'=>false, 'error'=>$error]);
		        }
		    }
		    else
		    {
		        $error = array('error' => 'El coóigo no es valido 1' );
		        return Response::json(['success'=>false, 'error'=>$error]);
		    }


		}
		catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
		{
		    $error =  'El código no es valido';
		    return Response::json(['success'=>false, 'error'=>$error]);
		}

	    // Find the user using the user id


	}	


}