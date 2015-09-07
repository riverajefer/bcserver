<?php

class AuthController extends BaseController {


    public function postRegistro()
    {

        $input = Input::all();
        $reglas =  array(
            'nombre'    => 'required', 
            'apellido'  => 'required',
            'cedula'    => 'required|numeric',
            'email'     => 'required|email|unique:users',
            'pin'       => 'required|numeric|digits_between:0,4',
            'password'  => 'required|min:6|confirmed',
            'password_confirmation' => 'required|min:6',
            
        );

       $validation = Validator::make($input, $reglas);

       if ($validation->fails())
        {
            return Response::json([
                'success'=>false, 
                'errors'=>$validation->errors()->toArray()
            ]);
        }       

        try{
            // se guarda los datos del usuario  
            $user = Sentry::register(array(
                'first_name' => Input::get('nombre'),
                'last_name'  => Input::get('apellido'),
                'email'      => Input::get('email'),
                'cedula'     => Input::get('cedula'),
                'password'   => Input::get('password'),
                'pin'        => Input::get('pin'),
                'porcentaje' => 0.05,
                'activated'  => true,
            ));
            $userId = $user->getId();

            $token = new Token();
            $token->user_id    = $userId;
            $token->api_token  = hash('sha256',Str::random(10),false);
            $token->client     = BrowserDetect::toString();
            $token->expires_on = Carbon::now()->addMonth()->toDateTimeString();
            $token->save();
            
          
            // Se autentica de una
            $user_login = Sentry::findUserById($userId);
            Sentry::login($user_login, false);

            return Response::json(['success'=>true, 'user'=>$user_login, 'token' => $token->api_token]);

        }
        catch (Cartalyst\Sentry\Users\LoginRequiredException $e)
        {
            $error = array('usuario' => 'Email es requerido' );
        }
        catch (Cartalyst\Sentry\Users\PasswordRequiredException $e)
        {
            $error = array('usuario' => 'Password es requerido' );
        }
        catch (Cartalyst\Sentry\Users\UserExistsException $e)
        {
            $error = array('usuario' => 'El Email ya está registrado' );         
        }

        return Response::json([
            'success'=>false, 
            'errors'=>$error
        ]);     


    }

}
