$(document).ready(function(){
    
  let token=$('input[name=_token]');

  $('#modalEditarEspecialidad').on('show.bs.modal',function(event){
    let idEspecialidad=$(event.relatedTarget).data().id;


    $.ajax({
      url:'/obtenerEspecialidad',
      data:idEspecialidad,
      method:'POST',
      dataType:'text'
    }).done(function(data,textStatus,jqXHR){
      console.log(data);
    }).fail(function(jqXHR,textStatus){
      console.log(textStatus)
    })


  });

  $('#frm_ingresar_especialidades').submit(function(event){

    let especialidad=$('#especialidad').val();
    let id_estado=$('#id_estado').val();
        

    let Especialidad={
      _token:token,
      especialidad,
      id_estado
    }

    $.ajax({
      url:'/ingresarEspecialidad',
      method:'POST',
      data:Especialidad,
      dataType:'text'
    }).done(function(data,textStatus,jqXHR){
      console.log(data);
    }).fail(function(textStatus,jqXHR){
      console.log(textStatus);
    });

  })

  $('#frm_editar_especialidad').submit(function(event){


    let ed_id_especialidad=$('#ed_id_especialidad').val();
    let edestado=$('#edestado').val();


    let Especialidad={
      _token:token,
      ed_id_especialidad,
      edestado
    }

    $.ajax({
      url:'/editarEspecialidad',
      method:'POST',
      data:Especialidad,
      dataType:'text'
    }).done(function(data,textStatus,jqXHR){
      console.log(data);
    }).fail(function(textStatus,jqXHR){
      console.log(textStatus);
    });

  })


});
