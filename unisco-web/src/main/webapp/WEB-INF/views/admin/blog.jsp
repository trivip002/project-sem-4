<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 6/23/2020
  Time: 3:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Blog Page" pageCss="style.css">
    <stripes:layout-component name="contents">

        <div class="sa4d25">
            <div class="container-fluid">
                <h2 class="st_title"><i class="uil uil-book-alt"></i>Blog</h2>
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <ul class="more_options_tt" style="float: right">
                            <li>
                                <div class="explore_search">
                                    <div class="ui search focus">
                                        <div class="review_search" style="width: 300px;">
                                            <input class="rv_srch" type="text" name="searchStr" id="searchStr" placeholder="Search blog title..."/>
                                            <button type="submit" id="btnSearch" class="rvsrch_btn"><i class="uil uil-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <button type="button" class="upload_btn"  data-toggle="modal" data-target="#centralModalDanger"><i class="uil uil-plus-circle"></i></button>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="table-responsive mt-30 ">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Actions</th>
                                </tr>
                                </thead>
                                <tbody >
                                <c:forEach items="${listBlog}" var="item">
                                    <tr >
                                        <td >${item.blogId}</td>
                                        <td class=" text-truncate" style="max-width: 100px">${item.blogTitle}</td>
                                        <td>${item.blogImg}</td>
                                        <td>${item.isActive==1?"Active":"Inactive"}</td>
                                        <td>
                                            <a href="<c:url value="/admin/blog/edit/${item.blogId}"/>"><button type="button" class="upload_btn"><i class="uil uil-edit"></i></button></a>
                                        </td>
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

        <!-- Central Modal Medium Danger -->
        <div class="modal fade" id="centralModalDanger" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-notify modal-danger" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading lead" style="color: white">ADD BLOG</p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>

                    <!--Body-->
                    <div class="modal-body">
                        <form method="post"  action="<c:url value='/admin/blog/create'/>">
                            <input type="hidden" name="blogId" value="">
                            <h3>Blog Category:</h3>
                            <div class="ui left icon input">
                                <select   name="blogCateTitle">
                                    <c:forEach items="${listBlogCategory}" var="it">
                                        <option value="${it.blogCateId}">${it.blogCateTitle}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <h3>Title:</h3>
                            <div class="ui form swdh339">
                                <textarea type="text" class="prompt srch_explore" name="blogTitle" value="${blogEdit}" rows="1" required></textarea>
                            </div>
                            <h3>Meta Title:</h3>
                            <div class="ui form swdh339">
                                <textarea type="text" class="prompt srch_explore" name="blogMetaTitle" value="${blogEdit}" rows="1" required></textarea>
                            </div>
                            <h3>Image:</h3>
                            <div class="ui left icon input">
                                <input type="text" class="prompt srch_explore" name="blogImg" value="${blogEdit}" required/>
                            </div>
                            <h3>Content:</h3>
                            <div class="ui form swdh339">
                                <textarea type="text" class="prompt srch_explore" name="blogContent" value="${blogEdit}" rows="2" required></textarea>
                            </div>
                            <h3>Status:</h3>
                            <select class="ui dropdown border-dark" name="isActive" value="${blogEdit}" required>
                                <option value="">Select</option>
                                <option value="1">Active</option>
                                <option value="0">Inactive</option>
                            </select>
                            <br><br>
                            <input type="submit" class="btn btn-danger" value="Add"/>
                        </form>
                    </div>

                    <!--Footer-->
                    <div class="modal-footer justify-content-center">
                        <a type="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">Cancel</a>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- Central Modal Medium Danger-->
        <script type="text/javascript">
            $( document ).ready(function() {
                $('.table-responsive tbody').paginathing({
                    perPage: 3,
                    insertAfter: '.table-responsive',
                    activeClass: 'active',
                    pageNumbers: true
                });
            });
        </script>
        <script type="text/javascript">
            var searchStr;
            $('#btnSearch').click(function () {
                searchStr = $('#searchStr').val();
                window.location.href = "http://"+window.location.hostname+":8080" + "/admin/blog/search?searchStr=" +searchStr;
                console.log(searchStr);
            });
        </script>

    </stripes:layout-component>
</stripes:layout-render>