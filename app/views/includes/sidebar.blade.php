<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
<div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav">
        <li>
            <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
        </li>
		<li class="{{ Request::is( 'admin/usuarios') ? 'active' : '' }}">
            <a href="{{URL::to('admin/usuarios')}}"><i class="fa fa-fw fa-users"></i> Usuarios</a>
        </li>        
        <li>
            <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Estadisticas</a>
        </li>
        <li class="{{ Request::is( 'admin/cuentas_bancarias') ? 'active' : '' }}">
            <a href="{{URL::to('admin/cuentas_bancarias')}}"><i class="fa fa-fw fa-credit-card"></i> Validar Cuenta Bancaria</a>
        </li>
    </ul>
</div>
<!-- /.navbar-collapse -->