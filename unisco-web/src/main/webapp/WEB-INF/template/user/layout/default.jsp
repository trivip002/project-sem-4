<%--
  Created by IntelliJ IDEA.
  User: hugh.intern
  Date: 2/12/2020
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-definition>
    <html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, shrink-to-fit=9">
        <meta name="description" content="Gambolthemes">
        <meta name="author" content="Gambolthemes">
        <title>Cursus - Index</title>
        <stripes:layout-component name="html_user"/>
        <!-- Favicon Icon -->
        <link rel="icon" type="image/png" href="<c:url value='/static/assets/images/fav.png' />" >

        <!-- Stylesheets -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet'>
        <link href="<c:url value='/static/vendor/unicons-2.0.1/css/unicons.css' />" rel='stylesheet'>
        <link href="<c:url value='/static/assets/css/vertical-responsive-menu.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/style.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/responsive.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/night-mode.css' />" rel="stylesheet">

        <!-- Vendor Stylesheets -->
        <link href="<c:url value='/static/vendor/fontawesome-free/css/all.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/OwlCarousel/assets/owl.carousel.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/OwlCarousel/assets/owl.theme.default.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/semantic/semantic.min.css' />" >
    </head>
    <body>
        <stripes:layout-component name="header">
            <jsp:include page="../header.jsp"/>
        </stripes:layout-component>

        <div class="wrapper">
            <stripes:layout-component name="contents"/>
            <stripes:layout-component name="footer">
                <jsp:include page="../footer.jsp"/>
            </stripes:layout-component>
        </div>

        <script src='<c:url value="/static/assets/js/vertical-responsive-menu.min.js"/>'></script>
        <script src='<c:url value="/static/assets/js/jquery-3.3.1.min.js"/>' ></script>
        <script src='<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>' ></script>
        <script src='<c:url value="/static/vendor/OwlCarousel/owl.carousel.js"/>' ></script>
        <script src='<c:url value="/static/vendor/semantic/semantic.min.js"/>' ></script>
        <script src='<c:url value="/static/assets/js/custom.js"/>'></script>
        <script src='<c:url value="/static/assets/js/night-mode.js"/>' ></script>
    </body>
    </html>
</stripes:layout-definition>

