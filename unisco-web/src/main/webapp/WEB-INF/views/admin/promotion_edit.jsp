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
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Promotion Edit Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="st_title"><i class="uil uil-analysis"></i> Edit - Promotion </h2>
            </div>
        </div>

        <div class="sa4d25">
        <form class="course__form" method="POST" action="<c:url value='/admin/promotion/create'/>" >
            <div class="col-lg-10">
            <input type="hidden" name="promotionId" value="${promoEdit.promotionId}">
            <h3>Promotion Code:</h3>
                    <div class="ui left icon input">
            <input type="text" name="promotionCode" value="${promoEdit.promotionCode}"/>
                    </div>
                <h3>Discount Price:</h3>
                <div class="ui left icon input">
                    <input type="number"  name="discountPrice" step="0.01" value="${promoEdit.discountPrice}" /><br>
                </div>
            <h3>Status:</h3>
            <select class="ui dropdown border-dark" name="isActive" required >
                <option value="">Status</option>
                <option value="1" ${promoEdit.isActive==1?"selected":""} >Active</option>
                <option value="0" ${promoEdit.isActive==0?"selected":""}>Inactive</option>
            </select><br>
            <br>
            <input type="submit" class="btn btn-danger" value="Save"/>
            </div>
        </form>
        </div>
        </div>
        </div>

    </stripes:layout-component>
</stripes:layout-render>