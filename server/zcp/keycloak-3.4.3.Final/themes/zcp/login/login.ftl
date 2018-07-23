<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <!--login contents-->
    <h2 class="login-title">로그인</h2>
    <div class="login-box">
        <form id="kc-form-login" onsubmit="return true;" action="${url.loginAction}" method="post">
            <fieldset>
                <dl class="login-form">
                    <dt>
                        아이디
                        <!--
                        <#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>
                        -->
                    </dt>
                    <dd>
                        <#if usernameEditDisabled??>
                            <input tabindex="1" id="username" name="username" value="${(login.username!'')}" class="Textinput" placeholder="" disabled>
                        <#else>
                            <input tabindex="1" id="username" name="username" value="${(login.username!'')}" class="Textinput" placeholder="" autofocus autocomplete="off">
                        </#if>
                    </dd>
                    <dt>비밀번호</dt>
                    <dd><input tabindex="2" id="password" name="password" class="Textinput" type="password" placeholder="" autocomplete="off"></dd>

                    <#if realm.rememberMe && !usernameEditDisabled??>
                        <dd class="idsave"><label class="ImageCheckbox" id="checkTest03">
                                <input tabindex="3" class="Checkbox" type="checkbox" name="chk1" value = "check1" checked="checked">
                                아이디저장
                            </label>
                        </dd>
                    </#if>

                    <#if message?has_content>
                        <dd class="pwinfo" >${message.summary?no_esc}</dd>
                    </#if>
                </dl>
            </fieldset>
        </form>
    </div>
    <div class="btn-wrap__center"><button tabindex="4" class="Button btn-login" onclick="javascript:login()">로그인</button></div>
    <!--//login contents-->
    <div class="login-menu">
        <ul class="login-list">
            <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <li>
                <p class="list-text">서비스 이용을 위한<br>계정이 아직 없으신가요?</p>
                <button class="Button btn-makeid" onclick="location.href='${url.registrationUrl}'" >계정만들기</button>
            </li>
            </#if>

            <#if realm.resetPasswordAllowed>
            <li>
                <p class="list-text">비밀번호가<br>생각나지 않으세요?</p>
                <button class="Button btn-makeid" onclick="location.href='${url.loginResetCredentialsUrl}'">비밀번호 찾기</button>
            </li>
            </#if>

            <li>
                <p class="list-text">서비스 이용에<br>도움이 필요하신가요?</p>
                <button class="Button btn-makeid">문의 및 지원</button>
            </li>
        </ul>
    </div>

    <script type="text/javascript">
        $.alopex.page(function() {
            this.init = function(id, param) {
                $("#password").keyup(function(e) {
                    if(e.keyCode == 13) {
                        var username = $.trim($('#username').val());
                        var password = $.trim($('#password').val());

                        if (username.length !==0 && password.length !== 0) {
                            $('#kc-form-login').submit();
                        }
                    }
                });
            };
        });

        var isLoginSubmit = false;
        function login() {
            console.log(' isLoginSubmit : ' + isLoginSubmit);
            if (!isLoginSubmit) {
                $('#kc-form-login').submit();
                //isLoginSubmit = true;
            }
        }
    </script>

</@layout.registrationLayout>
