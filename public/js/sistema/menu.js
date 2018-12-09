$(document).ready(function (){
    $("div").click(function (event) {
        $('#navigation a').removeClass();
        $(this).parent().addClass('list-group-item active list-group-item-action waves-effect');
    });
})