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
                <input class="prompt srch10" type="text" placeholder="Search for Tuts Videos, Tutors, Tests and more..">
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
                <a href="#" class="option_links"><i class='uil uil-cart'></i><span class="noti_count">3</span></a>
                <div class="menu dropdown_ms">
                    <a href="#" class="channel_my item">
                        <div class="profile_link">
                            <img src="https://www.freecodecamp.org/news/content/images/2020/03/gpython.jpg" alt="">
                            <div class="pd_content">
                                <h6>Python</h6>
                                <p>The completet course of HTML,CSS,JS,REACT!</p>
                                <span class="nm_time" style="float: right">$20</span>
                            </div>
                        </div>
                    </a>
                    <a class="vbm_btn" href="/cart">View Cart <i class='uil uil-arrow-right'></i></a>
                </div>
            </li>
            <li>
                <a href="<c:url value="/sign_up"/>" class="option_links"><button class="Get_btn">Sign Up</button></a>
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
                                <span><%=Principal.getPrincipal()%></span>
                            </div>
                        </div>
                        <a href="<c:url value="/userProfile"/>" class="dp_link_12">View User Profile</a>
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
                <li class="menu--item  menu--item__has_sub_menu">
                    <label class="menu--link" title="Pages">
                        <i class='uil uil-file menu--icon'></i>
                        <span class="menu--label">Instructors</span>
                    </label>
                    <ul class="sub_menu">
                        <li class="sub_menu--item">
                            <a href="about_us.html" class="sub_menu--link">About</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="sign_in.html" class="sub_menu--link">Sign In</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="sign_up.html" class="sub_menu--link">Sign Up</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="sign_up_steps.html" class="sub_menu--link">Sign Up Steps</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="membership.html" class="sub_menu--link">Paid Membership</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="course_detail_view.html" class="sub_menu--link">Course Detail View</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="checkout_membership.html" class="sub_menu--link">Checkout</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="invoice.html" class="sub_menu--link">Invoice</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="career.html" class="sub_menu--link">Career</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="apply_job.html" class="sub_menu--link">Job Apply</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="our_blog.html" class="sub_menu--link">Our Blog</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="blog_single_view.html" class="sub_menu--link">Blog Detail View</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="company_details.html" class="sub_menu--link">Company Details</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="press.html" class="sub_menu--link">Press</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="live_output.html" class="sub_menu--link">Live Stream View</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="add_streaming.html" class="sub_menu--link">Add live Stream</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="search_result.html" class="sub_menu--link">Search Result</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="thank_you.html" class="sub_menu--link">Thank You</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="coming_soon.html" class="sub_menu--link">Coming Soon</a>
                        </li>
                        <li class="sub_menu--item">
                            <a href="error_404.html" class="sub_menu--link">Error 404</a>
                        </li>
                    </ul>
                </li>
                <li class="menu--item">
                    <a href="saved_courses.html" class="menu--link" title="Saved Courses">
                        <i class="uil uil-globe menu--icon"></i>
                        <span class="menu--label">Contact Us</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="saved_courses.html" class="menu--link" title="Saved Courses">
                        <i class="uil uil-windsock menu--icon"></i>
                        <span class="menu--label">Copyright</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="saved_courses.html" class="menu--link" title="Saved Courses">
                        <i class="uil uil-cog menu--icon"></i>
                        <span class="menu--label">Privacy Policy</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="saved_courses.html" class="menu--link" title="Saved Courses">
                        <i class="uil uil-clipboard-alt menu--icon"></i>
                        <span class="menu--label">Terms</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="left_section pt-2">
            <ul>
                <li class="menu--item">
                    <a href="help.html" class="menu--link" title="Help">
                        <i class='uil uil-question-circle menu--icon'></i>
                        <span class="menu--label">Help</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Left Sidebar End -->
</body>
</html>
