
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <h2 class="login-title">모바일 인증</h2>
    <div class="login-box">
        <p class="session-text__md">모바일 인증번호를 입력해주십시오!</p>
        <div class="session-text__box">
            <p class="session-text__inbox">보다 강력한 보안을 위하여 이중 로그인 인증을 진행합니다.<br>모바일 인증용 앱을 실행하여 인증번호를 입력해 주십시오.</p>
        </div>
        <form id="kc-totp-login-form" action="${url.loginAction}" method="post">
            <fieldset>
                <dl class="login-form email">
                    <dt>인증번호</dt>
                    <dd><input  type="text" id="totp" name="totp" autocomplete="off"class="Textinput" placeholder="인증번호를 입력해주세요." autofocus></dd>

                    <#if message?has_content>
                        <dd class="pwinfo">${message.summary?no_esc}</dd>
                    </#if>
                </dl>
            </fieldset>
        </form>
    </div>
    <div class="btn-wrap__center">
        <button class="Button btn-login gray" name="cancel" id="kc-cancel" onclick="location.href='${url.loginRestartFlowUrl}'">취소</button>
        <button class="Button btn-login" name="login" id="kc-login" onclick="$('#kc-totp-login-form').submit();">로그인</button>
    </div>
</@layout.registrationLayout>
