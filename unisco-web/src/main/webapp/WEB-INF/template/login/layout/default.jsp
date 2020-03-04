<%--
  Created by IntelliJ IDEA.
  User: trivip002
  Date: 2/19/2020
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-definition>
    <html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>${pageTitle}</title>
        <stripes:layout-component name="html_login"/>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/fontawesome-free/css/all.min.css' />" />
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css' />" />
        <!-- Theme style -->
        <link rel="stylesheet" href="<c:url value='/static/admin/dist/css/adminlte.min.css' />" />
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    </head>
    <body class="hold-transition login-page">

        <stripes:layout-component name="contents"/>

        <!-- jQuery -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jquery/jquery.min.js"/>'></script>
        <!-- Bootstrap 4 -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
        <!-- AdminLTE App -->
        <script type='text/javascript' src='<c:url value="/static/admin/dist/js/adminlte.min.js"/>'></script>
    </body>
    </html>
</stripes:layout-definition>

