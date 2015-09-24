@extends('layouts/default')
@section('content')

@section('title')
@parent
 ¡ Usuarios !
@stop

<h1>Bancoink </h1>

<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-usd fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${{ number_format(UserAlcanciaDeposito::all()->sum('moneda'), 2)}}</div>
                        <div>Dinero Depositado <span> <em>	 ( Monedas:{{count(UserAlcanciaDeposito::all())}} ) </em> </span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-md-6">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-usd fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${{ number_format(UserAlcanciaDeposito::all()->sum('moneda_des'), 2)}}</div>
                        <div>Dinero depositado con descuento</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-money fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">
                        	${{ number_format(UserAlcanciaDeposito::all()->sum('moneda')  - UserAlcanciaDeposito::all()->sum('moneda_des'), 2 ) }}
                        </div>
                        <div>Ganancia Bancoink</div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-share fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${{ number_format(UserBancoTransferencia::where('estado',1)->sum('valor'), 2)}}</div>
                        <div>Dinero Retirrado</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-usd fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${{ number_format(Transacciones::where('estado',1)->sum('valor'), 2)}}</div>
                        <div>Total Restante</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<hr>
<!-- /.row -->

<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-user fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{count(User::all())}}</div>
                        <div>Usuarios</div>
                    </div>
                </div>
            </div>
            <a href="{{URL::route('usuarios')}}">
                <div class="panel-footer">
                    <span class="pull-left">Ver Registros</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-share fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{count(UserAlcanciaDeposito::all())}}</div>
                        <div>Monedas depositadas</div>
                    </div>
                </div>
            </div>
            <a href="{{URL::route('historial-depositos-all')}}">
                <div class="panel-footer">
                    <span class="pull-left">Ver Registros</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-users fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{count(UsuariosBancoinkTransferencias::all())}}</div>
                        <div>Transferencias Bancoink</div>
                    </div>
                </div>
            </div>
            <a href="{{URL::route('historial-transferencias-bancoink')}}">
                <div class="panel-footer">
                    <span class="pull-left">Ver Registros</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-credit-card fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">{{count(UserBancoTransferencia::all())}}</div>
                        <div>Transferencias Cuentas Bancarias</div>
                    </div>
                </div>
            </div>
            <a href="{{URL::route('lista-transferencias')}}">
                <div class="panel-footer">
                    <span class="pull-left">Ver Registros</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>
<!-- /.row -->


@stop
