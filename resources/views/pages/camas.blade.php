@extends('template/template')
@section('content') 
<main class="pt-5 mx-lg-5">
    <h1 class="titulo-manto">INFORMACION CAMAS</h1>
    
    <a href="" class="btn btn-outline-info" data-toggle="modal" data-target="#modalIngresarCama">Ingresar Cama</a>    
    
    <form action="" id="frm_change_level">
        @csrf
        <select class="btn btn-outline-info dropdown-toggle" name="id_nivel" id="id_nivel" onchange="">        
            <option value="3">Nivel 3</option>
            <option value="4">Nivel 4</option>
            <option value="5">Nivel 5</option>
            <option value="6">Nivel 6</option>
            <option value="7">Nivel 7</option>
            <option value="8">Nivel 8</option>
        </select>        
    </form>        
       
    <!--Tabla de camas-->
    <table  class="table" id="datatable" >
        <thead class="blue lighten-4">
            <tr>                
                <th>Servicio</th>
                <th>Estado</th>
                <th>Ala</th>
                <th>Correlativo</th>
                <th style="text-align:center;">Editar</th>
            </tr>
        </thead>
        <tbody>
            @foreach($camas as $cama)
                <tr>
                    <td>{{$cama->servicios->nombre_servicio}}</td>
                    <td>{{$cama->estado}}</td>
                    <td>{{$cama->ala}}</td>
                    <td>{{$cama->correlativo}}</td>
                    <td>
                        <button class="btn  btn-success btn-sm" data-id="{{$cama->id_cama}}"  data-target="#modalEditarCama" data-toggle="modal" >Editar</button>
                    </td>
                </tr>
            @endforeach        
        </tbody>
    </table>
    <!--Tabla de camas-->
</main>

@include('modals.ingresarCamas')
@include('modals.editarCamas')

@endsection