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
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Role Edit Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="st_title"><i class="uil uil-analysis"></i> Edit - Role </h2>
            </div>
        </div>
        <div class="sa4d25">
            <form class="course__form" method="POST" action="<c:url value='/admin/role/create'/>" >
                <div class="col-lg-10">
                    <input type="hidden" name="roleId" value="${roleEdit.roleId}">
                <h3>Role Title:</h3>
                    <div class="ui left icon input">
                    <input type="text" name="roleCode" value="${roleEdit.roleCode}" />
                    </div>
                <h3>Role Description:</h3>
                    <div class="ui left icon input">
                    <input type="text" name="roleName" value="${roleEdit.roleName}"/><br><br>
                    </div>
                <br/><br/>
                    <input type="submit" class="btn btn-danger" value="Save"/>
                </div>
            </form>
        </div>
        </div>
        </div>

    </stripes:layout-component>
</stripes:layout-render>