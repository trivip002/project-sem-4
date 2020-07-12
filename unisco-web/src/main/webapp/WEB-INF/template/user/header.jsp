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
            <!-- <li>
                <a href="create_new_course.html" class="upload_btn">Create New Course</a>
            </li> -->
            <li>
                <a href="<c:url value="/"/>" class="option_links"><i class='uil uil-home-alt'></i><!-- <span class="noti_count">9+</span> --></a>
            </li>
<%--            <li>--%>
<%--                <a href="index.html" class="option_links"><i class='uil uil-cart'></i><span class="noti_count">9+</span></a>--%>
<%--            </li>--%>
            <!-- <li class="ui dropdown">
                <a href="#" class="option_links"><i class='uil uil-envelope-alt'></i><span class="noti_count">3</span></a>
                <div class="menu dropdown_ms">
                    <a href="#" class="channel_my item">
                        <div class="profile_link">
                            <img src="images/left-imgs/img-6.jpg" alt="">
                            <div class="pd_content">
                                <h6>Zoena Singh</h6>
                                <p>Hi! Sir, How are you. I ask you one thing please explain it this video price.</p>
                                <span class="nm_time">2 min ago</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="channel_my item">
                        <div class="profile_link">
                            <img src="images/left-imgs/img-5.jpg" alt="">
                            <div class="pd_content">
                                <h6>Joy Dua</h6>
                                <p>Hello, I paid you video tutorial but did not play error 404.</p>
                                <span class="nm_time">10 min ago</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="channel_my item">
                        <div class="profile_link">
                            <img src="images/left-imgs/img-8.jpg" alt="">
                            <div class="pd_content">
                                <h6>Jass</h6>
                                <p>Thanks Sir, Such a nice video.</p>
                                <span class="nm_time">25 min ago</span>
                            </div>
                        </div>
                    </a>
                    <a class="vbm_btn" href="instructor_messages.html">View All <i class='uil uil-arrow-right'></i></a>
                </div>
            </li> -->
            <li class="ui dropdown">
                <a href="#" class="option_links"><i class='uil uil-cart'></i><span class="noti_count">3</span></a>
                <div class="menu dropdown_mn">
                    <a href="#" class="channel_my item">
                        <div class="profile_link">
                            <img src="images/left-imgs/img-1.jpg" alt="">
                            <div class="pd_content">
                                <h6>Rock William</h6>
                                <p>Like Your Comment On Video <strong>How to create sidebar menu</strong>.</p>
                                <span class="nm_time">2 min ago</span>
                            </div>
                        </div>
                    </a>
                    <a class="vbm_btn" href="instructor_notifications.html">View All <i class='uil uil-arrow-right'></i></a>
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
        <!-- <div class="left_section">
            <h6 class="left_title">SUBSCRIPTIONS</h6>
            <ul>
                <li class="menu--item">
                    <a href="instructor_profile_view.html" class="menu--link user_img">
                        <img src="images/left-imgs/img-1.jpg" alt="">
                        Rock Smith
                        <div class="alrt_dot"></div>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_profile_view.html" class="menu--link user_img">
                        <img src="images/left-imgs/img-2.jpg" alt="">
                        Jassica William
                    </a>
                    <div class="alrt_dot"></div>
                </li>
                <li class="menu--item">
                    <a href="all_instructor.html" class="menu--link" title="Browse Instructors">
                      <i class='uil uil-plus-circle menu--icon'></i>
                      <span class="menu--label">Browse Instructors</span>
                    </a>
                </li>
            </ul>
        </div> -->
        <div class="left_section pt-2">
            <ul>
                <!-- <li class="menu--item">
                    <a href="setting.html" class="menu--link" title="Setting">
                        <i class='uil uil-cog menu--icon'></i>
                        <span class="menu--label">Setting</span>
                    </a>
                </li> -->
                <li class="menu--item">
                    <a href="help.html" class="menu--link" title="Help">
                        <i class='uil uil-question-circle menu--icon'></i>
                        <span class="menu--label">Help</span>
                    </a>
                </li>
                <!-- <li class="menu--item">
                    <a href="report_history.html" class="menu--link" title="Report History">
                        <i class='uil uil-windsock menu--icon'></i>
                        <span class="menu--label">Report History</span>
                    </a>
                </li> -->
                <!-- <li class="menu--item">
                    <a href="feedback.html" class="menu--link" title="Send Feedback">
                        <i class='uil uil-comment-alt-exclamation menu--icon'></i>
                        <span class="menu--label">Send Feedback</span>
                    </a>
                </li> -->
            </ul>
        </div>
        <!-- <div class="left_footer">
            <ul>
                <li><a href="about_us.html">About</a></li>
                <li><a href="press.html">Press</a></li>
                <li><a href="contact_us.html">Contact Us</a></li>
                <li><a href="coming_soon.html">Advertise</a></li>
                <li><a href="coming_soon.html">Developers</a></li>
                <li><a href="terms_of_use.html">Copyright</a></li>
                <li><a href="terms_of_use.html">Privacy Policy</a></li>
                <li><a href="terms_of_use.html">Terms</a></li>
            </ul>
            <div class="left_footer_content">
                <p>© 2020 <strong>Cursus</strong>. All Rights Reserved.</p>
            </div>
        </div> -->
    </div>
</nav>
<!-- Left Sidebar End -->
</body>
</html>
