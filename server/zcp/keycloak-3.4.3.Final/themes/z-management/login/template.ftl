<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="robots" content="noindex, nofollow">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>Z-Management</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon_zcp.ico" />

    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700&display=swap&subset=korean" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/@coreui/icons/css/coreui-icons.min.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/ion-rangeslider/css/ion.rangeSlider.min.css" rel="stylesheet">
    <!-- Main styles for this application-->
    <link href="${url.resourcesPath}/css/style-dark.css" rel="stylesheet">
    <link href="${url.resourcesPath}/vendors/pace-progress/css/pace.min.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/daterangepicker/css/daterangepicker.css" rel="stylesheet">
    <link href="${url.resourcesPath}/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">
    <link href="${url.resourcesPath}/css/style-custom.css" rel="stylesheet">
</head>

<body class="app flex-row align-items-center">
    <#nested "form">

    <script src="${url.resourcesPath}/node_modules/jquery/dist/jquery.min.js"></script>
</body>
</html>
</#macro>
