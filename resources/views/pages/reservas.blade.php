@extends('template/template')
@section('content') 

<!--Main layout-->
<main class="pt-5 mx-lg-5">
     <h1 class="titulo-manto">INFORMACION CAMAS RESERVADAS</h1>
        <!-- Table  -->
        <table class="table table-hover" id="datatable">
            <!-- Table head -->
            <thead class="blue lighten-4">
                <tr>
                  <th>#Reserva</th>
                  <th>Nombre paciente</th>
                  <th>Usuario</th>
                  <th>Cama</th>
                  <th>Nivel</th>
                  <th>Estado</th>
                  <th>Fecha ingreso</th>
                </tr>
            </thead>
            <!-- Table head -->
            <!-- Table body -->
            <tbody>
                  @foreach($reservas as $reserva)
                    <tr>
                      <td>{{$reserva->id_reserva}}</td>
                      <td>{{$reserva->pacientes->nombres}}</td>
                      <td>{{$reserva->usuarios->nombres." ".$reserva->usuarios->apellido}}</td>
                      <td>{{$reserva->camas->correlativo."/".$reserva->camas->servicios->nombre_servicio}}</td>
                      <td>{{$reserva->camas->servicios->nivel}}</td>
                      <td>{{$reserva->estado}}</td>
                      <td>{{substr($reserva->fecha_ingreso,0,10) }}</td>
                    </tr>
                  @endforeach
            </tbody>
            <!-- Table body -->
        </table>
        <!-- Table  -->
</main>
<!--Main layout-->
@endsection