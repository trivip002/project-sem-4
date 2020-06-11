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
    <html ng-app="adminApp">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>${pageTitle}</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <stripes:layout-component name="html_admin"/>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/fontawesome-free/css/all.min.css' />" />
        <!-- Ionicons -->
        <link rel="stylesheet" href="<c:url value='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css' />" />
        <!-- Tempusdominus Bbootstrap 4 -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css' />" />
        <!-- iCheck -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css' />" />
        <!-- JQVMap -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/jqvmap/jqvmap.min.css' />" />
        <!-- Theme style -->
        <link rel="stylesheet" href="<c:url value='/static/admin/dist/css/adminlte.min.css' />" />
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css' />" />
        <!-- summernote -->
        <link rel="stylesheet" href="<c:url value='/static/admin/plugins/summernote/summernote-bs4.css' />" />
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="<c:url value='https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700' />" />
        <!-- Custom css -->
        <link rel="stylesheet" href="<c:url value='/static/assets/css/style.css' />" />
        <!-- jQuery -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jquery/jquery.min.js"/>'></script>
        <!-- jQuery UI 1.11.4 -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jquery-ui/jquery-ui.min.js"/>'></script>
        <!-- Angularjs -->
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
        <script src='<c:url value="/static/assets/js/app.js"/>' ></script>

    </head>
    <body>
        <!-- Begin wrapper -->
        <div class="wrapper">
        <stripes:layout-component name="header">
            <jsp:include page="../header.jsp"/>
        </stripes:layout-component>
        <stripes:layout-component name="header">
            <jsp:include page="../menu.jsp"/>
        </stripes:layout-component>
        <div class="pageContent">
        <stripes:layout-component name="contents"/>
        </div>

        <stripes:layout-component name="footer">
            <jsp:include page="../footer.jsp"/>
        </stripes:layout-component>
        <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->
        <!-- Bootstrap 4 -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
        <!-- ChartJS -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/chart.js/Chart.min.js"/>'></script>
        <!-- JQVMap -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jqvmap/jquery.vmap.min.js"/>'></script>
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"/>'></script>
        <!-- jQuery Knob Chart -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jquery-knob/jquery.knob.min.js"/>'></script>
        <!-- daterangepicker -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/moment/moment.min.js"/>'></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"/>'></script>
        <!-- Summernote -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/summernote/summernote-bs4.min.js"/>'></script>
        <!-- overlayScrollbars -->
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"/>'></script>
        <!-- AdminLTE App -->
        <script type='text/javascript' src='<c:url value="/static/admin/dist/js/adminlte.js"/>'></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script type='text/javascript' src='<c:url value="/static/admin/dist/js/pages/dashboard.js"/>'></script>
        <!-- AdminLTE for demo purposes -->
        <script type='text/javascript' src='<c:url value="/static/admin/dist/js/demo.js"/>'></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
        $.widget.bridge('uibutton', $.ui.button)
        </script>
        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
        </aside>
        <!-- Custom js -->
        <script type='text/javascript' src='<c:url value="/static/assets/js/menu.js"/>'></script>
        <script type='text/javascript' src='<c:url value="/static/assets/controller/homeCtrl.js"/>'></script>
        <script type='text/javascript' src='<c:url value="/static/assets/controller/userCtrl.js"/>'></script>
        <script type='text/javascript' src='<c:url value="/static/assets/controller/roleCtrl.js"/>'></script>
    </body>
    </html>
</stripes:layout-definition>

