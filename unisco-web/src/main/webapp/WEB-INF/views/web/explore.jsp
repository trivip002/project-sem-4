<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default.jsp" pageTitle="All Courses">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-12 col-lg-8">
                        <div class="section3125">
                            <div class="explore_search">
                                <div class="ui search focus">
                                    <div class="ui left icon input swdh11">
<%--                                        <input class="prompt srch_explore" name="key" type="text" placeholder="Search for Tuts Videos, Tutors, Tests and more..">--%>
<%--                                        --%>
<%--                                        <button type="submit" id="btnSearch" class="rvsrch_btn"><i class="uil uil-search"></i></button>--%>
<%--                                        <i class="uil uil-search-alt icon icon2"></i>--%>
                                        <div class="review_search" style="width: 100%;">
<%--                                            <input class="rv_srch" type="text" name="searchStr" id="searchStr" placeholder="Search courses...">--%>
<%--                                            <button type="submit" id="btnSearch" class="rvsrch_btn"><i class="uil uil-search"></i></button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="_14d25">
                            <div class="row">
                                <c:forEach items="${listCourse}" var="c">
                                <div class="col-lg-3 col-md-4">
                                    <div class="fcrse_1 mt-30">
                                        <a href="<c:url value="/explore/course?courseId=${c.courseId}"/>" class="fcrse_img">
                                            <img src="<c:url value="/upload/${a.courseThumbnail}"/>" alt="">
                                            <div class="course-overlay">
                                                <div class="badge_seller">Bestseller</div>
                                                <div class="crse_reviews">
                                                    <i class="uil uil-star"></i>4.5
                                                </div>
                                                <div class="crse_timer">
                                                    ${c.courseDuration} hours
                                                </div>
                                            </div>
                                        </a>
                                        <div class="fcrse_content">
                                            <div class="eps_dots more_dropdown">
                                                <a href="#"><i class="uil uil-heart-alt"></i></a>
                                            </div>
                                            <a href="<c:url value="/explore/course?courseId=${c.courseId}"/>" class="crse14s">${c.courseName}</a>
                                            <a href="#" class="crse-cate">
                                                <c:forEach items="${c.category}" var="ca">
                                                    ${ca.cateName.concat(" |")}
                                                </c:forEach>
                                            </a>
                                            <div class="auth1lnkprce">
                                                <p class="cr1fot">By <a href="#">${c.createdBy==null?"Anonymous":c.createdBy}</a></p>
                                                <div class="prce142">$${c.coursePrice}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $('#btnSearch').click(function () {
                var searchStr;
                searchStr = $('#searchStr').val();
                window.location.href = "http://"+window.location.hostname+":8080" + "/explore/search?key=" +searchStr;
                console.log(searchStr);
            });
        </script>
    </stripes:layout-component>
</stripes:layout-render>