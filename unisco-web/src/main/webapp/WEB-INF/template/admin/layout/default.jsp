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
        <title>${pageTitle}</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <stripes:layout-component name="html_admin"/>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, shrink-to-fit=9">
        <meta name="description" content="Gambolthemes">
        <meta name="author" content="Gambolthemes">

        <!-- Favicon Icon -->
        <link href="<c:url value='/static/assets/images/fav.png' />" rel='icon'>

        <!-- Stylesheets -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet'>
        <link href="<c:url value='/static/vendor/unicons-2.0.1/css/unicons.css' />" rel='stylesheet'>
        <link href="<c:url value='/static/assets/css/vertical-responsive-menu1.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/instructor-dashboard.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/instructor-responsive.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/night-mode.css' />" rel="stylesheet">
        <link href="<c:url value="/static/assets/css/jquery-steps.css"/>" rel="stylesheet">

    <link href="<c:url value='/static/assets/css/style.css' />" rel="stylesheet">
    <link href="<c:url value='/static/assets/css/responsive.css' />" rel="stylesheet">


    <!-- Vendor Stylesheets -->
        <link href="<c:url value='/static/vendor/fontawesome-free/css/all.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/OwlCarousel/assets/owl.carousel.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/OwlCarousel/assets/owl.theme.default.min.css' />" rel="stylesheet">
        <link href="<c:url value='/static/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/semantic/semantic.min.css' />"  >
        <link href="<c:url value='/static/assets/css/waitMe.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/custom.css' />" rel="stylesheet">
        <link href="<c:url value='/static/assets/css/v-custom.css' />" rel="stylesheet">
        <script src='<c:url value="/static/assets/js/jquery-3.3.1.min.js"/>'></script>
        <script src='<c:url value="/static/assets/js/paginathing.js"/>'></script>
        <script src='<c:url value="/static/assets/js/waitMe.js"/>'></script>
        <script>
            function run_waitMe(){
                var maxSize = '';
                var textPos = 'vertical';
                $('.containerLoading').waitMe({
                effect: 'bounce',
                text: 'loading',
                bg: 'rgba(255,255,255,0.7)',
                color: '#000',
                maxSize: maxSize,
                waitTime: -1,
                source: "<c:url value='/static/assets/images/img.svg'/>",
                textPos: textPos,
                fontSize: '18px',
                onClose: function(el) {}
                });
            }
        </script>
    </head>
    <body>
        <div class="containerLoading">
            <stripes:layout-component name="header">
                <jsp:include page="../header.jsp"/>
            </stripes:layout-component>
            <stripes:layout-component name="header">
                <jsp:include page="../menu.jsp"/>
            </stripes:layout-component>
            <!-- Begin wrapper -->
            <div class="wrapper">
            <div class="pageContent">
            <stripes:layout-component name="contents"/>
            </div>

            <stripes:layout-component name="footer">
                <jsp:include page="../footer.jsp"/>
            </stripes:layout-component>
            <!-- /.control-sidebar -->
            </div>
        </div>
    <script>
    UPLOADCARE_PUBLIC_KEY = 'c952b0c21db79a8e1007';
    UPLOADCARE_PRIVATE_KEY = '8ce234f87043d6299102';
    </script>
    </body>
    <script>
    UPLOADCARE_PUBLIC_KEY = 'c952b0c21db79a8e1007';
    </script>

    <script src="https://ucarecdn.com/libs/widget/3.x/uploadcare.full.min.js"></script>
    <script src='<c:url value="/static/assets/js/vertical-responsive-menu.min.js"/>'></script>
    <script src='<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
    <script src='<c:url value="/static/vendor/OwlCarousel/owl.carousel.js"/>'></script>
    <script src='<c:url value="/static/vendor/semantic/semantic.min.js"/>'></script>
    <script src='<c:url value="/static/assets/js/custom1.js"/>'></script>
    <script src='<c:url value="/static/assets/js/night-mode.js"/>'></script>
    <script src='<c:url value="/static/assets/js/jquery-steps.min.js"/>'></script>
    <script>
    var dataCreate1={};
    $('#add-course-tab').steps({
/*    onFinish: function () {
    dataCreate1['courseName'] =  $('#courseName').val();
    dataCreate1['courseSubtitle'] =  $('#courseSubtitle').val();
    dataCreate1['courseDescription'] =  CKEDITOR.instances.id_course_description.getData();
    dataCreate1['courseLanguage'] =  $('#courseLanguage').val();
    dataCreate1['courseCategory'] =  $('#courseCategory').val();
    dataCreate1['courseDuration'] =  $('#courseDuration').val();
    dataCreate1['coursePrice'] = $('#coursePrice').val();
    dataCreate1['courseStatus'] = $('#courseStatus').val();
    dataCreate1['courseThumbnail'] = $('#inputGroupFile04').val();
    console.log(dataCreate1);
    }*/
    });
    </script>
    </html>
</stripes:layout-definition>

