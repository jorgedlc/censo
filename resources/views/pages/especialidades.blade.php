@extends('template/template')
@section('content') 
<main class="pt-5 mx-lg-5">

      <h1 class="titulo-manto">Especialidades</h1>

      <a href="" class="btn btn-outline-info btn" data-toggle="modal" data-target="#modalIngresarEspecialidad" data-id="id_usuario" >Ingresar Especialidad</a>

    <table  class="table" id="datatable">
        <thead class="blue lighten-4">
            <tr>
                <th>Nombre</th>
                <th>Estado</th>
                <th>Editar</th>
            </tr>
        </thead>
        <tbody>
          @foreach($especialidades as $especialidad)
            <tr>
              <td>{{$especialidad->nombre}}</td>
              <td>{{$especialidad->estado}}</td>
              <td>
                <button class="btn btn-success btn-sm" data-id="{{$especialidad->id_especialidad}}" data-toggle="modal" data-target="#modalEditarEspecialidad" >Editar</button>
              </td>
            </tr>
          @endforeach
        </tbody>
    </table>
</main>

@include('modals.ingresarEspecialidad')
@include('modals.editarEspecialidades')


@endsection
