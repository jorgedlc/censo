@extends('template/template')
@section('content') 

<main class="pt-5 mx-lg-5">
  <h1 class="titulo-manto">INFORMACION USUARIOS REGISTRADOS</h1>
          <a href="" class="btn btn-outline-info" data-toggle="modal" data-target="#modalIngresarUsuario">Ingresar Usuarios</a>
            <!-- Table  -->
            <table class="table table-hover" id="datatable">
                <!-- Table head -->
                <thead class="blue lighten-4">
                    <tr>
                        <th>USUARIO</th>
                        <th>NOMBRES</th>
                        <th>APELLIDOS</th>
                        <th>ESPECIALIDAD</th>
                        <th>TIPO DE USUARIO</th>
                        <th>ESTADO</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <!-- Table head -->

                <!-- Table body -->
                <tbody>
                    @foreach($usuarios as $usuario)

                      <tr>
                        <td>{{$usuario->usuario}}</td>
                        <td>{{$usuario->nombres}}</td>
                        <td>{{$usuario->apellidos}}</td>
                        <td>{{$usuario->especialidades->nombre}}</td>
                        <td>{{$usuario->tipoUsuarios->nombre}}</td>
                        <td>{{($usuario->estado===1)?'Activo':'Inactivo'}}</td>
                        <td>
                            <button class="btn btn-success btn-sm" data-id="{{$usuario->id_usuario}}" data-target="#modalEditarUsuario" data-toggle="modal">Editar</button>
                        </td>

                      </tr>
                    @endforeach
                    

                </tbody>
                <!-- Table body -->
            </table>
            <!-- Table  -->


        </div>
        <!--Grid column-->

@include('modals.cambiarClaveUsuario') 
@include('modals.editarUsuarios')
@include('modals.ingresarUsuario')

    
</main>
@endsection