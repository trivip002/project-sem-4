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
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Blog Category Edit Page" pageCss="style.css">
    <stripes:layout-component name="contents">

        <div class="sa4d25">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-analysis"></i>Edit - Blog</h2>
                    </div>
                </div>

                <div class="sa4d25">
                    <form class="course__form" method="post"  action="<c:url value='/admin/blog/create'/>">
                        <div class="col-lg-10">
                            <input type="hidden" name="blogId" value="${blogEdit.blogId}"/>
                            <h3>Blog Category:</h3>
                            <div class="ui left icon input">
                                <select   name="blogCateTitle">
                                    <c:forEach items="${listBlogCategory}" var="item">
                                        <option value="${item.blogCateId}">${item.blogCateTitle}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <h3>Title:</h3>
                            <div class="ui form swdh339">
                                <input type="text" class="prompt srch_explore" name="blogTitle" value="${blogEdit.blogTitle}" required/>
                            </div>
                            <h3>Meta Title:</h3>
                            <div class="ui form swdh339">
                                <input type="text" class="prompt srch_explore" name="blogMetaTitle" value="${blogEdit.blogMetaTitle}" required />
                            </div>
                            <h3>Image:</h3>
                            <div class="ui left icon input">
                                <input type="text" class="prompt srch_explore" name="blogImg" value="${blogEdit.blogImg}" required/>
                            </div>
                            <h3>Content:</h3>
                            <div class="ui form swdh339">
                                <input type="text" class="prompt srch_explore" name="blogContent" value="${blogEdit.blogContent}" required/>
                            </div>
                            <h3>Status:</h3>
                            <select class="ui dropdown border-dark" name="isActive" required >
                                <option value="">Status</option>
                                <option value="1" ${blogEdit.isActive==1?"selected":""} >Active</option>
                                <option value="0" ${blogEdit.isActive==0?"selected":""}>Inactive</option>
                            </select>
                            <br><br>
                            <input type="submit" class="btn btn-danger" value="Add"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>