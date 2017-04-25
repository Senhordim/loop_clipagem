$(document).ready(function(){

  // datepicker
  $('.date-picker').datepicker({
    format: 'dd/mm/yyyy',
    language: 'pt-BR'
  });

  // summernote
  $('[data-provider="summernote"]').each(function(){
    $(this).summernote({
      height: 300
    });
  });

  // Tooltip
  $('[data-toggle="tooltip"]').tooltip()

  // Chosen select
  $(".chosen-select").chosen({no_results_text: "Oops, não encontrado!"});

  // Flash alert
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

  // Media player
  $('video').mediaelementplayer({
    alwaysShowControls: false,
    videoVolume: 'horizontal',
    features: ['playpause','progress','volume','fullscreen']
  });
  $('audio').mediaelementplayer({
    alwaysShowControls: false,
    audioVolume: 'horizontal',
    features: ['playpause','progress','volume','fullscreen']
  });


});

