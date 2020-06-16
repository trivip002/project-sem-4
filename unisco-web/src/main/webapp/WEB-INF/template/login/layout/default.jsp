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

        <!-- Favicon Icon -->
        <link rel="icon" type="image/png"  href="<c:url value='/static/assets/images/fav.png' />" />

        <!-- Stylesheets -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet'>
        <link href="<c:url value='/static/vendor/unicons-2.0.1/css/unicons.css' />" rel='stylesheet'>
        <link href="<c:url value='/static/assets/css/vertical-responsive-menu.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/style.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/responsive.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/night-mode.css' />" rel="stylesheet">

        <!-- Vendor Stylesheets -->
        <link href="<c:url value='/static/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/fontawesome-free/css/all.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/OwlCarousel/assets/owl.carousel.css' />" rel="stylesheet" >
        <link href="<c:url value='/static/vendor/OwlCarousel/assets/owl.theme.default.min.css' />" rel="stylesheet" >
        <link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/semantic/semantic.min.css' />"  >
    </head>
    <body>

        <stripes:layout-component name="contents"/>

        <script src='<c:url value="/static/assets/js/jquery-3.3.1.min.js"/>'></script>
        <script src='<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
        <script src='<c:url value="/static/vendor/OwlCarousel/owl.carousel.js"/>'></script>
        <script src='<c:url value="/static/vendor/semantic/semantic.min.js"/>'></script>
        <script src='<c:url value="/static/assets/js/custom.js"/>'></script>
        <script src='<c:url value="/static/assets/js/night-mode.js"/>'></script>
    </body>
    </html>
</stripes:layout-definition>

