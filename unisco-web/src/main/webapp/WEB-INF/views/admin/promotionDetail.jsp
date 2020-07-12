<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 6/23/2020
  Time: 3:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Promotion Detail Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <ul class="more_options_tt" style="float: right">
                            <li>
                                <div class="explore_search">
                                    <div class="ui search focus">
                                        <div class="ui left icon input swdh11 swdh15">
                                            <input class="prompt srch_explore" type="text" placeholder="Search field">
                                            <i class="uil uil-search-alt icon icon8"></i>
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
                                    <th scope="col">Promotion Code</th>
                                    <th scope="col">Course Name</th>
                                    <th scope="col">Course Price</th>
                                    <th scope="col">Discount Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listPromotionDetail}" var="item">
                                    <tr>
                                        <td>${item.promotion.promotionCode}</td>
                                        <td>${item.course.courseName}</td>
                                        <td>${item.course.coursePrice}</td>
                                        <td>${item.promotion.discountPrice}</td>
                                        <td>
                                      update
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
                        <p class="heading lead" style="color: white">ADD PROMOTION DETAIL</p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>

                    <!--Body-->
                    <div class="modal-body">
                        <form method="post"  action="<c:url value='/admin/promotionDetail/create'/>">
                            <input type="hidden" name="promotionId" value="">
                            <h3>Promotion Code:</h3>
                            <div class="ui left icon input">
                                <select   name="promotionCode">
                                    <c:forEach items="${listPromotion}" var="item">
                                        <option>${item.promotionCode}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <br/>
                            <input type="hidden" name="courseId" value="">
                            <h3>Course Name:</h3>
                            <div class="ui left icon input">
                                <select name="courseName" >
                                    <c:forEach items="${listCourse}" var="item">
                                        <option>${item.courseName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <br/> <br/>
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

    </stripes:layout-component>
</stripes:layout-render>