
function registerValidate() {
    var usernameValid = $('#username').validate();
    var firstNameValid = $('#firstName').validate();
    var lastNameValid = $('#lastName').validate();
    var emailValid = $('#email').validate();
    var passwordValid = $('#password').validate();
    var passwordConfirmValid = $('#password-confirm').validate();

    // if (passwordValid) {
    //     var password = $('#password').val();
    //     var passwordConfirm = $('#password-confirm').val();
    //
    //     if (password === passwordConfirm) {
    //         $('#password_valid').text('');
    //         passwordConfirmValid = true;
    //     } else {
    //         $('#password_valid').text('두개의 비밀번호가 일치하지 않습니다.');
    //         passwordConfirmValid = false;
    //     }
    // }

    if (usernameValid && usernameValid  && firstNameValid && lastNameValid && emailValid && passwordValid && passwordConfirmValid) {
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
