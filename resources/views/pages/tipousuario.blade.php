@extends('template/template')
@section('content') 


<main class="pt-5 mx-lg-5">

<h1 class="titulo-manto">Tipos usuarios</h1>

<a href="" class="btn btn-outline-info btn" data-toggle="modal" data-target="#modalIngresarServicio" data-id="id_usuario" >Ingresar</a>

<table  class="table" id="datatable">
    <thead class="thead-dark">
        <tr>
          <th>Tipo</th>
          <th>Editar</th>
        </tr>
    </thead>
    <tbody>
      @foreach($tipoUsuario as $tipo)
        <tr>
          <td>{{$tipo->nombre}}</td>
          <td>{{($tipo->estado==1)?'Activo':'Inactivo'}}</td>
        </tr>
      @endforeach

      
    </tbody>
</table>
</main>

<!----------------------------MODAL INGRESAR SERVICIOS---------------------------->

<div class="modal fade" id="modalIngresarServicio" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

<div class="modal-dialog modal-md modal-notify modal-info" role="document">
  <!--Content-->
  <div class="modal-content">
    <!--Header-->
    <div class="modal-header">
      <p class="heading lead">Ingresar Servicio</p>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="white-text">&times;</span>
      </button>
    </div>
    <form id="frm_ingresar_servicio" name="frm_ingresar_servicio">
      <!--Body-->
      <div class="modal-body">
          <div class="md-form">
            <input type="text" id="nombre_servicio" name="nombre_servicio" class="form-control" required/>
            <label for="nombre_servicio">Nombre del Servicio:</label>
          </div>

          <div class="form-group">
            <label for="nivel">Nivel:</label>
            <select class="form-control" id="nivel" name="nivel">
              <option value="1">Nivel 1</option>
              <option value="2">Nivel 2</option>
              <option value="3">Nivel 3</option>
              <option value="4">Nivel 4</option>
              <option value="5">Nivel 5</option>
              <option value="6">Nivel 6</option>
              <option value="7">Nivel 7</option>
              <option value="8">Nivel 8</option>
            </select>
          </div>
          
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button class="btn btn-info" type="submit">Ingresar Servicio</button>
        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
      </div>
  </div>
    <!--/.Content-->
</form>
</div>
</div>
<!----------------------------MODAL INGRESAR SERVICIOS---------------------------->

<!----------------------------MODAL EDITAR SERVICIOS---------------------------->

<div class="modal fade" id="modalEditarServicio" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

<div class="modal-dialog modal-md modal-notify modal-info" role="document">
  <!--Content-->
  <div class="modal-content">
    <!--Header-->
    <div class="modal-header">
      <p class="heading lead">Editar Servicio</p>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="white-text">&times;</span>
      </button>
    </div>
    <form id="frm_editar_servicio" name="frm_editar_servicio" >
      <!--Body-->

    <input type="hidden" name="id_servicio" id="id_servicio">

      <div class="modal-body">
            <div class="form-group">
                <label for="ed_nombre_servicio">Nombre del Servicio:</label>
                <input type="text" id="ed_nombre_servicio" name="ed_nombre_servicio" class="form-control" required>
                
            </div>

            <div class="form-group">
                <label for="ed_nivel">Nivel:</label>
                <select class="form-control" id="ed_nivel" name="ed_nivel">
                <option value="1">Nivel 1</option>
                <option value="2">Nivel 2</option>
                <option value="3">Nivel 3</option>
                <option value="4">Nivel 4</option>
                <option value="5">Nivel 5</option>
                <option value="6">Nivel 6</option>
                <option value="7">Nivel 7</option>
                <option value="8">Nivel 8</option>
                </select>
            </div>

            <div class="form-group">
                <label for="ed_estado">Estado:</label>
                <select class="form-control" id="ed_estado" name="ed_estado">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>                    
                </select>
            </div>
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button class="btn btn-info" type="submit">Guardar Cambios</button>
        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
      </div>
  </div>
    <!--/.Content-->
</form>
</div>
</div>
<!----------------------------MODAL EDITAR SERVICIOS---------------------------->



@endsection
