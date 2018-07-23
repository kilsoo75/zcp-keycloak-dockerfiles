<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <!--login contents-->
	<h2 class="login-title">비밀번호 찾기</h2>
	<div class="login-box">
		<p class="session-text__md">비밀번호가 생각나지 않으세요?</p>
		<div class="session-text__box">
			<p class="session-text__inbox">비밀번호 재설정을 위한 이메일을 발송해 드립니다.<br>아래 입력한 이메일 주소는 회원정보에 등록된 이메일 주소와 반드시 같아야 합니다.</p>
		</div>
		<form id="kc-reset-password-form" action="${url.loginAction}" method="post">
			<fieldset>
				<dl class="login-form email">
					<dt>이메일 주소</dt>
					<dd><input type="text" id="username" name="username" class="Textinput" maxlength="100" data-keyfilter-rule="email" data-validation-rule="{required : true, email: true}" data-validation-message="{required:'이메일을 입력해 주세요.'}" autofocus ></dd>
					<dd class="pwinfo" data-for="username"></dd>
				</dl>
			</fieldset>
		</form>
	</div>
	<div class="btn-wrap__center">
		<button class="Button btn-login gray" onclick="location.href='${url.loginUrl}'">취소</button>
		<button class="Button btn-login" id="btnPwd">확인</button>
	</div>
	<!--//login contents-->

    <script type="text/javascript">
        $.alopex.page(function() {
            this.init = function(id, param) {
                $a.keyfilter.addKeyUpRegexpRule("email", "a-zA-Z0-9@._-");
                loginResetPasswordValidate();
            };
        });
    </script>
</@layout.registrationLayout>
