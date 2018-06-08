<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <h2 class="login-title">정보</h2>
    <div class="login-box">
        <p class="session-text__lg">${message.summary}</p>
        <#if requiredActions??>
            <#list requiredActions>:
                <p class="session-text__sm"><b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></p>
            </#list>
        <#else>
        </#if>
    </div>

    <#if skipLink??>
    
    <#else>
        <#if pageRedirectUri??>
            <div class="btn-wrap__center"><button class="Button btn-login gray" onclick="location.href='${pageRedirectUri}'">${msg("backToApplication")?no_esc}</button></div>
        <#elseif actionUri??>
            <div class="btn-wrap__center"><button class="Button btn-login gray" onclick="location.href='${actionUri}'">${msg("proceedWithAction")?no_esc}</button></div>
        <#elseif client.baseUrl??>
            <div class="btn-wrap__center"><button class="Button btn-login gray" onclick="location.href='${client.baseUrl}'">${msg("backToApplication")?no_esc}</button></div>
        </#if>
    </#if>
</@layout.registrationLayout>
