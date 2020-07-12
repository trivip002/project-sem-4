<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="User Report Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-book-alt"></i>PROMOTION REPORTS</h2>
                    </div>
                    <div class="col-md-12">
                        <div class="card_dash1">
                            <div class="card_dash_left1">
                                <i class="uil uil-book-alt"></i>
                                <h1>DOWNLOAD</h1>
                            </div>
                            <div class="card_dash_right1">
                                <spring:url value="/admin/promotionReport/?type=xls" var="xlsURL" />
                                <spring:url value="/admin/promotionReport/?type=pdf" var="pdfURL" />
                                <a href="${xlsURL}"><button class="create_btn_dash">AS EXCEL</button></a>
                                <a href="${pdfURL}"><button class="create_btn_dash">AS PDF</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">CODE</th>
                                    <th scope="col">DISCOUNT AMOUNT</th>
                                    <th scope="col">STATUS</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${promoList}" var="u" >
                                    <tr>
                                        <td>${u.promotionId }</td>
                                        <td>${u.promotionCode }</td>
                                        <td>${u.discountPrice }</td>
                                        <td>${u.isActive==1?"Active":"Inactive" }</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>
