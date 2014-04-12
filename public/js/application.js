$(document).ready(function() {

//Errors for Create User page (might work for other forms)
  $(function() {
      $('.error').hide();
      $(".button").click(function() {

          $('.error').hide();
          var name = $("input#name").val();
            if (name == "") {
            $("label#name-error").show();
            $("input#name").focus();
            return false;
          }

          var deck_name = $("input#email").val();
            if (deck_name == "") {
            $("label#email-error").show();
            $("input#email").focus();
            return false;
          }

            var password = $("input#password").val();
            if (password == "") {
            $("label#password-error").show();
            $("input#password").focus();
            return false;
          }

          var password = $("input#password-confirmation").val();
            if (password == "") {
            $("label#password-confirmation-error").show();
            $("input#password-confirmation").focus();
            return false;
          }

    });
  });



});
