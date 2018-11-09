$(document).ready(function(){
  $(".contact__form").submit(function(){
    $.ajax({
      url: $('.contact__form').attr('action'),
      type: 'POST',
      data : {
        name : $('#sender_name').val(),
        email : $('#sender_email').val(),
        message : $('#message_content').val(),
      }
    }).done(function() {
      toastr.success('Correo enviado :)');
    })
    .fail(function(data) {
      toastr.error('Correo no enviado :/');
    })
    .always(function() {

    });
    return false;
  });
});
