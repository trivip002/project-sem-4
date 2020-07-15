<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default.jsp" pageTitle="All Courses">
    <stripes:layout-component name="contents">
        <div class="_215b01">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section3125">
                            <div class="row justify-content-center">
                                <div class="col-xl-4 col-lg-5 col-md-6">
                                    <div class="preview_video">
                                        <a href="#" class="fcrse_img" data-toggle="modal" data-target="#videoModal">
                                            <img src="<c:url value="/upload/${course.courseThumbnail}"/>" alt="${course.courseImg}">
                                            <div class="course-overlay">
                                                <div class="badge_seller">Bestseller</div>
                                                    <%--                                                <span class="play_btn1"><i class="uil uil-play"></i></span>--%>
                                                    <%--                                                <span class="_215b02">Preview this course</span>--%>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="_215b10">
                                        <a href="#" class="_215b11">
                                            <span><i class='uil uil-heart-alt'></i></span>Wishlist
                                        </a>
                                        <a href="#" class="_215b12">
                                            <span><i class="uil uil-windsock"></i></span>Report abuse
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-lg-7 col-md-6">
                                    <div class="_215b03">
                                        <h2>${course.courseName}</h2>
                                        <span class="_215b04">${course.courseSubtitle}</span>
                                    </div>
                                        <%--                                    <div class="_215b05">--%>
                                        <%--                                        <div class="crse_reviews mr-2">--%>
                                        <%--                                            <i class="uil uil-star"></i>4.5--%>
                                        <%--                                        </div>--%>
                                        <%--                                        (81,665 ratings)--%>
                                        <%--                                    </div>--%>
                                        <%--                                    <div class="_215b05">--%>
                                        <%--                                        114,521 students enrolled--%>
                                        <%--                                    </div>--%>
                                    <div class="_215b06">
                                        <div class="_215b07">
                                            <span><i class='uil uil-comment'></i></span>
                                                ${course.courseLanguage}
                                        </div>
                                    </div>
                                    <c:if test="${course.modifiedDate!=null}">
                                        <div class="_215b05">
                                            Last updated ${course.modifiedDate}
                                        </div>
                                    </c:if>
                                    <ul class="_215b31">
                                        <c:if test="${!isWatchVideo}">
                                            <li><button id="btn-add-to-card" class="btn_adcart">Add to Cart</button></li>
                                        </c:if>
                                        <%--<li><button class="btn_buy">Buy Now</button></li>--%>
                                    </ul>
                                    <div class="_215fgt1">
                                        30-Day Money-Back Guarantee
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="_215b15 _byt1458">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <c:if test="${course.createdBy!=null}">
                        <div class="user_dt5">
                            <div class="user_dt_left">
                                <div class="live_user_dt">
                                    <div class="user_img5">
                                        <a href="#"><img src="images/left-imgs/img-1.jpg" alt=""></a>
                                    </div>
                                    <div class="user_cntnt">
                                        <a href="#" class="_df7852">${course.createdBy}</a>
                                        <button class="subscribe-btn">Contact</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:if>
                        <div class="course_tabs">
                            <nav>
                                <div class="nav nav-tabs tab_crse justify-content-center" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-selected="true">About</a>
                                    <a class="nav-item nav-link" id="nav-courses-tab" data-toggle="tab" href="#nav-courses" role="tab" aria-selected="false">Courses Content</a>
                                    <a class="nav-item nav-link" id="nav-reviews-tab" data-toggle="tab" href="#nav-reviews" role="tab" aria-selected="false">Reviews</a>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="_215b17">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="course_tab_content">
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-about" role="tabpanel">
                                    <div class="_htg451">
                                        ${course.courseDescription}
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-courses" role="tabpanel">
                                    <div class="crse_content">
                                        <h3>Course content</h3>
                                        <div class="_112456">
                                            <ul class="accordion-expand-holder">
                                                <li><span class="accordion-expand-all _d1452">Expand all</span></li>
                                                <li><span class="_fgr123"> ${course.section.size()} lectures</span></li>
                                                <li><span class="_fgr123">47:06:29</span></li>
                                            </ul>
                                        </div>
                                        <div id="accordion" class="ui-accordion ui-widget ui-helper-reset">
                                            <c:forEach items="${sections}" var="s">
                                                    <a href="javascript:void(0)" class="accordion-header ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all">
                                                        <div class="section-header-left">
													<span class="section-title-wrapper">
														<i class='uil uil-presentation-play crse_icon'></i>
														<span class="section-title-text">${s.sectionTitle}</span>
													</span>
                                                        </div>
                                                        <div class="section-header-right">
                                                            <span class="num-items-in-section">${s.videos.size()} videos</span>
                                                            <span class="section-header-length">${s.sectionDuration} minute(s)</span>
                                                        </div>
                                                    </a>
                                                    <div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom">
                                                        <c:forEach items="${s.videos}" var="v1">

                                                        <div class="lecture-container">
                                                            <div class="left-content">
                                                                <i class='uil uil-play-circle icon_142'></i>
                                                                <div class="top">
                                                                    <div class="title">${v1.videoName}</div>
                                                                </div>
                                                            </div>
                                                            <div class="details">
                                                                <c:if test="${isWatchVideo}">
                                                                    <a href="#" data-toggle="modal" data-target="#viv-preview-${v1.videoId}" class="preview-text">Preview</a>
                                                                </c:if>

                                                                <div class="modal" id="viv-preview-${v1.videoId}">
                                                                    <div class="modal-dialog">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h3 class="modal-title">${v1.videoName} - Preview</h3>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <video width="400" controls id="video-${v1.videoId}">
                                                                                    <source src="<c:url value="/upload/${v1.videoUrl}"/>" type="video/mp4">
                                                                                    Your browser does not support HTML video.
                                                                                </video>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button onclick="backVideo('video-${v1.videoId}')" type="button" id="btnPreviewBack" class="btn btn-default" data-dismiss="modal" >BACK</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        </c:forEach>
                                                    </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-reviews" role="tabpanel">
                                    <div class="student_reviews">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="reviews_left">
                                                    <h3>Student Feedback</h3>
                                                    <div class="ui search focus mt-30">
                                                        <div class="ui form swdh30">
                                                            <div class="field">
                                                                <textarea rows="6" name="description" id="id_about" placeholder="Describe your review or share your thought"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="save_btn" style="margin-top: 20px; width: 100%;" type="submit">Send Feedback</button>
                                                </div>
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="review_all120" id="review_all">
                                                    <c:forEach items="${review}" var="r">
                                                        <div class="review_item">
                                                            <div class="review_usr_dt">
                                                                <img src="<c:url value="/upload/${editorAvatar}"/>" alt="...">
                                                                <div class="rv1458">
                                                                    <h4 class="tutor_name1">${r.createdBy.toUpperCase()}</h4>
                                                                    <span class="time_145">${r.createdDate.toLocaleString()}</span>
                                                                </div>
                                                            </div>
                                                            <p class="rvds10">${r.reviewContent}</p>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                var courseId = '${course.courseId}';
                var result = "";
                $('#btn-add-to-card').click(function() {
                    run_waitMe();
                    var isDisable = false;
                    $.each(courseCookies, function( i, val ) {
                        if(val['id'] === courseId){
                            isDisable = true;
                        }
                    });
                    var dataBiding = {
                        courseId: courseId,
                        courseCookies: courseCookies
                    };
                    setTimeout(function(){
                        if(isDisable){
                            alert('this course is exist carts');
                            $('.containerLoading').waitMe('hide');
                        }else{
                            window.location.href = "http://localhost:8080/";
                        }
                    }, 2000);
                    if(!isDisable){
                        $.ajax({
                            url: "/api/cart/add-to-cart",
                            method: "POST",
                            dataType: 'json',
                            contentType:'application/json',
                            data: JSON.stringify(dataBiding),
                            success: function(result) {
                            }
                        });
                    }
                });
            });
            function backVideo(videoId) {
                $('#'+videoId).get(0).pause();
            }
        </script>
    </stripes:layout-component>
</stripes:layout-render>