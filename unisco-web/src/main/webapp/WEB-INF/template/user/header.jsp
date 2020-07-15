<%@ page import="com.unisco.utils.Principal" %><%--
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
    <button type="button" id="toggleMenu" class="toggle_menu">
        <i class='uil uil-bars'></i>
    </button>
    <button id="collapse_menu" class="collapse_menu">
        <i class="uil uil-bars collapse_menu--icon "></i>
        <span class="collapse_menu--label"></span>
    </button>
    <div class="main_logo" id="logo">
        <a href="<c:url value="/"/> "><img src="<c:url value="/static/assets/images/logo.svg"/>" alt=""></a>
        <a href="<c:url value="/"/>"><img class="logo-inverse" src="<c:url value="/static/assets/images/ct_logo.svg"/>" alt=""></a>
    </div>
    <div class="search120">
        <div class="ui search">
            <div class="ui left icon input swdh10">
                <input class="prompt srch10" type="text" placeholder="Search for Tuts Videos, Tutors, Tests and more.." id="searchStr">
                <i class='uil uil-search-alt icon icon1'></i>
            </div>
        </div>
    </div>
    <div class="header_right">
        <ul>
            <li>
                <a href="<c:url value="/"/>" class="option_links"><i class='uil uil-home-alt'></i></a>
            </li>
            <li class="ui dropdown">
                <a href="#" class="option_links"><i class='uil uil-cart'></i><span id="noti_count" class="noti_count">0</span></a>
                <div id="list-card-header" class="menu dropdown_ms">
                   <%-- <a href="#" class="channel_my item">
                        <div class="profile_link">
                            <img src="https://www.freecodecamp.org/news/content/images/2020/03/gpython.jpg" alt="">
                            <div class="pd_content">
                                <h6>Python</h6>
                                <p>The completet course of HTML,CSS,JS,REACT!</p>
                                <span class="nm_time" style="float: right">$20</span>
                            </div>
                        </div>
                    </a>
                    <a class="vbm_btn" href="/cart">View Cart <i class='uil uil-arrow-right'></i></a>--%>
                </div>
            </li>
            <li>
                <a href="<c:url value="/sign_up"/>" class="option_links"><button class="Get_btn">Sign Up</button></a>
            </li>
            <security:authorize access="isAuthenticated()">
                <li class="ui dropdown">
                    <a href="#" class="opts_account">
                        <img class="user-avatar-img" src="<c:url value='/static/assets/images/hd_dp.jpg' />" alt="">
                    </a>
                    <div class="menu dropdown_account" >
                        <div class="channel_my">
                            <div class="profile_link">
                                <img class="user-avatar-img" src="<c:url value='/static/assets/images/hd_dp.jpg' />" alt="">
                                <div class="pd_content">
                                    <div class="rhte85">
                                        <h6>Hello <%=Principal.getPrincipal()%></h6>
                                        <div class="mef78" title="Verify">
                                            <i class='uil uil-check-circle'></i>
                                        </div>
                                    </div>
                                    <span><%=Principal.getPrincipal()%></span>
                                </div>
                            </div>
                            <a href="<c:url value="/userProfile"/>" class="dp_link_12">View User Profile</a>
                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="<c:url value="/admin/"/>" class="dp_link_12">Manage Admin page</a>
                            </security:authorize>
                            <security:authorize access="hasRole('ROLE_INSTRUCTOR')">
                                <a href="<c:url value="/admin/course/"/>" class="dp_link_12">Manage Instructor page</a>
                            </security:authorize>
                        </div>
                        <div class="night_mode_switch__btn">
                            <a href="#" id="night-mode" class="btn-night-mode">
                                Night mode
                                <span class="btn-night-mode-switch">
									<span class="uk-switch-button"></span>
								</span>
                            </a>
                        </div>
                        <a href="/membership" class="item channel_item">Paid Memberships</a>
                        <a href="/logout/" class="item channel_item">Sign Out</a>
                    </div>
                </li>
            </security:authorize>
            <security:authorize access="!isAuthenticated()">
                <li>
                    <a href="<c:url value="/login"/>" class="option_links"><button class="Get_btn">Login</button></a>
                </li>
            </security:authorize>
        </ul>
    </div>
</header>
<!-- Header End -->
<!-- Left Sidebar Start -->
<nav id="nav-left" class="vertical_nav vertical_nav__minify">
    <div class="left_section menu_left" id="js-menu" >
        <div class="left_section">
            <ul>
                <li class="menu--item">
                    <a href="<c:url value="/"/>" class="menu--link" title="Home">
                        <i class='uil uil-home-alt menu--icon'></i>
                        <span class="menu--label">Home</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="<c:url value="/about"/>" class="menu--link" title="About Us">
                        <i class='uil uil-kayak menu--icon'></i>
                        <span class="menu--label">About</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="<c:url value="/explore"/>" class="menu--link" title="Explore">
                        <i class='uil uil-search menu--icon'></i>
                        <span class="menu--label">Explore</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="<c:url value="/category"/>" class="menu--link" title="Categories">
                        <i class='uil uil-layers menu--icon'></i>
                        <span class="menu--label">Categories</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="#" class="menu--link" title="Instructors">
                        <i class='uil uil-file menu--icon'></i>
                        <span class="menu--label">Instructors</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="<c:url value="/contact"/>" class="menu--link" title="Saved Courses">
                        <i class="uil uil-globe menu--icon"></i>
                        <span class="menu--label">Contact Us</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="<c:url value="/term"/>" class="menu--link" title="Saved Courses">
                        <i class="uil uil-clipboard-alt menu--icon"></i>
                        <span class="menu--label">Terms</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="left_section pt-2">
            <ul>
                <li class="menu--item">
                    <a href="<c:url value="/help"/>" class="menu--link" title="Help">
                        <i class='uil uil-question-circle menu--icon'></i>
                        <span class="menu--label">Help</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Left Sidebar End -->
<script>
    var courseCookies = [];
    $(document).ready(function () {
        $.ajax({
            url: "/api/cart/get-cart",
            method: "GET",
            success: function(result) {
                courseCookies = $.parseJSON(result);
                if(courseCookies !== []){
                    $('#noti_count').text(courseCookies.length);
                    $.each(courseCookies, function( i, val ) {
                        if(i<3){
                            $('#list-card-header').append(`
                              <a href="#" class="channel_my item">
                                <div class="profile_link">
                                    <img src="http://localhost:8080/upload/`+val['image']+`" alt="">
                                    <div class="pd_content">
                                        <h6>`+ val['name'] +`</h6>
                                        <p>`+val['description']+`</p>
                                        <span class="nm_time" style="float: right">`+val['price']+`</span>
                                    </div>
                                </div>
                            </a>
                            `);
                        }
                    });
                    $('#list-card-header').append(`
                        <a class="vbm_btn" href="/cart">View Cart <i class='uil uil-arrow-right'></i></a>
                    `);
                }
            }
        });
    });
    var input = document.getElementById("searchStr");
    input.addEventListener("keyup", function () {
        if (event.keyCode === 13){
            event.preventDefault();
            searchStr = $('#searchStr').val();
            window.location.href = "http://"+window.location.hostname+":8080" + "/explore/search?searchStr=" +searchStr;
        }
    });
</script>
</body>
</html>
