<%@ page import="com.example.utils.Principal" %><%--
  Created by IntelliJ IDEA.
  User: trivip002
  Date: 2/16/2020
  Time: 1:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#/" class="brand-link">
        <img src='<c:url value="/static/admin/dist/img/AdminLTELogo.png"/>' alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src='<c:url value="/static/admin/dist/img/user8-128x128.jpg"/>' class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#/" class="d-block"><%=Principal.getPrincipal()%></a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" roleEntity="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <%--<li class="nav-item">
                    <a href="{{item.href}}" class="nav-link" ng-class="{active : activeMenu === item}">
                        <i class="nav-icon fas {{item.icon}}"></i>
                        <p>
                            {{ item.value }}
                        </p>
                    </a>
                </li>--%>
                <li class="nav-item">
                    <a href="#/" class="nav-link" id="home-menu">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Home
                        </p>
                    </a>
                </li>
                <security:authorize access="hasAnyAuthority('CAN_READ_USER')" >
                    <li class="nav-item">
                        <a href="#/user" class="nav-link" id="user-menu">
                            <i class="nav-icon fas fa-users"></i>
                            <p>
                                User Management
                            </p>
                        </a>
                    </li>
                </security:authorize>
                <security:authorize access="hasAnyAuthority('CAN_READ_ROLE')" >
                    <li class="nav-item">
                        <a href="#/role" class="nav-link" id="role-menu">
                            <i class="nav-icon fas fa-user-tag"></i>
                            <p>
                                Role Management
                            </p>
                        </a>
                    </li>
                </security:authorize>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
