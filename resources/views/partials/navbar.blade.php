
<!--Main Navigation-->
<header>
<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light blue lighten-5 scrolling-navbar">
    <div class="container-fluid">

        <!-- Brand -->
        <label class="navbar-brand waves-effect waves-light" href="#" target="_blank">
            <strong class="blue-text">ISSS - HOSPITAL GENERAL</strong>
        </label>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <!-- Left -->
            
            <!-- Right -->
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a href="#" class="nav-link border border-light rounded waves-effect"
                        target="_blank">
                        <i class="fa fa-user"></i>
                        Usuario
                    </a>
                </li>
            </ul>

        </div>

    </div>
</nav>
<!-- Navbar -->

<!-- Sidebar -->
<div class="sidebar-fixed position-fixed">

    <div class="box-header waves-effect waves-light" style="display:flex; justify-content:center;">
      <img src="{{asset('img/logooficialisss.png')}}" alt="">
    </div>

    <div class="list-group list-group-flush" id="navigation" >
        
        <a href="/inicio" class="list-group-item list-group-item-action waves-effect" id="inicio">
            <i class="fa fa-chart-pie mr-2"></i> Inicio
        </a>            
    
        <a href="/pacientes" class="list-group-item list-group-item-action waves-effect" id="registro">
            <i class="fa fa-address-book mr-2"></i> Registro de pacientes
        </a>            

        <a href="/camas" class="list-group-item  list-group-item-action waves-effect" id="camas">
            <i class="fa fa-table mr-2"></i>Administración de Camas
        </a>            
    
        <a href="/usuarios" class="list-group-item list-group-item-action waves-effect" id="usuarios">
            <i class="fa fa-user mr-2"></i>Administración de usuarios
        </a>            
    
        <a href="/servicios" class="list-group-item list-group-item-action waves-effect" id="servicios">
            <i class="fa fa-cart-plus mr-2"></i>Administración de servicios
        </a>            

        <a href="/especialidades" class="list-group-item list-group-item-action waves-effect" id="especialidades">
            <i class="fa fa-flask mr-2"></i>Administración de especialidades
        </a>            
    
        <a href="/reservas" class="list-group-item list-group-item-action waves-effect" id="reservas">
            <i class="fa fa-ambulance mr-2"></i>Reservas de Pacientes
        </a>            
    
        <a href="#" class="list-group-item list-group-item-action waves-effect" id="logout">
            <i class="fa fa-user mr-3"></i>Cerrar Sesión
        </a> 

    </div>

</div>
<!-- Sidebar -->

</header>
<!--Main Navigation-->

<br>
<br>
<br>
<br>