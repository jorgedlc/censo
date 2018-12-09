$(document).ready(function(){

  let token=$('input[name=_token]').val();

    $('#frm_ingresar_usuario').submit(function(event){

      event.preventDefault();

      let usuario=$('#usuario').val();
      let clave=$('#clave').val();
      let conf_clave=$('#conf_clave').val();
      let nombres=$('#nombres').val();
      let apellidos=$('#apellidos').val();
      let id_especialidad=$('#id_especialidad').val();
      let id_tipo_usuario=$('#id_tipo_usuario').val();


      let Usuario={
        _token:token,
        usuario,
        clave,
        nombres,
        apellidos,
        id_especialidad,
        id_tipo_usuario
      }


      $.ajax({
        url:'/ingresarUsuarios',
        method:'POST',
        data:Usuario,
        dataType:'text'
      }).done(function(data,jqXHR,textStatus){
        console.log(data);
      }).fail(function(textStatus,jqXHR){
        console.log(textStatus);
      })

    });

    $('#frm_editar_usuario').submit(function(event){
      event.preventDefault();

      let ed_id_usuario=$('#ed_id_usuario').val();
      let edusuario=$('#edusuario').val();
      let ednombres=$('#ednombres').val();
      let edapellidos=$('#edapellidos').val();
      let ed_id_especialidad=$('#ed_id_especialidad').val();
      let ed_id_tipo_usuario=$('#ed_id_tipo_usuario').val();
      let edestado=$('#edestado').val();

      let Usuario={
        _token:token,
        ed_id_usuario,
        edusuario,
        ednombres,
        edapellidos,
        ed_id_especialidad,
        ed_id_tipo_usuario,
        edestado
      };

      $.ajax({  
        url:'/editarUsuarios',
        data:Usuario,
        dataType:'text',
        method:'POST'
      }).done(function(data,textStatus,jqXHR){
        console.log(data);
      }).fail(function(jqXHR,textStatus){
        console.log(textStatus);
      })

    });

    $('#modalEditarUsuario').on('show.bs.modal',function(event){

      let idUsuario=$(event.relatedTarget).data().id;

      $.ajax({
        url:'/obtenerUsuario',
        data:{
          idUsuario,
          _token:token
        },
        dataType:'text',
        method:'POST'
      }).done(function(data,jqXHR,textStatus){
        console.log(data);
      }).fail(function(textStatus,jqXHR){
        console.log(textStatus);
      });
    });

});

