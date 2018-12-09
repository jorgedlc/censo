@extends('template/template')
@section('content') 
<main class="pt-5 mx-lg-5">

    <h1 class="titulo-manto">Servicios</h1>

        <a href="" class="btn btn-outline-info btn" data-toggle="modal" data-target="#modalIngresarServicio" data-id="id_usuario" >Ingresar</a>

    <table  class="table" id="datatable">
        <thead class="blue lighten-4">
            <tr>
                <th>Nombre Servicio</th>
                <th>Nivel</th>
                <th>Estado</th>
                <th>Editar</th>                
            </tr>
        </thead>
        <tbody>
            @foreach($servicios as $servicio)
                <tr>  
                  <td>{{$servicio->nombre_servicio}}</td>                  
                  <td>{{$servicio->nivel}}</td>
                  <td>{{($servicio->estado==1)?'Activo':'Inactivo'}}</td>
                  <td>
                    <button class="btn btn-success btn-sm" data-id="{{$servicio->id_servicio}}" data-target="#modalEditarServicio" data-toggle="modal">Editar</button>
                  </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</main>

@include('modals.editarServicios')
@include('modals.ingresarServicios')

@endsection