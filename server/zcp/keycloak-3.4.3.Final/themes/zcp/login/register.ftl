
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <h2 class="login-title">사용 신청</h2>
    <div class="member-box">
        <div class="member-title__wrap">
            <p class="member-title">회원정보를 입력해 주세요.</p>
            <p class="aster-info"><strong class="color-red">*</strong> 표시항목은 필수 입력 항목입니다.</p>
        </div>
        <div class="member-form">
            <form id="kc-register-form" method="post" action="${url.registrationAction}" onsubmit="return registerValidate();">
                <fieldset>
                    <table class="Table Form-type member-tbl">
                        <colgroup>
                            <col style="width: 220px;">
                            <col>
                        </colgroup>
                        <tbody>
                            <#if !realm.registrationEmailAsUsername>
                            <tr>
								<th><strong class="astertisk">*</strong>아이디</th>
								<td>
                                    <input type="text" id="username"  name="username" value="${(register.formData.username!'')}" autocomplete="username" class="Textinput" placeholder="" data-validation-rule="{required:true}" data-validation-message="{required:'아이디를 입력해주세요.'}">
                                    <p class="color-red" data-for="username"></p>
                                </td>
							</tr>
                            </#if>

                            <tr>
                                <th><strong class="astertisk">*</strong>성</th>
                                <td>
                                    <input type="text" id="firstName" name="firstName" value="${(register.formData.firstName!'')}" class="Textinput" placeholder="" data-validation-rule="{required:true}" data-validation-message="{required:'성을 입력해주세요.'}">
                                    <p class="color-red" data-for="firstName"></p>
                                </td>
                            </tr>
                            <tr >
                                <th><strong class="astertisk">*</strong>이름</th>
                                <td>
                                    <input type="text" id="lastName" name="lastName" value="${(register.formData.lastName!'')}" class="Textinput" placeholder="" data-validation-rule="{required:true}" data-validation-message="{required:'이름을 입력해주세요.'}">
                                    <p class="color-red" data-for="lastName"></p>
                                </td>
                            </tr>
                            <tr>
                                <th><strong class="astertisk">*</strong>이메일</th>
                                <td>
                                    <input type="text" id="email" name="email" value="${(register.formData.email!'')}" autocomplete="email" class="Textinput" placeholder="" data-validation-rule="{required:true, email:true}" data-validation-message="{required:'이메일을 입력해 주세요.'}">
                                    <p class="color-red" data-for="email"></p>
                                </td>
                            </tr>

                            <#if passwordRequired>
                            <tr>
                                <th><strong class="astertisk">*</strong>비밀번호</th>
                                <td>
                                    <input type="password" id="password" name="password" autocomplete="new-password" class="Textinput" placeholder="" data-validation-rule="{required:true, rangelength:[6,8], numalpha:true}" data-validation-message="{required:'비밀번호를 입력해 주세요.'}">
                                    <p class="color-red" data-for="password"></p>
                                </td>
                            </tr>
                            <tr>
                                <th>비밀번호 확인</th>
                                <td>
                                    <input type="password" id="password-confirm" name="password-confirm" class="Textinput" >
                                    <p class="color-red" id="password_valid"></p>
                                </td>
                            </tr>
                            </#if>

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
        <button class="Button btn-login gray" onclick="location.href='${url.loginUrl}'">취소</button>
        <button class="Button btn-login" id="btnRegister" onclick="$('#kc-register-form').submit();">가입하기</button>
    </div>
</@layout.registrationLayout>
