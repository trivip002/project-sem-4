<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 6/20/2020
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Role Page" pageCss="style.css">
    <stripes:layout-component name="contents">

        <div class="sa4d25">
            <div class="container-fluid">
                <h2 class="st_title"><i class="uil uil-book-alt"></i>Role</h2>
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <ul class="more_options_tt" style="float: right">
                            <li>
                                <div class="explore_search">
                                    <div class="ui search focus" >
                                        <div class="review_search" style="width: 300px;">
                                            <input class="rv_srch" type="text" name="searchStr" id="searchStr" placeholder="Search role title..."/>
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
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Role Code</th>
                                    <th scope="col">Role Name</th>
                                    <th scope="col">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listRole}" var="item">
                                    <tr>
                                        <td>${item.roleId}</td>
                                        <td>${item.roleCode!=null?item.roleCode:"N/A"}</td>
                                        <td>${item.roleName!=null?item.roleName:"N/A"}</td>
                                        <td>
                                            <a href="<c:url value="/admin/role/edit/${item.roleId}"/>"><button type="button" class="upload_btn"><i class="uil uil-edit"></i></button></a>
                                          <%--  <a href="<c:url value="/admin/role/delete/${item.roleId}"/>" ><button type="button" class="upload_btn"><i class="uil uil-trash-alt"></i></button></a>--%>
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
                        <p class="heading lead" style="color: white">ADD ROLE</p>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>

                    <!--Body-->
                    <div class="modal-body">
                        <form method="post"  action="<c:url value='/admin/role/create'/>">
                            <input type="hidden" name="roleId" value="">
                             <h3>Role Title:</h3>
                            <div class="ui left icon input">
                            <input type="text" name="roleCode" value="${roleEdit}" required />
                            </div>
                            <h3>Role Description:</h3>
                            <div class="ui left icon input">
                            <input type="text" name="roleName" value="${roleEdit}" required/>
                            </div>
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
            window.location.href = "http://"+window.location.hostname+":8080" + "/admin/role/search?searchStr=" +searchStr;
            console.log(searchStr);
        });
        </script>

    </stripes:layout-component>
</stripes:layout-render>