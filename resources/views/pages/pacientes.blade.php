@extends('template/template')
@section('content') 
<main class="pt-5 mx-lg-5">
  <h1 class="titulo-manto">INFORMACION PACIENTES REGISTRADOS</h1>

          <a href="" class="btn btn-outline-info" data-toggle="modal" data-target="#modalIngresarPaciente">Ingresar Paciente</a>

            <!--Card-->
            <div class="">

                <!--Card content-->
                <div class="">

                    <!-- Table  -->
                    <table class="table table-hover" id="datatable">
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
                                <th>OPCIONES</th>
                            </tr>
                        </thead>
                        <!-- Table head -->

                        <!-- Table body -->
                        <tbody>                        
                            @foreach($pacientes as $paciente)
                              <tr>
                                <td>{{$paciente->numero_afiliacion}}</td>
                                <td>{{$paciente->dui}}</td>
                                <td>{{$paciente->nombres." ".$paciente->apellido}}</td>
                                <td>{{$paciente->sexo}}</td>
                                <td>{{($paciente->estado==1)?'Activo':'Inactivo'}}</td>
                                <td>{{$paciente->edad}}</td>
                                <td>{{$paciente->ocupacion}}</td>
                                <td>{{$paciente->estado_civil}}</td>
                                <td>
                                  <button class="btn btn-success btn-sm" data-id="{{$paciente->id_paciente}}" data-target="#modalEditarPaciente" data-toggle="modal">Editar</button>
                                </td>                              
                              </tr>
                            @endforeach
                        </tbody>
                        <!-- Table body -->
                    </table>
                    <!-- Table  -->
                </div>
            </div>
            <!--/.Card-->
        </div>
        <!--Grid column-->

        @include('modals.ingresarPaciente')
        @include('modals.editarPaciente');
        
</main>
@endsection