<?php

class AdminHistorialController extends BaseController {

	public function getUsers()
	{

	   $usuarios= User::all();
	   return View::make('Backend/usuarios.index')->with('usuarios', $usuarios);

	}

    public function getHistorialByUser($id)
    {

        $usuario= User::find($id);
        $query = $usuario->transacciones()->where('estado', 1)->orderBy('id', 'desc');

        $transacciones = $query->take(15)->skip(0)->get();
        $cantidad      = count($query->get());
        $saldo         = $query->sum('valor');
        $data  = array(
            'transacciones'=>$transacciones,
            'cantidad'=>$cantidad,
            'saldo' =>$saldo,
            'user' =>$usuario
            );

       return View::make('Backend/usuarios/historial/index', $data);

    }

    public function getDeposito($id)
    {

        $ua = UserAlcancia::find($id);
        $usuario= User::find($ua->user_id);
        $detalles = $ua->userAlcanciaDeposito;
        $ubicacion_alcancia = $ua->alcancia->ubicacion;
        $total = $ua->userAlcanciaDeposito->sum('moneda');
        $data  = array(
            'ubicacion_alcancia'=>$ubicacion_alcancia,
            'detalles'=>$detalles,
            'user' =>$usuario,
            'total'=>$total
        );

        return View::make('Backend/usuarios/historial/deposito', $data);

    }

    public function getTransferenciaBancoink($id)
    {

        $trans = UserBancoinkTransferencia::find($id);

        $ub = UsuariosBancoink::find($trans->usuariobancoink_id);
        $usuario= User::find($ub->user_id_t);
        $usuario_transferencia= User::find($ub->user_id);
        $data  = array(
            'detalles'=>$trans,
            'user' =>$usuario,
            'user_t'=>$usuario_transferencia
        );

        return View::make('Backend/usuarios/historial/detalle_transferencia_bancoink', $data);

    }


    public function getTransferenciaBanco($id)
    {

        $trans  = UserBancoTransferencia::find($id);
        $cuenta = UsersBanco::find($trans->userbanco_id);
        $banco  = Bancos::find($cuenta->banco_id);

        //return Response::json(['success'=>true, 'banco'=>$banco, 'cuenta'=>$cuenta, 'datos'=>$trans]);       

        $usuario= User::find($cuenta->user_id);
        $data  = array(
            'detalles'=>$trans,
            'user' =>$usuario,
            'cuenta'=>$cuenta,
            'banco'=>$banco
        );

        return View::make('Backend/usuarios/historial/detalle_transferencia_banco', $data);

    }


}
