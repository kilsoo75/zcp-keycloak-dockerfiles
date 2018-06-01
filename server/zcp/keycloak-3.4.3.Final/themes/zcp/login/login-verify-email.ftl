<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <h2 class="login-title">이메일 인증</h2>
    <div class="login-box">
        <p class="session-text__md">메일함을 확인해 주세요.</p>
        <div class="session-text__box email">
            <p class="session-text__inbox">이메일 인증을 위하여 입력한 이메일 주소로 메일이 발송되었습니다.<br>
            <span class="color-red">만일 메일이 도착하지 않았다면 재발송 요청하세요.</p>
            </span>
        </div>
    </div>
    <div class="btn-wrap__center">
        <button class="Button btn-login gray" onclick="location.href='${url.loginRestartFlowUrl}'">로그인</button>
        <button class="Button btn-login gray" onclick="location.href='${url.loginAction}'">재발송 요청</button>
    </div>
</@layout.registrationLayout>
