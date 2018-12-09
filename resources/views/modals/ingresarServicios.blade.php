<!--*************************MODAL INGRESAR SERVICIOS*******************************-->
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
            @csrf
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
<!--********************************MODAL INGRESAR SERVICIOS******************************-->
