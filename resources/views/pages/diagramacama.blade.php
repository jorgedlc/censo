
<?php
        //Clases CSS para estilos de las camas
        $red = "bed-red";
        $green = "bed-green";
        $gray = "bed-gray";
        $yellow = "bed-yellow";
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistema Hospital General</title>
  </head>

  <link rel="stylesheet" type="text/css" href="../../views/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-grid.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-grid.css.map" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-grid.min.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-grid.min.css.map" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-reboot.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-reboot.css.map" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-reboot.min.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap-reboot.min.css.map" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap.css.map" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/bootstrap.min.css.map" />

  <link rel="stylesheet" type="text/css" href="../../views/css/footer.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/mdb.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/mdb.min.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/register.css"/>
  <link rel="stylesheet" type="text/css" href="../../views/css/style.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/estilos.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/style.min.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/sweetalert2.css" />

  <link rel="stylesheet" type="text/css" href="../../views/css/addons/datatables.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/addons/datatables.min.css" />
  <link rel="stylesheet" type="text/css" href="../../views/css/camas.css"/>

<body  class="grey lighten-3">

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
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link waves-effect waves-light" href="#">Inicio
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

                <!-- drop down control de camas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Control de Camas
                    </a>
                    <div class="dropdown-menu">
                        <a href="../diagramacama/1" class="dropdown-item" >Nivel 3</a>
                        <a href="../diagramacama/2" class="dropdown-item" >Nivel 4-Medicina 4</a>
                        <a href="../diagramacama/3" class="dropdown-item" >Nivel 5-Medicina 3</a>
                        <a href="../diagramacama/4" class="dropdown-item" >Nivel 6-Neurocirugia</a>
                        <a href="../diagramacama/5" class="dropdown-item" >Nivel 7-Ortopedia</a>
                        <a href="../diagramacama/6" class="dropdown-item" >Nivel 8-Cirugia General</a>
                    </div>
                </li>

            </ul>

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
      <img src="../../views/img/logooficialisss.png" alt="">
    </div>

    <div class="list-group list-group-flush">
        <a href="../../paciente/index" class="list-group-item list-group-item-action waves-effect">
            <i class="fa fa-address-book mr-2"></i> Registro de pacientes</a>
        <a href="../../cama/index" class="list-group-item  list-group-item-action waves-effect">
            <i class="fa fa-table mr-2"></i>Administración de Camas</a>
        <a href="../../usuarios/index" class="list-group-item list-group-item-action waves-effect">
            <i class="fa fa-user mr-2"></i>Administración de usuarios</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
            <i class="fa fa-cart-plus mr-2"></i>Administración de servicios</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
            <i class="fa fa-flask mr-2"></i>Administración de especialidades</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
                <i class="fa fa-ambulance mr-2"></i>Reservas de Pacientes</a>


        <a href="#" class="list-group-item list-group-item-action waves-effect">
            <i class="fa fa-user mr-3"></i>Cerrar Sesión</a>
    </div>

</div>
<!-- Sidebar -->

</header>
<!--Main Navigation-->

<br>
<br>
<br>
<br>

<main class="pt-5 mx-lg-5">

    <h1 style="text-align:center;">
        Nivel <?php echo $id ?>
    </h1>

    <div class="container" style="display:flex; flex-direction: column; justify-content: center; align-items: center;">
        <div class="references">
                <div class="reference">
                        <i class="fa fa-bed fa-2x bed-data reference-color" style="color:#E5BE01"  ></i>
                        <span>Reservadas</span>
                </div >
                <div class="reference">
                        <i class="fa fa-bed fa-2x bed-data reference-color" style="color: gray"></i>
                        <span>Ocupadas</span>
                </div>
                <div class="reference">
                        <i class="fa fa-bed fa-2x bed-data reference-color" style="color:green;"></i>
                        Disponible
                </div>
                <div class="reference">
                        <i class="fa fa-bed fa-2x bed-data reference-color" style="color:red"></i>
                        Mantenimiento
                </div>

        </div>

    </div>


<div class="row">
        <div class="col-md-6">
                <h3 style="text-align:center;">ORIENTE </h3>

                <div class="camas-container">
                        <!--Camas-->
                        
                <?php foreach ($listadoCamas as $cama) { ?>
                        
                        <?php if ($cama->getAla() == 1) { ?>
                                <?php
                                $class = "";
                                        //ASIGNACION DE COLORES
                                switch ($cama->getEstado()) {
                                        case 'Ocupada':
                                                $class = "bed-gray";
                                                break;
                                        case 'Disponible':
                                                $class = "bed-green";
                                                break;
                                        case 'Reservada':
                                                $class = "bed-yellow";
                                                break;
                                        case 'Mantenimieto':
                                                $class = "bed-red";
                                                break;
                                }
                                ?>
                                
                                <div class="bed">
                                        <i class="fa fa-bed fa-2x bed-data reference-color <?php echo $class; ?>"   ></i>
                                        <span class="bed-name"><?php echo $cama->getCorrelativo(); ?></span>
                                </div>                                                                
                        <?php 
                }
                ?>
                <?php 
        } ?>


                </div>

        </div>

        <div class="col-md-6">

                <h3 style="text-align:center;">PONIENTE</h3>

                <div class="camas-container">
                        <!--Camas-->
                        
                <?php foreach ($listadoCamas as $cama) 
                {
                ?>
                        
                        <?php if ($cama->getAla() == 2) 
                        { 
                        ?>
                                <?php
                                $class = "";
                                        //ASIGNACION DE COLORES
                                switch ($cama->getEstado()) 
                                {
                                        case 'Ocupada':
                                                $class = "bed-gray";
                                                break;
                                        case 'Disponible':
                                                $class = "bed-green";
                                                break;
                                        case 'Reservada':
                                                $class = "bed-yellow";
                                                break;
                                        case 'Mantenimieto':
                                                $class = "bed-red";
                                                break;
                                }
                                ?>
                                <div class="bed">
                                        <i class="fa fa-bed fa-2x bed-data reference-color <?php echo $class; ?>"   ></i>
                                        <span class="bed-name"><?php echo $cama->getCorrelativo(); ?></span>
                                </div>                                                                
                        <?php 
                }
                ?>
                <?php 
        } ?>
                </div>
        </div>
</div>

<!-- MODAL INGRESAR PACIENTE CAMA-->
<div class="modal fade" id="modalIngresarPacienteCama" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

        <div class="modal-dialog modal-md modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                                <p class="heading lead">Ingresar Paciente</p>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true" class="white-text">&times;</span>
                                </button>
                        </div>
                        <form id="frm_ingresar_usuario" name="frm_ingresar_usuario">
                        <!--Body-->
                        <div class="modal-body">
                                <div class="text-center">
                                        <i class="fas fa-plus fa-3x mb-12 animated rotateIn"></i>
                                </div>
                                <div class="form-group">
                                        <label for="">Numero de afiliacion</label>
                                        <input type="text" name="" id="" class="form-control" placeholder="Numero de afiliacion" />
                                </div>
                                <div class="form-group">
                                        <label for="">Numero de Dui</label>
                                        <input type="text" name="" id="" class="form-control" placeholder="Numero de Dui" />
                                </div>
                                <div class="form-group">
                                        <label for="">Nombres del paciente</label>
                                        <input type="text" name="" id="" class="form-control" placeholder="Nombres del paciente" />
                                </div>
                                <div class="form-group">
                                        <label for="">Apellidos del paciente</label>
                                        <input type="text" name="" id="" class="form-control" placeholder="Apellidos del paciente" />
                                </div>
                                <div class="form-group">
                                        <label for="">Edad</label>
                                        <input type="text" name="" id="" placeholder="Edad" class="form-control" />
                                </div>
                                <div class="form-group">
                                        <label for="">Sexo</label>
                                        <select name="" id="" class="form-control">
                                                <option value="M">Masculino</option>
                                                <option value="F">Femenino</option>
                                        </select>
                                </div>
                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                                <button class="btn btn-info" type="submit">Ingresar</button>
                                <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
                        </div>
                </div>
        </div>
        <!--/.Content-->
                        </form> 
</div>
</div>
<!-- MODAL INGRESAR PACIENTE CAMA -->
<!-- MODAL CAMA OCUPADA -->
<div class="modal fade bottom" id="modalCamaOcupada" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="false">
        <div class="modal-dialog modal-full-height modal-bottom modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                                <p class="heading lead">La cama esta siendo ocupada por: </p>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" class="white-text">&times;</span>
                                </button>
                        </div>
                        <!--Body-->
                        <div class="modal-body">
                                <!-- Table  -->
                                <table class="table table-hover">
                                        <!-- Table head -->
                                        <thead class="blue lighten-4">
                                        <tr>
                                                <th>NUMERO DE AFILIACION</th>
                                                <th>DUI</th>
                                                <th>NOMBRE</th>
                                                <th>SEXO</th>
                                                <th>ESTADO</th>
                                                <th>EDAD</th>
                                                <th>OCUPACION</th>
                                                <th>ESTADO CIVIL</th>
                                        </tr>
                                        </thead>
                                        <!-- Table head -->

                                        <!-- Table body -->
                                        <tbody>
                                        <tr>
                                        <?php
                                                foreach ($listaPacientes as $pacientes) 
                                                {
                                                ?>
                                                <td><?php echo $pacientes->getNumeroAfiliacion() ?></td>
                                                <td><?php echo $pacientes->getDui() ?></td>
                                                <td>
                                                <?php
                                                echo $pacientes->getNombres();
                                                echo " ";
                                                echo $pacientes->getApellido();
                                                ?>
                                                </td>
                                                <td><?php echo $pacientes->getSexo() ?></td>
                                                <td><?php echo $pacientes->getEstado() ?></td>
                                                <td><?php echo $pacientes->getEdad() ?></td>
                                                <td><?php echo $pacientes->getOcupacion() ?></td>
                                                <td><?php echo $pacientes->getEstadoCivil() ?></td>
                                        <?php

                                        }
                                        ?>
                                        </tr>
                                        </tbody>
                                        <!-- Table body -->
                                </table>
                                <!-- Table  -->
                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                                <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">OK</a>
                        </div>
                </div>
                <!--/.Content-->
        </div>
</div>
<!-- Full Height Modal Bottom Danger Demo-->
</main>

<br>
<br>
<br>

<!--Footer-->
  <footer class="page-footer text-center font-small indigo darken-2 mt-4 wow fadeIn">

  <!--Call to action-->
  <div class="pt-4">
      <a class="btn btn-outline-white" href="#" target="_blank" role="button">
          <i class="fa fa-download ml-2"></i>
      </a>
      <a class="btn btn-outline-white" href="#" target="_blank" role="button">
          <i class="fa fa-graduation-cap ml-2"></i>
      </a>
  </div>
  <!--/.Call to action-->

  <hr class="my-4">

  <!--Copyright-->
  <div class="footer-copyright py-3">
      © 2018 Copyright:
      <a href="#" target="_blank"> DESRROLLADO POR INFORMÁTICA - ISSS HOSPITAL GENERAL </a>
  </div>
  <!--/.Copyright-->

  </footer>
  <!--/.Footer-->

</body>
<script type="text/javascript" src="../../views/js/jquery-3.3.1.min.js"></script>
<!-- Addons -->
<script type="text/javascript" src="../../views/js/addons/datatables.js" > </script>
<script type="text/javascript" src="../../views/js/addons/datatables.min.js" > </script>
<!--modules -->
<script type="text/javascript" src="../../views/js/modules/chart.js" > </script>
<script type="text/javascript" src="../../views/js/modules/enhanced-modals.js" > </script>
<script type="text/javascript" src="../../views/js/modules/forms-free.js" > </script>
<script type="text/javascript" src="../../views/js/modules/jquery.easing.js"></script>
<script type="text/javascript" src="../../views/js/modules/scrolling-navbar.js" > </script>
<script type="text/javascript" src="../../views/js/modules/velocity.js"></script>
<script type="text/javascript" src="../../views/js/modules/velocity.min.js"></script>
<script type="text/javascript" src="../../views/js/modules/waves.js" > </script>
<script type="text/javascript" src="../../views/js/modules/wow.js" > </script>
<!--Template-->
<script type="text/javascript" src="../../views/js/bootstrap.bundle.js"></script>
<script type="text/javascript" src="../../views/js/bootstrap.bundle.js.map"></script>
<script type="text/javascript" src="../../views/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../views/js/bootstrap.bundle.min.js.map"></script>
<script type="text/javascript" src="../../views/js/bootstrap.js" > </script>
<script type="text/javascript" src="../../views/js/bootstrap.min.js" > </script>
<script type="text/javascript" src="../../views/js/bootstrap.min.js.map" > </script>
<script type="text/javascript" src="../../views/js/jsnav.js"></script>
<script type="text/javascript" src="../../views/js/mdb.js" > </script>
<script type="text/javascript" src="../../views/js/mdb.min.js" > </script>
<script type="text/javascript" src="../../views/js/popper.min.js"></script>
<script type="text/javascript" src="../../views/js/sweetalert2.all.js"></script>
<script type="text/javascript" src="../../views/js/all.js" > </script>
<!--/.Footer-->
<script type="text/javascript" src="../../views/js/sidenavInitialization.js"></script>
<script type="text/javascript" src="../../views/js/line.js"></script>

<!-- SISTEMA JS -->
<script type="text/javascript" src="../../views/js/sistema/login.js"></script>
<script type="text/javascript" src="../../views/js/tablas.js"></script>
<script type="text/javascript" src="../../views/js/sistema/crudpacientes.js"></script>
<script type="text/javascript" src="../../views/js/sistema/crudusuarios.js"></script>
<script type="text/javascript" src="../../views/js/sistema/diagramacama.view.js"></script>