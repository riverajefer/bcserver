<?php

class AdminCuentasController extends BaseController {

	public function getCuentasBanco()
	{
	   $ub =  UsersBanco::orderBy('estado')->get();
       $data = array(
        'datos'=>$ub
        );

	   return View::make('Backend/cuentas.index', $data);
	}


    public function validarCuenta($id)
    {
        $ub = UsersBanco::find($id);
        $ub->estado = 1;
        $ub->msg_estado = 'Activa';
        $ub->save();
        return Redirect::back()->with('message','Cuenta activada');
    }

    public function detalleCuenta($id)
    {
        $cuenta = UsersBanco::find($id);
        $banco  = Bancos::find($cuenta->banco_id);
        $data = array(
        'cuenta'=>$cuenta,
        'banco'=>$banco
        );

        return View::make('Backend/cuentas.detalle_cuenta_banco', $data);
    }


    public function cuentaTransferencias($id)
    {
        $cuenta = UsersBanco::find($id);
        $transferencias =  $cuenta->UserBancoTransferencia;
        $banco  = Bancos::find($cuenta->banco_id);
        $data = array(
            'transferencias'=>$transferencias,
            'user'=>$cuenta->usuario,
            'banco'=>$banco
        );

        return View::make('Backend/cuentas.transferencias', $data);
    }

    public function listaTransferenciasBancarias()
    {
        $transferencias =  UserBancoTransferencia::orderBy('estado')->get();
        $total =  UserBancoTransferencia::where('estado',1)->sum('valor');
        $data = array(
            'transferencias'=>$transferencias,
            'total'=>$total
        );
        return View::make('Backend/cuentas.lista-transferencias', $data);

    }

    public function validarTransferencia($id)
    {
        $ubt =  UserBancoTransferencia::find($id);
        $ubt->estado = 1;
        $ubt->msg_estado = 'Realizada';
        $ubt->save();

        $transaccion = $ubt->transaccion;
        $transaccion->estado = 1;
        $transaccion->save();


        return Redirect::back()->with('message','Transferencia activada');
    }

}
