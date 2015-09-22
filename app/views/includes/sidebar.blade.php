<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
<div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav">
        <li>
            <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
        </li>
		<li class="{{ Request::is( 'admin/usuarios') ? 'active' : '' }}">
            <a href="{{URL::to('admin/usuarios')}}"><i class="fa fa-fw fa-users"></i> Usuarios</a>
        </li>        
        <li class="{{ Request::is( 'admin/historial') ? 'active' : '' }}">
            <a href="{{URL::route('historial')}}"><i class="fa fa-database"></i> Historial General</a>
        </li>

        <li class="{{ Request::is( 'admin/historial/depositos') ? 'active' : '' }}">
            <a href="{{URL::route('historial-depositos')}}"><i class="fa fa-share"></i> Depositos</a>
        </li>        
        <li class="{{ Request::is( 'admin/historial/transferencias-bancoink') ? 'active' : '' }}">
            <a href="{{URL::route('historial-transferencias-bancoink')}}"><i class="fa fa-fw fa-user"></i> Transferencias Bancoink</a>
        </li>         
       <!-- <li>
            <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Estadisticas</a>
        </li>        
        -->
        <li class="{{ Request::is( 'admin/cuentas_bancarias') ? 'active' : '' }}">
            <a href="{{URL::to('admin/cuentas_bancarias')}}"><i class="fa fa-fw fa-credit-card"></i> Cuentas Bancarias</a>
        </li>

        <li class="{{ Request::is( 'admin/cuentas_bancarias/lista-transferencias') ? 'active' : '' }}">
            <a href="{{URL::to('admin/cuentas_bancarias/lista-transferencias')}}"><i class="fa fa-fw fa-credit-card"></i> Transferencias Bancarias</a>
        </li> 
        <li>
            <a href="{{URL::route('salir')}}"><i class="fa fa-fw fa-power-off"></i> Salir</a>
        </li>                
    </ul>
</div>
<!-- /.navbar-collapse -->