<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card-group">
                    <div class="card p-4">
                        <div class="card-body">
                            <h1 class="display-tit"><img src="${url.resourcesPath}/img/brand/logo.svg" width="100" alt="Z-Management"> Login</h1>
                            <p class="text-muted">원활한 서비스 이용을 위해 로그인이 필요합니다.</p>

                            <form id="kc-form-login" onsubmit="return true;" action="${url.loginAction}" method="post">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon-user"></i>
                                    </span>
                                </div>

                                <#if usernameEditDisabled??>
                                    <input type="text" tabindex="1" id="username" name="username" value="${(login.username!'')}" class="form-control" placeholder="ID" disabled>
                                <#else>
                                    <input type="text" tabindex="1" id="username" name="username" value="${(login.username!'')}" class="form-control" placeholder="ID" autofocus autocomplete="off">
                                </#if>
                            </div>
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon-lock"></i>
                                    </span>
                                </div>
                                <input type="password" tabindex="2" id="password" name="password" class="form-control" onkeyup="loginKeyUp(this)" placeholder="Password" autocomplete="off">
                            </div>
                            </form>

                            <#if message?has_content>
                            <p class="text-muted"><font color="#C24641">${message.summary?no_esc}</font></p>
                            </#if>

                            <div class="row">
                                <div class="col-4">
                                    <button class="btn btn-primary px-4" type="button" onclick="javascript:login()">Login</button>
                                </div>
                                <div class="col-8 text-right">
                                    <button class="btn btn-dark" type="button" data-toggle="modal">비밀번호 찾기</button>
                                    <button class="btn btn-dark ml-1" type="button" data-toggle="modal">ID 찾기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var isLoginSubmit = false;
        function login() {
            if (isLoginSubmit) {
                return false;
            }

            var username = $.trim($('#username').val());
            var password = $.trim($('#password').val());

            if (username.length !==0 && password.length !== 0) {
                $('#kc-form-login').submit();
                isLoginSubmit = true;
            }
        }

        function loginKeyUp(e) {
            if (window.event.keyCode == 13) {
                var username = $.trim($('#username').val());
                var password = $.trim($('#password').val());

                if (username.length !==0 && password.length !== 0) {
                    $('#kc-form-login').submit();
                }
            }
        }
    </script>

</@layout.registrationLayout>
