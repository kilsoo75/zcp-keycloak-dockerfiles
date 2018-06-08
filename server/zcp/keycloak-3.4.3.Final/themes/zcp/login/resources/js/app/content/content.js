
function registerValidate() {
    var usernameValid = $('#username').validate();
    var firstNameValid = $('#firstName').validate();
    var lastNameValid = $('#lastName').validate();
    var emailValid = $('#email').validate();
    var passwordValid = $('#password').validate();
    var passwordConfirmValid = $('#password-confirm').validate();

    if (usernameValid && usernameValid  && firstNameValid && lastNameValid && emailValid && passwordValid && passwordConfirmValid) {
        return true;
    } else {
        return false;
    }
}

function loginUpdateProfileValidate() {
    var usernameValid = $('#username').validate();
    var firstNameValid = $('#firstName').validate();
    var lastNameValid = $('#lastName').validate();
    var emailValid = $('#email').validate();

    if (usernameValid && usernameValid  && firstNameValid && lastNameValid && emailValid) {
        return true;
    } else {
        return false;
    }
}

function loginUpdatePasswordValidate() {
    var passwordNewValid = $('#password-new').validate();
    var passwordConfirmValid = $('#password-confirm').validate();

    if (passwordNewValid && passwordConfirmValid) {
        return true;
    } else {
        return false;
    }
}

function loginResetPasswordValidate() {
    $('#btnPwd').click(function() {
        var validate = $('#username').validate();

        if (validate) {
            $('#kc-reset-password-form').submit();
        }
    });
}
