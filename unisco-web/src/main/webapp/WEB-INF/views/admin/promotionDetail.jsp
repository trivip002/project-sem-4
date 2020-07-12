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
                <h2 class="st_title"><i class="uil uil-book-alt"></i>Promotion Detail</h2>
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <ul class="more_options_tt" style="float: right">
                            <li>
                                <div class="explore_search">
                                    <div class="ui search focus">
                                        <div class="review_search" style="width: 300px;">
                                            <input class="rv_srch" type="text" name="searchStr" id="searchStr" placeholder="Search by Promotion Code..."/>
                                            <button type="submit" id="btnSearch" class="rvsrch_btn"><i class="uil uil-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <button id="add-btn" type="button" class="upload_btn"  data-toggle="modal" data-target="#centralModalDanger"><i class="uil uil-plus-circle"></i></button>
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
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listPromotionDetail}" var="item">
                                    <tr>
                                        <td><a href="/admin/promotion/">${item.promotion.promotionCode}</a></td>
                                        <td><a href="/admin/course/">${item.course.courseName}</a></td>
                                        <td>${item.course.coursePrice}</td>
                                        <td>${item.promotion.discountPrice}</td>
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
                            <input type="hidden" name="promotionId" value=""/>
                            <input type="hidden" name="courseId" value=""/>
                            <h3>Promotion Code:</h3>
                            <div class="ui left icon input">
                                <select id="promotion-selection" name="promotionCode">
                                    <c:forEach items="${listPromotion}" var="item">
                                        <option value="${item.promotionId}">${item.promotionCode}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <br/>
                            <h3>Course Name:</h3>
                            <div id="course-content" class="ui left icon input">
                                <select class="course-name" name="courseName" >
                                    <c:forEach items="${listCourse}" var="item">
                                        <option value="${item.courseId}">${item.courseName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <br/> <br/>
                            <input id="submit-btn" type="submit" class="btn btn-danger" value="Add"/>
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
                window.location.href = "http://"+window.location.hostname+":8080" + "/admin/promotionDetail/search?searchStr=" +searchStr;
                console.log(searchStr);
            });
            $(document).ready(function () {
                $('#add-btn').click(function () {
                    $.ajax({
                        url: "/api/promotion-detail/get-courses",
                        method: "GET",
                        data: {promotionId:1},
                        success: function(result) {
                            $('#course-content').empty();
                            $('#course-content').append(result);
                        }
                    });
                });
                $('#promotion-selection').change(function () {
                    $.ajax({
                        url: "/api/promotion-detail/get-courses",
                        method: "GET",
/*                        processData: false,
                        contentType: false,*/
                        data: {promotionId:$(this).val()},
                        success: function(result) {
                            $('#course-content').empty();
                            $('#course-content').append(result);
                        }
                    });
                });
                $('#submit-btn').click(function () {
                    var formData = new FormData();
                    formData.append('promotionId', $('#promotion-selection').val());
                    formData.append('courseId', $('#course-content').find('.course-name').val());
                    $.ajax({
                        url: "/api/promotion-detail",
                        method: "POST",
                        processData: false,
                        contentType: false,
                        data: formData,
                        success: function(result) {
                            if(result=='success'){
                                window.location.href="";
                            }
                        }
                    });
                });
            });
        </script>
    </stripes:layout-component>
</stripes:layout-render>