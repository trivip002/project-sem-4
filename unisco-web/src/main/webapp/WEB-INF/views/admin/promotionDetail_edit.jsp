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
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Promotion Detail Edit Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-analysis"></i> Edit - Promotion </h2>
                    </div>
                </div>

                <div class="sa4d25">

                    <form method="post"  action="<c:url value='/admin/promotionDetail/create'/>">

                        <h3>Promotion Code:</h3>
                        <div class="ui left icon input">
                            <select type="text"  name="promotionCode" >
                                <c:forEach items="${listpromotion}" var="item">
                                    <option>${item.promotionCode}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <br/>
                            <%--                            <h3>Course Name:</h3>
                                                        <div class="ui left icon input">
                                                            <select type="text" name="promotionCode" >
                                                                <c:forEach items="${}" var="item">
                                                                    <option>${}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>--%>
                        <br/> <br/>
                        <input type="submit" class="btn btn-danger" value="Add"/>
                    </form>

                </div>
            </div>
        </div>

    </stripes:layout-component>
</stripes:layout-render>