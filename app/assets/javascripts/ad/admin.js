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

$(".chosen-select").chosen({no_results_text: "Oops, não encontrado!"});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});

$('[data-provider="summernote"]').each(function(){
  $(this).summernote({
    height: 300
  });
})


