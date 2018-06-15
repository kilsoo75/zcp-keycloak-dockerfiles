
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <h2 class="login-title">모바일 인증 설정</h2>
    <div class="member-box">
        <div class="member-title__wrap">
            <p class="member-title">이중 인증을 통한 보다 강력한 보안을 위하여 모바일 인증을 설정합니다.<br>아래 순서에 따라 진행해 주세요.</p>
        </div>
        <div class="member-form">
            <form action="${url.loginAction}" id="kc-totp-settings-form" method="post">
                <fieldset>
                    <table class="Table Form-type member-tbl mobile-config">
                        <colgroup>
                            <col style="width: 220px;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><span class="ico-num">1</span>단계</th>
                                <td><a href="https://freeotp.github.io/" target="_blank" class="blank-link">FreeOTP</a>또는 Google Authenticator 앱을<br> Google Play 또는 Apple App Store에서 다운받아 휴대폰에 설치합니다.</td>
                            </tr>

                            <#if mode?? && mode = "manual">
                            <tr>
                                <th><span class="ico-num">2</span>단계</th>
                                <td>앱을 열어 아래의 바코드를 스캔하거나 바코드 아래의 키를 입력합니다.
                                    <p>${totp.totpSecretEncoded}</p>
                                    <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("loginTotpScanBarcode")}</a></p>
                                </td>
                            </tr>
                            <#else>
                            <tr>
                                <th><span class="ico-num">2</span>단계</th>
                                <td>앱을 열어 아래의 바코드를 스캔하거나 바코드 아래의 키를 입력합니다.
                                    <p class="qr"><img id="kc-totp-secret-qr-code" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"></p>
                                    <p><a href="${totp.manualUrl}" id="mode-manual">${msg("loginTotpUnableToScan")}</a></p>
                                </td>
                            </tr>
                            </#if>

                            <tr>
                                <th><span class="ico-num">3</span>단계</th>
                                <td>앱 화면에 생성된 인증번호를 입력하고 확인버튼을 누르면 설정이 완료됩니다.
                                    <input type="text" id="totp" name="totp" autocomplete="off" class="Textinput">
                                    <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />

                                    <#if message?has_content>
                                        <p class="color-red">${message.summary?no_esc}</p>
                                    </#if>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
            </form>
        </div>
    </div>
    <div class="btn-wrap__center">
        <button class="Button btn-login gray" onclick="location.href='${url.loginRestartFlowUrl}'">취소</button>
        <button class="Button btn-login" onclick="$('#kc-totp-settings-form').submit();">확인</button>
    </div>
</@layout.registrationLayout>
