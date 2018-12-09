$(document).ready(function () {

    console.log('jquery');

    $('.bed-gray').on('click', function (event) {
        let id = $(event.target).data().id;
        $('#modalCamaOcupada').modal('show');
    });

    $('.bed-green').on('click', function (event) {
        console.log('modal');
        $('#modalIngresarPacienteCama').modal('show');

    });

    $('.bed-yellow').on('click', function (event) {
        let id = $(event.target).data().id;
        location.href = '../../reservas/index';
    });

    $('.bed-red').on('click', function (event) {
        swal({
            type: 'error',
            title: 'Oops...',
            text: 'Esta cama esta actualmente en mantenimiento !'
        });
    });
});
