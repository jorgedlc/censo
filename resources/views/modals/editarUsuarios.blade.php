<!-- MODAL EDITAR USUARIO-->
<div class="modal fade right" id="modalEditarUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true" data-backdrop="false">
            <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading lead">Editar Usuario</p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>
                    <form action="" id="frm_editar_usuario" name="frm_editar_usuario">
                      <!--Body-->
                      @csrf
                      <div class="modal-body">
                        <div class="text-center">
                          <i class="fas fa-edit fa-3x mb-12 animated rotateIn"></i>
                        </div>
                        <input  type="hidden" id="ed_id_usuario" name="ed_id_usuario" />

                        <div class="form-group">
                          <label for="edusuario">Usuario:</label>
                          <input type="text" id="edusuario" name="edusuario" class="form-control" autocomplete="off" / >
                        </div>

                        <div class="form-group">
                          <label for="ednombres">Nombres:</label>
                          <input type="text" id="ednombres" name="ednombres" class="form-control" autocomplete="off">
                        </div>

                        <div class="form-group">
                          <label for="edapellidos">Apellidos:</label>
                          <input type="text" id="edapellidos" name="edapellidos" class="form-control" autocomplete="off" />
                        </div>

                        <div class="form-group">
                          <label for="id_especialidad">Especialidad:</label>
                          <select class="form-control" name="ed_id_especialidad" id="ed_id_especialidad">
                            @foreach($especialidades as $especialidad)
                                  <option value="{{$especialidad->id_especialidad}}">{{$especialidad->nombre}}</option>
                            @endforeach
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="id_tipo_usuario">Tipo de Usuario:</label>
                          <select class="form-control" name="ed_id_tipo_usuario" id="ed_id_tipo_usuario">
                              @foreach($tiposUsuarios as $tipoUsuario)
                                  <option value="{{$tipoUsuario->id_tipo_usuario}}">{{$tipoUsuario->nombre}}</option>

                              @endforeach

                          </select>
                        </div>

                        <div class="form-group">
                          <label for="edestado">Estado:</label>
                          <select class="form-control" name="edestado" id="edestado">
                            <option value="1">Activo</option>
                            <option value="0">Inactivo</option>
                          </select>
                        </div>
                      </div>

                    <!--Footer-->
                    <div class="modal-footer justify-content-center">
                        <button type="submit" class="btn btn-info" id="editarPaciente" name="editarPaciente">Guardar Cambios
                        </button>
                        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
                    </div>
                    </form>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- MODAL EDITAR USUARIO-->