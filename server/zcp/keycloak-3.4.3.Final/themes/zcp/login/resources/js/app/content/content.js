
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
	var lower = pw.search(/[a-z]/ig);
	var upper = pw.search(/[A-Z]/g);
	//var spe = pw.search(/[!@#$%^*_-]/gi);

	if (pw.length < 8 || pw.length > 20) {
		//alert("8자리 ~ 20자리 이내로 입력해주세요.");
		return false;
	}

	if(pw.search(/₩s/) != -1){
	  //alert("비밀번호는 공백업이 입력해주세요.");
	  return false;
	}

	if(num < 0 || lower < 0 || upper < 0 ){
	  //alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	  return false;
	}

	return true;
}
