<?php

use Carbon\Carbon;


App::before(function($request)
{
	header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    header('Access-Control-Allow-Headers: Origin, Content-Type, Accept, Authorization, X-Request-With, X-Auth-Token');
    header('Access-Control-Allow-Credentials: true');
});


App::after(function($request, $response)
{
	//
});

/*
|--------------------------------------------------------------------------
| Authentication Filters
|--------------------------------------------------------------------------
|
| The following filters are used to verify that the user of the current
| session is logged into this application. The "basic" filter easily
| integrates HTTP Basic authentication for quick, simple checking.
|
*/

Route::filter('auth', function()
{
	if (Auth::guest())
	{
		if (Request::ajax())
		{
			return Response::make('Unauthorized', 401);
		}
		else
		{
			return Redirect::guest('/');
		}
	}
});


Route::filter('auth.basic', function()
{
	return Auth::basic();
});

/*
|--------------------------------------------------------------------------
| Guest Filter
|--------------------------------------------------------------------------
|
| The "guest" filter is the counterpart of the authentication filters as
| it simply checks that the current user is not logged in. A redirect
| response will be issued if they are, which you may freely change.
|
*/

Route::filter('guest', function()
{
	if (Auth::check()) return Redirect::to('/');
});

/*
|--------------------------------------------------------------------------
| CSRF Protection Filter
|--------------------------------------------------------------------------
|
| The CSRF filter is responsible for protecting your application against
| cross-site request forgery attacks. If this special token in a user
| session does not match the one given in this request, we'll bail.
|
*/

Route::filter('csrf', function()
{
	if (Session::token() != Input::get('_token'))
	{
		throw new Illuminate\Session\TokenMismatchException;
	}
});


Route::filter('auth.login', function($route, $request)
{
	$authenticated = false;

	if($email = $request->getUser() && $password = $request->getPassword())
	{

	   try
        {
            // Login credentials
	        $credentials = array(
	            'email'     => $request->getUser(),
	            'password'  =>  $request->getPassword(),
	        );
	        Sentry::logout();
	    	$user = Sentry::authenticate($credentials, false);

			
			$user_id = $user->id;
			$consulta_token = DB::table('tokens')->where('user_id', $user_id)->where('client', BrowserDetect::toString()); 
			$valida = $consulta_token->get();

			$authenticated = true;


			if(!$valida)
			{
				$token = new Token();
				$token->user_id    = $user_id;
				$token->api_token  = hash('sha256',Str::random(10),false);
				$token->client     = BrowserDetect::toString();
				$token->expires_on = Carbon::now()->addMonth()->toDateTimeString();
				$token->save();
			}

			// si el login, fue exitoso, retorno un json con, los datos del user, y el token
	        $token = $consulta_token->first();
	        $user_ahorro  = User::find($user_id);  
	        $ahorro = $user_ahorro->ahorro->sum('moneda');
	        
	        // porcetaje de descuento del usuario
            $porcentaje = Recursos::getPorcentajeUser($user_id);
            $ahorro = $ahorro - ($ahorro*$porcentaje);	        
	        return Response::json(['success'=>True, 'user' => $user, 'ahorro' => $ahorro, 'token' => $token->api_token]);   

			$error = '';

        }
        catch (Cartalyst\Sentry\Users\LoginRequiredException $e)
        {
            $error = array('usuario' => 'Email es requerido' );
        }
        catch (Cartalyst\Sentry\Users\PasswordRequiredException $e)
        {
            $error = array('usuario' => 'Password es requerido' );
        }
        catch (Cartalyst\Sentry\Users\WrongPasswordException $e)
        {
            $error = array('usuario' => 'Contraseña incorrecta, inténtalo de nuevo.' );
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            $error = array('usuario' => 'El usuario no se encontró.' );
        }
        catch (Cartalyst\Sentry\Users\UserNotActivatedException $e)
        {
            $error = array('usuario' => 'El usuario no está activado' );
        }
        // The following is only required if the throttling is enabled
        catch (Cartalyst\Sentry\Throttling\UserSuspendedException $e)
        {
            $error = array('usuario' => 'El usuario está suspendido' );
        }
        catch (Cartalyst\Sentry\Throttling\UserBannedException $e)
        {
            $error = array('usuario' => 'Usuario está prohibido.' );
        }

        if($error){
	        return Response::json([
	            'success'=>false, 
	            'errors'=>$error
	        ]);     
        }

	}

});

Route::filter('auth.token', function($route, $request)
{
	
	$authenticated = false;
	if($payload = $request->header('X-Auth-Token'))
	{

		$userModel = Sentry::getUserProvider()->createModel();

		$token = Token::valid()->where('api_token',$payload)->where('client',BrowserDetect::toString())->first();

		if($token)
		{
			Sentry::login($token->user);
			$authenticated = true;
		}

	}

	if($authenticated && !Sentry::check())
	{
		Sentry::login(Auth::user());
	}

	if(!$authenticated)
	{
		$response = Response::json([
	            'error' => true,
	            'message' => 'Not authenticated',
	            'code' => 401],
	            401
	        );

		$response->header('Content-Type', 'application/json');

	    return $response;
	}


});
