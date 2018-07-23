<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <div class="login-box">
        <#if message?has_content>
            <p class="session-text__lg">${message.summary?no_esc}</p>
        </#if>
    </div>

    <#if client?? && client.baseUrl?has_content>
        <div class="btn-wrap__center"><button class="Button btn-login gray" onclick="location.href='${client.baseUrl}">${msg("backToApplication")?no_esc}</button></div>
    </#if>
</@layout.registrationLayout>
