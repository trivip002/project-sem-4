<%--
  Created by IntelliJ IDEA.
  User: trivip002
  Date: 2/16/2020
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/login/layout/default.jsp" pageTitle="Failed page">
    <stripes:layout-component name="contents">
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Failed page</title>
        </head>
        <div class="sign_in_up_bg">
            <div class="container">
                <div class="row justify-content-lg-center justify-content-md-center">
                    <div class="col-lg-12">
                        <div class="main_logo25" id="logo">
                            <a><img src="<c:url value='/static/assets/images/logo.svg' />" alt=""></a>
                        </div>
                        <div class="col-lg-6 col-md-8">
                            <h2> Dear <strong>${user}</strong>Your Action Have Failed.</h2>
                            <a href="<c:url value="/" />">Back to Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>
</html>