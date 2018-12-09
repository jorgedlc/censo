<!-- MODAL EDITAR CAMAS-->
<div class="modal fade right" id="registroPacientes" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true" data-backdrop="false">
            <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading lead">Buscar / Ingresar paciente</p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>
                    <form action="" id="frmBuscarPaciente" name="frmBuscarPaciente">
                        @csrf
                        <!--Body-->
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="idPaciente" id="idPaciente">
                            </div>
                            <div class="form-group">
                                <label for="numero_afiliacion">Numero de Afiliación:</label>
                                <input type="text" id="numero_afiliacion" name="numero_afiliacion" class="form-control" placeholder="Numero de afiliacion" maxlength="9"  autocomplete="off" >                          
                                <span class="btn btn-primary btn-sm" id="btnBuscarPacientes">Buscar paciente</span>
                            </div>                            
                            <div class="form-group">
                                <label for="dui">Dui:</label>
                                <input type="text" id="dui" name="dui" class="form-control" placeholder="Numero dui" autocomplete="off" disabled="disabled" >                          
                            </div>
                            <div class="form-group">
                                <label for="nombres">Nombres:</label>
                                <input type="text" id="nombres" name="nombres" class="form-control" autocomplete="off" placeholder="Nombres" disabled="disabled" />                          
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" class="form-control" id="apellidos" name="apellidos" autocomplete="off" placeholder="Apellidos" autocomplete="off" disabled="disabled" />
                            </div>
                            <div class="form-group">
                                <label for="sexo">Sexo</label>
                                <select name="sexo" id="sexo" class="form-control" disabled="disabled">
                                    <option value="M">Masculino</option>
                                    <option value="F">Femenino</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="edad">Edad</label>
                                <input type="number" name="edad" id="edad" autocomplete="off" class="form-control" disabled="disabled" />
                            </div>
                            <div class="form-group">
                                <label for="calidadPaciente">Calidad de paciente</label>
                                <select name="calidadPaciente" id="calidadPaciente" class="form-control" disabled="disabled">
                                    <option value="">Afiliado</option>
                                    <option value="">Beneficiario</option>
                                    <option value="">Pensionado</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="estado">Estado</label>
                                <select name="estado" id="estado" class="form-control" disabled="disabled">
                                    <option value="1">Ingresado</option>
                                    <option value="2">De Alta</option>
                                    <option value="3">Difunto</option>                                    
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="observaciones">Observaciones</label>
                                <textarea name="observaciones" id="observaciones" cols="50" rows="10" class="form-control" disabled="disabled"></textarea>
                            </div>
                        </div>
                    <!--Footer-->
                    <div class="modal-footer justify-content-center">
                        <button type="submit" class="btn btn-info" id="editarPaciente" name="editarPaciente">Crear reserva
                        </button>
                        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancelar</a>
                    </div>
                    </form>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- MODAL EDITAR CAMAS-->