$(document).ready(function(){

  $('.date-mask').mask('00/00/0000');
  $('.cep-mask').mask('00000-000');
  $('.cpf-mask').mask('000.000.000-00', {reverse: true});
  $('.cnpj-mask').mask('00.000.000/0000-00', {reverse: true});

  var SPMaskBehavior = function (val) {
    return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
  },

  spOptions = {
    onKeyPress: function(val, e, field, options) {
        field.mask(SPMaskBehavior.apply({}, arguments), options);
      }
  };

  $('.phone-mask').mask(SPMaskBehavior, spOptions);


<<<<<<< HEAD
  $('form').submit(function() {
=======
  $('#new_customer').submit(function() {
>>>>>>> df5741926067601d9d61d28aadcea8e8b7c37b02
    $('.phone-mask').unmask();
    $('.cnpj-mask').unmask();
  });

});
