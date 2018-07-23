
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <h2 class="login-title">비밀번호 수정</h2>
	<div class="member-box">
		<div class="member-form">
			<form id="kc-passwd-update-form" action="${url.loginAction}" method="post" onsubmit="return loginUpdatePasswordValidate();">
				<fieldset>
					<table class="Table Form-type member-tbl">
						<colgroup>
							<col style="width: 220px;">
							<col>
						</colgroup>
						<tbody>
                            <tr>
								<th>새 비밀번호</th>
								<td>
                                    <input type="password" id="password-new" name="password-new" class="Textinput" autofocus autocomplete="new-password" maxlength="20" data-keyfilter-rule="digits|english" data-keyfilter="!@#$%^*_-" data-validation-rule="{required:true, passwordSecuity:true}" data-validation-message="{required:'비밀번호를 입력해 주세요.', passwordSecuity:'알파벳, 특수문자, 숫자를 포함하여 8~20자 사이로 입력하세요.'}">
                                    <p class="color-red" data-for="password-new"></p>
                                </td>
							</tr>
                            <tr>
								<th>비밀번호 확인</th>
								<td>
                                    <input type="password" id="password-confirm" name="password-confirm" class="Textinput" autocomplete="new-password" maxlength="20" data-validation-rule="{required:true, passwordEqual:'testing'}"  data-validation-message="{required:'비밀번호 확인을 입력해 주세요.', passwordEqual:'두개의 비밀번호가 일치하지 않습니다.'}">
                                    <p class="color-red" data-for="password-confirm"></p>
                                </td>
							</tr>
						</tbody>
					</table>
				</fieldset>
			</form>

            <#if message?has_content>
                <p class="alarm-info"><span class="Icon ico-cloudz alarm"></span>${message.summary?no_esc}</p>
            </#if>
		</div>
	</div>
	<div class="btn-wrap__center">
		<button class="Button btn-login gray" onclick="location.href='${url.loginRestartFlowUrl}'">취소</button>
		<button class="Button btn-login" onclick="$('#kc-passwd-update-form').submit();">확인</button>
	</div>

    <script type="text/javascript">
        $.alopex.page(function() {
            this.init = function(id, param) {
                Validator.addMethod('passwordEqual', function(element, value, param) {
                    var passwordNew = $("#password-new").val();

                    if (value === passwordNew) {
                        return true;
                    } else {
                        return false;
                    }
                });

                Validator.addMethod('passwordSecuity', function(element, value, param) {
                    var newPassword = $("#password-new").val();
                    return chkPwd(newPassword);
                });
            };
        });
    </script>
</@layout.registrationLayout>
