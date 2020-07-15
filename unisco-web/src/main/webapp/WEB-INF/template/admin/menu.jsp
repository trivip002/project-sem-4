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
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="menu--item">
                        <a href="/admin/dashboard/" class="menu--link" title="Dashboard">
                            <i class="uil uil-chart menu--icon"></i>
                            <span class="menu--label">Dash Board</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/" class="menu--link" title="User">
                            <i class="uil uil-user menu--icon"></i>
                            <span class="menu--label">User Management</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/role/" class="menu--link" title="Role">
                            <i class="uil uil-user menu--icon"></i>
                            <span class="menu--label">Role Management</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/category/" class="menu--link" title="Courses Category">
                            <i class='uil uil-book-alt menu--icon'></i>
                            <span class="menu--label">Course Category</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="<c:url value="/admin/course/"/>" class="menu--link" title="Courses">
                            <i class='uil uil-book-alt menu--icon'></i>
                            <span class="menu--label">Courses</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/order/" class="menu--link" title="Order">
                            <i class="uil uil-shopping-cart-alt menu--icon"></i>
                            <span class="menu--label">Order</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/review/" class="menu--link" title="Messages">
                            <i class='uil uil-star menu--icon'></i>
                            <span class="menu--label">Reviews</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/promotion/" class="menu--link" title="Analyics">
                            <i class='uil uil-dollar-sign menu--icon'></i>
                            <span class="menu--label">Promotion</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/promotionDetail/" class="menu--link" title="Promotion">
                            <i class='uil uil-analysis menu--icon'></i>
                            <span class="menu--label">Promotion Detail</span>
                        </a>
                    </li>

                    <li class="menu--item">
                        <a href="/admin/blogCategory/" class="menu--link" title="Blog Category">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">Blog Category</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/blog/" class="menu--link" title="Blog">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">Blogs</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="/admin/blogComment/" class="menu--link" title="Comment">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">Blog comment</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="<c:url value="/admin/userReport"/>" class="menu--link" title="Comment">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">User Report</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="<c:url value="/admin/courseReport"/>" class="menu--link" title="Comment">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">Course Report</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="<c:url value="/admin/promotionReport"/>" class="menu--link" title="Comment">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">Promotion Report</span>
                        </a>
                    </li>
                    <li class="menu--item">
                        <a href="<c:url value="/admin/orderReport"/>" class="menu--link" title="Comment">
                            <i class='uil uil-comments menu--icon'></i>
                            <span class="menu--label">Order Report</span>
                        </a>
                    </li>
                </security:authorize>
                <security:authorize access="hasRole('ROLE_INSTRUCTOR')">
                    <li class="menu--item">
                        <a href="<c:url value="/admin/course/"/>" class="menu--link" title="Courses">
                            <i class='uil uil-book-alt menu--icon'></i>
                            <span class="menu--label">Courses</span>
                        </a>
                    </li>
                </security:authorize>
            </ul>
        </div>
    </div>
</nav>
<!-- Left Sidebar End -->
