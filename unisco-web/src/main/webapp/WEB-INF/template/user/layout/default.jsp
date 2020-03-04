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
        <title>Title</title>
        <stripes:layout-component name="html_user"/>
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jquery/jquery.min.js"/>'></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <script type='text/javascript' src='<c:url value="/static/assets/js/socket.js"/>'></script>
    </head>
    <body>
        <stripes:layout-component name="header">
            <jsp:include page="../header.jsp"/>
        </stripes:layout-component>

        <div class="pageContent">
            <stripes:layout-component name="contents"/>
        </div>

        <stripes:layout-component name="footer">
            <jsp:include page="../footer.jsp"/>
        </stripes:layout-component>

    </body>
    </html>
</stripes:layout-definition>

