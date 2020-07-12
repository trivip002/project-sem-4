<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 6/24/2020
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Dashboard Page" pageCss="style.css">
    <stripes:layout-component name="contents">

        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                                        <div class="col-lg-12">
                                            <h2 class="st_title"><i class="uil uil-apps"></i> Instructor Dashboard</h2>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6">
                                            <div class="card_dash">
                                                <div class="card_dash_left">
                                                    <h5>Total Sales</h5>
                                                    <h2 data-value="${unitPrice}">${unitPrice} $</h2>
                                                    <span class="crdbg_1">New $</span>
                                                </div>
                                                <div class="card_dash_right">
                                                    <img src="<c:url value='/static/assets/images/dashboard/achievement.svg'/>" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6">
                                            <div class="card_dash">
                                                <div class="card_dash_left">
                                                    <h5>Total Courses</h5>
                                                    <h2 data-value="${totalCourse}" >${totalCourse}</h2>
                                                    <span class="crdbg_3">New</span>
                                                </div>
                                                <div class="card_dash_right">
                                                    <img src="<c:url value='/static/assets/images/dashboard/online-course.svg'/>" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6">
                                            <div class="card_dash">
                                                <div class="card_dash_left">
                                                    <h5>Total Users</h5>
                                                    <h2 data-value="${totalUser}" >${totalUser}</h2>
                                                    <span class="crdbg_4">New</span>
                                                </div>
                                                <div class="card_dash_right">
                                                    <img src="<c:url value='/static/assets/images/dashboard/knowledge.svg'/>" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6">
                                            <div class="card_dash">
                                                <div class="card_dash_left">
                                                    <h5>Total Promotion</h5>
                                                    <h2 data-value="${totalPromotion}" >${totalPromotion}</h2>
                                                    <span class="crdbg_2">New</span>
                                                </div>
                                                <div class="card_dash_right">
                                                    <img src="<c:url value='/static/assets/images/dashboard/graduation-cap.svg'/>" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="card_dash1">
                                                <div class="card_dash_left1">
                                                    <i class="uil uil-book-alt"></i>
                                                    <h1>Jump Into Course Creation</h1>
                                                </div>
                                                <div class="card_dash_right1">
                                                    <button class="create_btn_dash" onclick="window.location.href = 'http://localhost:8080/admin/course/edit';">Create Your Course</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                    </div>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>
