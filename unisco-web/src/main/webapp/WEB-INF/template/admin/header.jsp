<%@ page import="com.unisco.utils.Principal" %><%--
  Created by IntelliJ IDEA.
  User: hugh.intern
  Date: 2/12/2020
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<!-- Header Start -->
<header class="header clearfix">
    <button type="button" id="toggleMenu" class="toggle_menu">
        <i class='uil uil-bars'></i>
    </button>
    <button id="collapse_menu" class="collapse_menu">
        <i class="uil uil-bars collapse_menu--icon "></i>
        <span class="collapse_menu--label"></span>
    </button>
    <div class="main_logo" id="logo">
        <a href="/admin/"><img src="<c:url value='/static/assets/images/logo.svg' />" alt=""></a>
        <a href="/admin/"><img class="logo-inverse" src="<c:url value='/static/assets/images/ct_logo.svg' />" alt=""></a>
    </div>
    <div class="search120">
        <div class="ui search">
            <div class="ui left icon input swdh10">
                <input class="prompt srch10" type="text" placeholder="Search for Tuts Videos, Tutors, Tests and more..">
                <i class='uil uil-search-alt icon icon1'></i>
            </div>
        </div>
    </div>
    <div class="header_right" >
        <ul>
            <li>
                <a href="create_new_course.html" class="upload_btn">Create New Course</a>
            </li>
            <li class="ui dropdown">
                <a href="#" class="opts_account">
                    <img src="<c:url value='/static/assets/images/hd_dp.jpg' />" alt="">
                </a>
                <div class="menu dropdown_account" >
                    <div class="channel_my">
                        <div class="profile_link">
                            <img src="<c:url value='/static/assets/images/hd_dp.jpg' />" alt="">
                            <div class="pd_content">
                                <div class="rhte85">
                                    <h6><%=Principal.getPrincipal()%></h6>
                                    <div class="mef78" title="Verify">
                                        <i class='uil uil-check-circle'></i>
                                    </div>
                                </div>
                                <span><%=Principal.getPrincipal()%></span>
                            </div>
                        </div>
                        <a href="my_instructor_profile_view.html" class="dp_link_12">View Instructor Profile</a>
                    </div>
                    <div class="night_mode_switch__btn">
                        <a href="#" id="night-mode" class="btn-night-mode">
                            Night mode
                            <span class="btn-night-mode-switch">
									<span class="uk-switch-button"></span>
								</span>
                        </a>
                    </div>
                    <a href="instructor_dashboard.html" class="item channel_item">Cursus Dashboard</a>
                    <a href="membership.html" class="item channel_item">Paid Memberships</a>
                    <a href="setting.html" class="item channel_item">Setting</a>
                    <a href="help.html" class="item channel_item">Help</a>
                    <a href="feedback.html" class="item channel_item">Send Feedback</a>
                    <a href="sign_in.html" class="item channel_item">Sign Out</a>
                </div>
            </li>
        </ul>
    </div>
</header>
<!-- Header End -->



