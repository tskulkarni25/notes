$(document).ready(function() {
  $(".modal").on("show.bs.modal", function() {
    $(this).find('form').trigger('reset');
  });

  $(".delay-3s-fadeout").delay(3000).fadeOut('slow');
  $(".delay-10s-fadeout").delay(10000).fadeOut('slow');
});