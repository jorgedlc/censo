<!-- MODAL INGRESAR Especialidades-->
<div class="modal fade" id="modalIngresarEspecialidad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

<div class="modal-dialog modal-md modal-notify modal-info" role="document">
      <!--Content-->
      <div class="modal-content">
        <!--Header-->
        <div class="modal-header">
          <p class="heading lead">Ingresar Especialidad</p>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
          </button>
        </div>
        <form id="frm_ingresar_especialidades" name="frm_ingresar_especialidades">
          @csrf
          <!--Body-->
          <div class="modal-body">
            <div class="text-center">
                <i class="fas fa-plus fa-3x mb-12 animated rotateIn"></i>
            </div>
            <div class="md-form">
              <input type="text" id="especialidad" name="especialidad" class="form-control">
              <label for="usuario">Especialidad:</label>
            </div>
            <div class="form-group">
              <label for="id_estado">Estado:</label>
              <select class="form-control" name="id_estado" id="id_estado">
                <option value="Activo">Activo </option>
                <option value="Inactivo">Inactivo</option>
              </select>
            </div>
          </div>
          <!--Footer-->
          <div class="modal-footer">
            <button class="btn btn-info" type="submit">Ingresar Especialidad</button>
            <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
          </div>
      </div>
        <!--/.Content-->
    </form>
    </div>
  </div>
<!-- MODAL INGRESAR ESPECIALIDADES -->
