<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>CloudZ CP</title>
    <link rel="icon" href="${url.resourcesPath}/images/favicon_zcp.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="login">
    <div class="cp-wrapper">
    	<!-- header -->
    	<header class="cp-header">
    		<h1 class="logo"><img src="${url.resourcesPath}/images/cloudzcp-logo.png" alt="CLOUD Z Container Platform" onclick="location.href='https://console.cloudzcp.io/k8s-login'"></h1>
    	</header>
    	<!-- //header -->
    	<!-- main-contents -->
    	<div class="login-wrap">
            <#nested "form">
    	</div>
    	<!-- //main-contents -->
    </div>
</body>
</html>
</#macro>
