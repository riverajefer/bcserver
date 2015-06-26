<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('hello');
});


Route::get('crear_alcancia', function(){

    $Alcancia = new Alcancia;
    $Alcancia->referencia = 'Jefferson';
    $Alcancia->nombre = 'Piggy 1.0';
    $Alcancia->ubicacion = 'Chapinero Alto';
    $Alcancia->email = 'Piggy@algo.es';
    $Alcancia->password = Hash::make('demo1');
    //$Alcancia->save();
    return "Ok, Alcancia Creada";

});

Route::get('login_alcancia', function(){

	$email = 'Piggy@algo.es';
	$password = 'demo1';

        $userdata = array(
            'email' => $email,
            'password'=> $password
        );

        if(Auth::attempt($userdata, true))
        {
            return Response::json(['success'=>True, 'user' => Auth::User()]);
        }
        return Response::json(['success'=>False]);
});

Route::get('alcancia_check', function(){
    if(Auth::check())
    {
        return Auth::User();    
    }else{
        return "No logueado";
    }
    
});








Route::get('crear_grupo', function(){

try
{
    // Create the group
    $group = Sentry::createGroup(array(
        'name'        => 'Users',
        'permissions' => array(
            'admin' => 1,
            'users' => 1,
        ),
    ));
}
catch (Cartalyst\Sentry\Groups\NameRequiredException $e)
{
    echo 'Name field is required';
}
catch (Cartalyst\Sentry\Groups\GroupExistsException $e)
{
    echo 'Group already exists';
}


});


Route::get('crear_user', function(){

    try
    {
        // Create the user
        $user = Sentry::createUser(array(
            'email'      => 'a@g.es',
            'password'   => '123',
            'first_name' => 'Alberto',
            'last_name'  => 'Gonzales',
            'tag'        => '519723197',
            'activated'  => true,
        ));

        // Find the group using the group id
        $adminGroup = Sentry::findGroupById(1);

        // Assign the group to the user
        $user->addGroup($adminGroup);
        return "User creado Ok";
    }
    catch (Cartalyst\Sentry\Users\LoginRequiredException $e)
    {
        echo 'Login field is required.';
    }
    catch (Cartalyst\Sentry\Users\PasswordRequiredException $e)
    {
        echo 'Password field is required.';
    }
    catch (Cartalyst\Sentry\Users\UserExistsException $e)
    {
        echo 'User with this login already exists.';
    }
    catch (Cartalyst\Sentry\Groups\GroupNotFoundException $e)
    {
        echo 'Group was not found.';
    }

});




Route::get('login_sentry', function(){


try
{
    // Login credentials
    $credentials = array(
        'email'     => 'jefersonpatino@yahoo.es',
        'password'  => '320542',
    );

    // Authenticate the user
    $user = Sentry::authenticate($credentials, false);
    return "Ok Logueado";
}
catch (Cartalyst\Sentry\Users\LoginRequiredException $e)
{
    echo 'Login field is required.';
}
catch (Cartalyst\Sentry\Users\PasswordRequiredException $e)
{
    echo 'Password field is required.';
}
catch (Cartalyst\Sentry\Users\WrongPasswordException $e)
{
    echo 'Wrong password, try again.';
}
catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
{
    echo 'User was not found.';
}
catch (Cartalyst\Sentry\Users\UserNotActivatedException $e)
{
    echo 'User is not activated.';
}

// The following is only required if the throttling is enabled
catch (Cartalyst\Sentry\Throttling\UserSuspendedException $e)
{
    echo 'User is suspended.';
}
catch (Cartalyst\Sentry\Throttling\UserBannedException $e)
{
    echo 'User is banned.';
}

});


Route::get('user_check', function(){

	if ( ! Sentry::check())
	{
	    return  "User is not logged in, or is not activated";
	    
	}
	else
	{
		return $user = Sentry::getUser();
	}

    
});




// Validamos los datos de inicio de sesión.
Route::post('login', 'AuthController@postLogin');