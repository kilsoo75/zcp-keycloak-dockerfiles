
function registerValidate() {
    var usernameValid = $('#username').validate();
    var firstNameValid = $('#firstName').validate();
    var emailValid = $('#email').validate();
    var passwordValid = $('#password').validate();
    var passwordConfirmValid = $('#password-confirm').validate();
    $('#lastName').val($('#firstName').val());

    if (usernameValid && usernameValid  && firstNameValid && emailValid && passwordValid && passwordConfirmValid) {
        return true;
    } else {
        return false;
    }
}

function loginUpdateProfileValidate() {
    var usernameValid = $('#username').validate();
    var firstNameValid = $('#firstName').validate();
    var emailValid = $('#email').validate();
    $('#lastName').val($('#firstName').val());

    if (usernameValid && firstNameValid && emailValid) {
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

function chkPwd(str) {
	var pw = str;
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);
	var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	if (pw.length < 8 || pw.length > 20) {
		return false;
	}

	if(pw.search(/₩s/) != -1){
	  return false;
	}

	if(num < 0 || eng < 0 || spe < 0 ){
	  return false;
	}

	return true;
}
