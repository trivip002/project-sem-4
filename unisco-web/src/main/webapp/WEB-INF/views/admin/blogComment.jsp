<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 6/24/2020
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Comment Page" pageCss="style.css">
    <stripes:layout-component name="contents">

        <div class="sa4d25">
            <div class="container-fluid">
                <h2 class="st_title"><i class="uil uil-book-alt"></i>Blog Comment</h2>
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                <tr>
                                    <th scope="col">User</th>
                                    <th scope="col">Blog Title</th>
                                    <th scope="col">Comment</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listComment}" var="item">
                                    <tr>
                                        <td><a href="/admin/">${item.user.userName!=null?item.user.userName:"N/A"}</a></td>
                                        <td><a href="/admin/blog/">${item.blog.blogTitle}</a></td>
                                        <td class=" text-truncate" style="max-width: 100px">${item.blogCommentContent}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>
