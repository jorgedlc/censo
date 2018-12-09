<!-- MODAL INGRESAR PACIENTE-->
<div class="modal fade" id="modalIngresarPaciente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

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
        <form id="frm_ingresar_paciente" name="frm_ingresar_paciente">
          @csrf
          <!--Body-->
          <div class="modal-body">
              <div class="text-center">
                <i class="fa fa-plus fa-3x mb-12 animated rotateIn"></i>
              </div>
              <div class="md-form">
                <input type="text" id="numero_afiliacion" name="numero_afiliacion" class="form-control" autocomplete="off" maxlength="9" required>
                <label for="numero_afiliacion">Numero de Afiliación:</label>
              </div>

              <div class="md-form">
                <input type="text" id="dui" name="dui" class="form-control" autocomplete="off" maxlength="10"/>
                <label for="dui">DUI:</label>
              </div>

              <div class="md-form">
                <input type="text" id="nombres" name="nombres" class="form-control" autocomplete="off"/>
                <label for="nombres">Nombres: </label>
              </div>

              <div class="md-form">
                <input type="text" id="apellido" name="apellido" class="form-control" autocomplete="off"/>
                <label for="apellido">Apellidos:</label>
              </div>

              <div class="form-group">
                <label for="sexo">Sexo:</label>
                <select class="form-control" id="sexo" name="sexo">
                  <option value="M">Masculino</option>
                  <option value="F">Femenino</option>
                </select>
              </div>

              <div class="form-group">
                <label for="observaciones">Observaciones:</label>
                <textarea rows="4" cols="50" id="observaciones" name="observaciones" class="form-control" autocomplete="off" />

                </textarea>
              </div>

              <div class="md-form">
                <input type="text" id="edad" name="edad" class="form-control">
                <label for="edad">Edad:</label>
              </div>

              <div class="form-group">
                <label for="ocupacion">Ocupación:</label>
                <select class="form-control" id="ocupacion" name="ocupacion">
                  <option value="estudiante">Estudiante</option>
                  <option value="trabajador">Trabajador</option>
                </select>
              </div>

              <div class="form-group">
                <label for="estado_civil">Estado Civil:</label>
                <select class="form-control" id="estado_civil" name="estado_civil">
                  <option value="casado">Casado/a</option>
                  <option value="soltero">Soltero/a</option>
                  <option value="divorciado">Divorciado/a</option>
                  <option value="viudo">Viudo/a</option>
                </select>
              </div>
          </div>
          <!--Footer-->
          <div class="modal-footer">
            <button class="btn btn-info" type="submit">Ingresar Paciente</button>
            <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
          </div>
      </div>
        <!--/.Content-->
    </form>
    </div>
  </div>
<!-- MODAL AGREGAR PACIENTE-->
