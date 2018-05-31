<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
	<h2 class="login-title">세션 종료</h2>
	<div class="login-box">
		<p class="session-text__lg">세션이 종료되었습니다.</p>
		<p class="session-text__sm">로그인을 다시 진행해 주십시오.</p>
	</div>
	<div class="btn-wrap__center">
        <button class="Button btn-login gray" onclick="location.href='${url.loginAction}'">로그인</button>
    </div>
</@layout.registrationLayout>
