<%--
  Created by IntelliJ IDEA.
  User: hugh.intern
  Date: 2/12/2020
  Time: 1:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Header Start -->
<header class="header clearfix">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="back_link">
                    <a href="<c:url value="/"/>" class="hde151">Back To Cursus</a>
                    <a href="<c:url value="/"/>" class="hde152">Back</a>
                </div>
                <div class="ml_item">
                    <div class="main_logo main_logo15" id="logo">
                        <a href="<c:url value="/"/>"><img src="<c:url value="/static/assets/images/logo.svg"/>" alt=""></a>
                        <a href="<c:url value="/"/>"><img class="logo-inverse" src="<c:url value="/static/assets/images/ct_logo.svg"/>" alt=""></a>
                    </div>
                </div>
                <div class="header_right pr-0">
                    <ul>
                        <li class="ui top right pointing dropdown">
                            <a href="#" class="opts_account">
                                <img src="images/hd_dp.jpg" alt="">
                            </a>
                            <div class="menu dropdown_account">
                                <div class="channel_my">
                                    <div class="profile_link">
                                        <img src="images/hd_dp.jpg" alt="">
                                        <div class="pd_content">
                                            <div class="rhte85">
                                                <h6>Joginder Singh</h6>
                                                <div class="mef78" title="Verify">
                                                    <i class='uil uil-check-circle'></i>
                                                </div>
                                            </div>
                                            <span>gambol943@gmail.com</span>
                                        </div>
                                    </div>
                                    <a href="my_instructor_profile_view.html" class="dp_link_12">View Instructor Profile</a>
                                </div>
                                <div class="night_mode_switch__btn">
                                    <a href="#" id="night-mode" class="btn-night-mode">
                                        <i class="uil uil-moon"></i> Night mode
                                        <span class="btn-night-mode-switch">
												<span class="uk-switch-button"></span>
											</span>
                                    </a>
                                </div>
                                <a href="instructor_dashboard.html" class="item channel_item">Cursus Dashboard</a>
                                <a href="sign_in.html" class="item channel_item">Sign Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header End -->

</body>
</html>
