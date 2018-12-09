$(document).ready(function(){

    let token=$('input[name=_token]').val();


    $("#frm_ingresar_paciente").submit(function(event){
        event.preventDefault();
      
        let Paciente={
          _token:token
        }

        $.ajax({
            url:"/ingresarPaciente",
            method:'POST',
            dataType:'text',
            data: Paciente
        }).done(function(data,jqXHR,textStatus){
            console.log(data);
            if (parseInt(data)===1)
            {
              swal({
                type:'success',
                title: 'Felicidades el Paciente ha sido ingresado',
                animation: false,
                customClass: 'animated tada'
              }).then((value)=>{
                if(value){
                  location.href="../paciente/index";
                }
              });
            }
            else if(parseInt(data)===0)
            {
              swal({
                type: 'error',
                title: 'Oops...',
                text: '¡Ocurrió un problema al ingresar el usuario!'
              })
            }
        }).fail(function(jqXHR,textStatus){
          console.log(textStatus);
        });
    });

    $('#modalEditarPaciente').on('show.bs.modal',function(event){

        let id=$(event.relatedTarget).data().id;

        $.ajax({
          url:'/obtenerPaciente',
          method:'POST',
          data:{id:id,_token:token},
          dataType:'text'
        }).done(function(data,jqXHR,textStatus){
          console.log(data);
        }).fail(function(textStatus,jqXHR){
          console.log(textStatus);
        });

    });

    $('#frm_editar_paciente').submit(function(event){
      event.preventDefault();

      let Paciente={
        _token:token
      }

      $.ajax({
        url:'/editarPaciente',
        method:'POST',
        data:Paciente,
        dataType:'text'
      }).done(function(data,jqXHR,textStatus){
        console.log(data);
            if (parseInt(data)===1)
            {
              swal({
                type:'success',
                title: 'Felicidades el Paciente ha sido actualizado correctamente',
                animation: false,
                customClass: 'animated tada'
              }).then((value)=>{
                if(value){
                  location.href="../paciente/index";
                }
              });
            }
            else if(parseInt(data)===0)
            {
              swal({
                type: 'error',
                title: 'Oops...',
                text: '¡Ocurrió un problema al editar el paciente!'
              })
          }
      }).fail(function(textStatus,jqXHR){
        console.log(textStatus);
      })
    });

});