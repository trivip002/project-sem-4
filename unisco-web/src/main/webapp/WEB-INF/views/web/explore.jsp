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
                                        <input class="prompt srch_explore" type="text" placeholder="Search for Tuts Videos, Tutors, Tests and more..">
                                        <i class="uil uil-search-alt icon icon2"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <!-- <div class="section3125 mb-15 mt-50">
                            <h4 class="item_title">Live Streams</h4>
                            <a href="live_streams.html" class="see150">See all</a>
                            <div class="la5lo1">
                                <div class="owl-carousel live_stream owl-theme">
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-1.jpg" alt="">
                                                <h4>John Doe</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-2.jpg" alt="">
                                                <h4>Jassica</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-9.jpg" alt="">
                                                <h4>Edututs+</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-3.jpg" alt="">
                                                <h4>Joginder Singh</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-4.jpg" alt="">
                                                <h4>Zoena</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-5.jpg" alt="">
                                                <h4>Albert Dua</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-6.jpg" alt="">
                                                <h4>Ridhima</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-7.jpg" alt="">
                                                <h4>Amritpal</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="stream_1">
                                            <a href="live_output.html" class="stream_bg">
                                                <img src="images/left-imgs/img-8.jpg" alt="">
                                                <h4>Jimmy</h4>
                                                <p>live<span></span></p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="col-md-12">
                        <div class="_14d25">
                            <div class="row">
                                <c:forEach items="${listCourse}" var="c">
                                <div class="col-lg-3 col-md-4">
                                    <div class="fcrse_1 mt-30">
                                        <a href="course_detail_view.html" class="fcrse_img">
                                            <img src="${c.courseThumbnail}" alt="">
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
                                            <a href="course_detail_view.html" class="crse14s">${c.courseName}</a>
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
<%--                                <div class="col-md-12">--%>
<%--                                    <div class="main-loader mt-50">--%>
<%--                                        <div class="spinner">--%>
<%--                                            <div class="bounce1"></div>--%>
<%--                                            <div class="bounce2"></div>--%>
<%--                                            <div class="bounce3"></div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>