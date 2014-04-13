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

    $("#user-name-edit").editInPlace({
      url: "/users/:id"
    });

    $("#user-email-edit").editInPlace({
      url: "/users/:id"
    });

    $("#login-form").on('submit', function(event) {
      var formData = $("form#login-form").serialize();
      event.preventDefault();
        $.post("/login", formData, function(response) {
            if(response === "error") {
              $("label#login-error").show();
              $("input[name='email']").focus();
              return false;
            }
            else  {
              location.href = "/users/"+ response;
            }
        });
    });

    $("#user-creation-form").on('submit', function(event) {
      var formData = $("form#user-creation-form").serialize();
      event.preventDefault();
        $.post("/users", formData, function(response) {
            if(response === "error") {
              $("label#user-creation-input-error").show();
              $("input#name").focus();
              return false;
            }
            else  {
              location.href = "/users/"+ response;
            }
        });
    });


});
