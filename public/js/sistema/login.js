$(document).ready(function () {

    $('#frm-login').submit(function (event) {
        event.preventDefault();
        const toast = swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });

        let nombres = "";
        let apellidos = "";
        let usuario = $('#usuario').val();
        let contrasena = $('#contrasena').val();

        $.ajax({
            url: 'usuarios/login',
            method: 'POST',
            data: { usuario: usuario, contrasena: contrasena },
            dataType: 'json'
        }).done(function (data, jqXHR, textStatus) {
            console.log(data);
            if (parseInt(data.estado) === 1) 
            {
                toast({
                    type: 'success',
                    title: 'Bienvenido/a ' + data.nombres + ' ' + data.apellidos
                })
                setTimeout(function () {
                    location.href = "usuarios/index";
                }, 1000);
            }
            else if (parseInt(data.estado) === 0) 
            {
                toast({
                    type: 'error',
                    title: 'Usuario o contraseña incorrectas'
                })
            }
        }).fail(function (data,jqXHR, textStatus){
            console.log(data);
        });
    });
    
});