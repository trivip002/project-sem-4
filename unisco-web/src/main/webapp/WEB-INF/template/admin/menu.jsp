<%@ page import="com.unisco.utils.Principal" %><%--
  Created by IntelliJ IDEA.
  User: trivip002
  Date: 2/16/2020
  Time: 1:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<!-- Left Sidebar Start -->
<nav class="vertical_nav">
    <div class="left_section menu_left" id="js-menu" >
        <div class="left_section">
            <ul>
                <li class="menu--item">
                    <a href="instructor_dashboard.html" class="menu--link active" title="Dashboard">
                        <i class="uil uil-user menu--icon"></i>
                        <span class="menu--label">User Management</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_courses.html" class="menu--link" title="Courses">
                        <i class='uil uil-book-alt menu--icon'></i>
                        <span class="menu--label">Courses</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_analyics.html" class="menu--link" title="Analyics">
                        <i class='uil uil-wallet menu--icon'></i>
                        <span class="menu--label">Section</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="create_new_course.html" class="menu--link" title="Create Course">
                        <i class='uil uil-video menu--icon'></i>
                        <span class="menu--label">Video</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_messages.html" class="menu--link" title="Messages">
                        <i class='uil uil-star menu--icon'></i>
                        <span class="menu--label">Comment & Reviews</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_all_reviews.html" class="menu--link" title="Reviews">
                        <i class='uil uil-comments menu--icon'></i>
                        <span class="menu--label">Blog comment</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_earning.html" class="menu--link" title="Earning">
                        <i class='uil uil-dollar-sign menu--icon'></i>
                        <span class="menu--label">Promotions</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="instructor_statements.html" class="menu--link" title="Statements">
                        <i class='uil uil-file-alt menu--icon'></i>
                        <span class="menu--label">Order</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="left_section pt-2">
            <ul>
                <li class="menu--item">
                    <a href="setting.html" class="menu--link" title="Setting">
                        <i class='uil uil-cog menu--icon'></i>
                        <span class="menu--label">Setting</span>
                    </a>
                </li>
                <li class="menu--item">
                    <a href="feedback.html" class="menu--link" title="Send Feedback">
                        <i class='uil uil-comment-alt-exclamation menu--icon'></i>
                        <span class="menu--label">Send Feedback</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Left Sidebar End -->
