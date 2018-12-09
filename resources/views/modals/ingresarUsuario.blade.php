<!-- MODAL INGRESAR USUARIO-->
<div class="modal fade" id="modalIngresarUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

<div class="modal-dialog modal-md modal-notify modal-info" role="document">
      <!--Content-->
      <div class="modal-content">
        <!--Header-->
        <div class="modal-header">
          <p class="heading lead">Ingresar Usuario</p>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
          </button>
        </div>
        <form id="frm_ingresar_usuario" name="frm_ingresar_usuario">
          <!--Body-->

           @csrf
          <div class="modal-body">
              <div class="text-center">
                <i class="fas fa-plus fa-3x mb-12 animated rotateIn"></i>
              </div>
              <div class="md-form">
                <input type="text" id="usuario" name="usuario" class="form-control" autocomplete="off" required/>
                <label for="usuario">Usuario:</label>
              </div>

              <div class="md-form">
                <input type="password" id="clave" name="clave" class="form-control" autocomplete="off" required/>
                <label for="clave">Clave:</label>
              </div>

              <div class="md-form">
                <input type="password" id="conf_clave" name="conf_clave" class="form-control" autocomplete="off" required/>
                <label for="conf_clave">Confirmar Clave: </label>
              </div>

              <div class="md-form">
                <input type="text" id="nombres" name="nombres" class="form-control" autocomplete="off" required/>
                <label for="nombres">Nombres:</label>
              </div>

              <div class="md-form">
                <input type="text" id="apellidos" name="apellidos" class="form-control" autocomplete="off" required/>
                <label for="apellidos">Apellidos:</label>
              </div>

              <div class="form-group">
                <label for="id_especialidad">Especialidad:</label>
                <select class="form-control" name="id_especialidad" id="id_especialidad" required>
                    @foreach($especialidades as $especialidad)
                        <option value="{{$especialidad->id_especialidad}}">{{$especialidad->nombre}}</option>
                    @endforeach
                </select>
              </div>

              <div class="form-group">
                <label for="id_tipo_usuario">Tipo de Usuario:</label>
                <select class="form-control" name="id_tipo_usuario" id="id_tipo_usuario" required>
                  @foreach($tiposUsuarios as $tipoUsuario)
                        <option value="{{$tipoUsuario->id_tipo_usuario}}">{{$tipoUsuario->nombre}}</option>
                  @endforeach

                </select>
              </div>

          </div>
          <!--Footer-->
          <div class="modal-footer">
            <button class="btn btn-info" type="submit">Ingresar Usuario</button>
            <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
          </div>
      </div>
        <!--/.Content-->
    </form>
    </div>
  </div>
<!-- MODAL AGREGAR USUARIO-->