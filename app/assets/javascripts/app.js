$(document).ready(function(){

  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    language: 'pt-BR'
  });

  $('[data-provider="summernote"]').each(function(){
    $(this).summernote({
      height: 300
    });
  });

  $('[data-toggle="tooltip"]').tooltip()

  $(".chosen-select").chosen({no_results_text: "Oops, não encontrado!"});

  $(function() {
    var flashCallback;

    flashCallback = function() {
        return $(".alert").fadeOut();
    };

    $(".alert").bind('click', (function(_this) {
      return function(ev) {
        return $(".alert").fadeOut();
      };
    })(this));

    return setTimeout(flashCallback, 2500);
  });


});

