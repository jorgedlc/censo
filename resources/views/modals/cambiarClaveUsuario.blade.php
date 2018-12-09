        <!-- MODAL CAMBIAR CONTRASEÑA-->
        <div class="modal fade left" id="modalCambiarClave" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="false">
          <div class="modal-dialog modal-full-height modal-left modal-notify modal-success" role="document">
              <!--Content-->
              <div class="modal-content">
                  <!--Header-->
                  <div class="modal-header">
                      <p class="heading lead">Editar Contraseña</p>

                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true" class="white-text">&times;</span>
                      </button>
                  </div>

                  <!--Body-->
                  <div class="modal-body">
                    <div class="text-center">
                      <i class="fa fa-lock fa-3x mb-12 animated rotateIn"></i>
                    </div>
                    <form action="" id="frm_editar_clave" name="frm_editar_clave">
                      <div class="form-group">
                        <input type="hidden" name="id_usuario_contrasena" id="id_usuario_contrasena">

                        <div class="md-form input-group mt-0">
                          <label for="nueva_contrasena">Nueva Contraseña</label>
                          <input type="password" class="form-control" id="nueva_contrasena" name="nueva_contrasena">
                          <div class="input-group-append">
                            <span class="input-group-text see-password1"><i class="fa fa-eye"></i></span>
                          </div>
                        </div>

                        <div class="md-form input-group mt-0">
                        <label for="confirmacion_nueva">Confirmar Contraseña</label>
                          <input type="password" class="form-control" id="confirmacion_nueva" name="confirmacion_nueva">
                          <div class="input-group-append">
                            <span class="input-group-text see-password2"><i class="fa fa-eye"></i></span>
                          </div>
                        </div>

                      </div>
                  </div>
                  <!--Footer-->
                  <div class="modal-footer justify-content-center">
                      <button type="submit" class="btn btn-success btn-md" name="cambiarContra" id="cambiarContra">Guardar Cambios </button>
                      <a role="button" class="btn btn-outline-success waves-effect btn-md" data-dismiss="modal">Cancelar</a>
                  </div>
                  </form>
              </div>
              <!--/.Content-->
          </div>
      </div>
      <!-- MODAL CAMBIAR CONTRASEÑA-->