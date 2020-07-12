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
        <a href="/admin/dashboard/"><img src="<c:url value='/static/assets/images/logo.svg' />" alt=""></a>
        <a href="/admin/dashboard/"><img class="logo-inverse" src="<c:url value='/static/assets/images/ct_logo.svg' />" alt=""></a>
    </div>
    <div class="search120">
        <div class="ui search">
            <div class="review_search " style="width: 300px;">
                <input class="rv_srch" type="text" name="searchStr" id="searchStr" placeholder="Search courses, category...">
                <button type="submit" id="btnSearch" class="rvsrch_btn"><i class="uil uil-search"></i></button>
            </div>
        </div>
    </div>
    <div class="header_right" >
        <ul>
            <li>
                <a href="http://localhost:8080/admin/course/edit/" class="upload_btn">Create New Course</a>
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
                                    <h6>Hello <%=Principal.getPrincipal()%></h6>
                                    <div class="mef78" title="Verify">
                                        <i class='uil uil-check-circle'></i>
                                    </div>
                                </div>
                                <span>${email}&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                            </div>
                        </div>
                    </div>
                    <div class="night_mode_switch__btn">
                        <a href="#" id="night-mode" class="btn-night-mode">
                            Night mode
                            <span class="btn-night-mode-switch">
									<span class="uk-switch-button"></span>
								</span>
                        </a>
                    </div>
                    <a href="/admin/dashboard/" class="item channel_item">Cursus Dashboard</a>
                    <a href="/logout/" class="item channel_item">Sign Out</a>
                </div>
            </li>
        </ul>
    </div>
    <script type="text/javascript">
        var searchStr;
        $('#btnSearch').click(function () {
            searchStr = $('#searchStr').val();
            window.location.href = "http://"+window.location.hostname+":8080" + "/admin/course/search?searchStr=" +searchStr;
            console.log(searchStr);
        });
    </script>
</header>
<!-- Header End -->



