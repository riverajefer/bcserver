<?php

class AdminLoginController extends BaseController {

	public function login()
	{
        return View::make('Backend/login');
	}

    public function postLogin()
    {

        try
        {
            $user = Sentry::findUserByLogin(Input::get('email'));
            $groups = $user->getGroups();
            if($groups!='[]')
            {
                if($groups[0]->name == 'Administrador')
                {

                  try
                    {
                        $credentials = array(
                            'email'    => Input::get('email'),
                            'password' => Input::get('password'),
                        );

                        $user = Sentry::authenticate($credentials, false);
                        return Redirect::to('admin/home');

                    }
                    catch (Cartalyst\Sentry\Users\LoginRequiredException $e)
                    {
                        return Redirect::back()->with('message','Login field is required.');
                    }
                    catch (Cartalyst\Sentry\Users\PasswordRequiredException $e)
                    {
                        return Redirect::back()->with('message','Password field is required.');
                    }
                    catch (Cartalyst\Sentry\Users\WrongPasswordException $e)
                    {
                        return Redirect::back()->with('message','Wrong password, try again.');
                    }
                    catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
                    {
                        return Redirect::back()->with('message','User was not found.');
                    }
                    catch (Cartalyst\Sentry\Users\UserNotActivatedException $e)
                    {
                        return Redirect::back()->with('message','User is not activated.');
                    }

                    catch (Cartalyst\Sentry\Throttling\UserSuspendedException $e)
                    {
                        return Redirect::back()->with('message','User is suspended.');
                    }
                    catch (Cartalyst\Sentry\Throttling\UserBannedException $e)
                    {
                        return Redirect::back()->with('message','User is banned.');
                    }

                }else{
                    return Redirect::back()->with('message','Error'); //usuario queiere ingresar por aca
                }                
            }else{
                return Redirect::back()->with('message','Error'); //usuario queiere ingresar por aca
            }

        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            return Redirect::back()->with('message','Error');
        }

  
    }

    public function salir()
    {
        Sentry::logout();
        return Redirect::to('admin/login');
    }    
}
