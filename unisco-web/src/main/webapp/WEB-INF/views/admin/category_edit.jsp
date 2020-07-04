<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 6/27/2020
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Category Edit Page" pageCss="style.css">
    <stripes:layout-component name="contents">

        <div class="sa4d25">
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="st_title"><i class="uil uil-analysis"></i> Edit - Category </h2>
            </div>
        </div>

        <div class="sa4d25">
        <form class="course__form" method="POST" action="<c:url value='/admin/category/create'/>" >
            <div class="col-lg-10">
            <input type="hidden" name="cateId" value="${cateEdit.cateId}">
            <h3>Category Name:</h3>
                <div class="ui left icon input">
            <input type="text" class="prompt srch_explore" name="cateName" value="${cateEdit.cateName}" />
                </div>
                <br><br>
            <input type="submit" class="btn btn-danger" value="Save"/>
            </div>
        </form>
        </div>
        </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>