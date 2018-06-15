
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <h2 class="login-title">계정 정보 수정</h2>
	<div class="member-box">
		<div class="member-form">
			<form id="kc-update-profile-form" action="${url.loginAction}" method="post" onsubmit="return loginUpdateProfileValidate();">
                <input type="hidden" id="lastName" name="lastName" value="${(user.lastName!'')}" >

				<fieldset>
					<table class="Table Form-type member-tbl">
						<colgroup>
							<col style="width: 220px;">
							<col>
						</colgroup>
						<tbody>
                            <#if user.editUsernameAllowed>
							<tr>
								<th>아이디</th>
								<td>
									<input type="text" id="username" name="username" value="${(user.username!'')}"  class="Textinput" data-validation-rule="{required:true}" data-validation-message="{required:'아이디를 입력해 주세요.'}">
                                    <p class="color-red" data-for="username"></p>
								</td>
							</tr>
                            </#if>

                            <tr>
								<th>이메일</th>
								<td>
                                    <input type="text" id="email" name="email" value="${(user.email!'')}" class="Textinput" data-validation-rule="{required:true, email:true}" data-validation-message="{required:'이메일을 입력해 주세요.'}">
                                    <p class="color-red" data-for="email"></p>
                                </td>
							</tr>
                            <tr>
								<th>이름</th>
								<td>
                                    <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')}" class="Textinput" data-validation-rule="{required:true}" data-validation-message="{required:'이름을 입력해 주세요.'}">
                                    <p class="color-red" data-for="firstName"></p>
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
		<button class="Button btn-login" onclick="$('#kc-update-profile-form').submit();">확인</button>
	</div>
</@layout.registrationLayout>
