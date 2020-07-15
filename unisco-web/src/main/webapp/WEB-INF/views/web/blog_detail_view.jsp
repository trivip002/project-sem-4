<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default_2.jsp" pageTitle="Blogs">
    <stripes:layout-component name="contents">
        <div class="_215b15">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title125">
                            <div class="titleleft">
                                <div class="ttl121">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="<c:url value="/home"/>">Home</a></li>
                                            <li class="breadcrumb-item"><a href="<c:url value="/blog"/>">Our Blog</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">${blog.blogTitle}</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                            <div class="titleright">
                                <a href="<c:url value="/blog"/>" class="blog_link"><i class="uil uil-angle-double-left"></i>Back to Blog</a>
                            </div>
                        </div>
                        <div class="title126">
                            <h2>${blog.blogTitle}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="faq1256">
            <div class="container">
                <div class="row justify-content-md-center">
                    <div class="col-md-8">
                        <div class="bg_blog2">
                            <img src="<c:url value="/upload/${blog.blogImg}"/>" alt="<c:url value="/upload/${blog.blogImg}"/>">
                        </div>
                        <div class="vew120 frc123">
                            <div class="vdtodt55">
                                <span class="vdt24">${blog.createdDate}</span>
                            </div>
                            <p>${blog.blogMetaTitle}</p>
                        </div>
                        <div class="vew120 mt-35 mb-30">
                                ${blog.blogContent}
                        </div>
                    </div>



                    <!-- Comment Start -->
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="reviews_left" style="margin-bottom: 5%;">
                                    <div class="review_right_heading">
                                        <h3>Comments</h3>
                                    </div>
                                    <div class="ui form swdh30">
                                        <div class="field">
                                            <textarea rows="6" name="description" id="id_about" placeholder="Describe your thought or share your ideas"></textarea>
                                        </div>
                                    </div>

                                    <button class="save_btn" style="margin-top: 2%; width: 100%;" type="submit">Comment</button>
                                </div>
                            </div>
                        </div>
                        <div class="review_all120">
                            <div class="review_item">
                                <div class="review_usr_dt">
                                    <img src="images/left-imgs/img-1.jpg" alt="">
                                    <div class="rv1458">
                                        <h4 class="tutor_name1">John Doe</h4>
                                        <span class="time_145">2 hour ago</span>
                                    </div>
                                </div>

                                <p class="rvds10">Nam gravida elit a velit rutrum, eget dapibus ex elementum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce lacinia, nunc sit amet tincidunt venenatis.</p>

                            </div>
                            <div class="review_item">
                                <div class="review_usr_dt">
                                    <img src="images/left-imgs/img-2.jpg" alt="">
                                    <div class="rv1458">
                                        <h4 class="tutor_name1">Jassica William</h4>
                                        <span class="time_145">12 hour ago</span>
                                    </div>
                                </div>

                                <p class="rvds10">Nam gravida elit a velit rutrum, eget dapibus ex elementum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce lacinia, nunc sit amet tincidunt venenatis.</p>

                            </div>
                            <div class="review_item">
                                <div class="review_usr_dt">
                                    <img src="images/left-imgs/img-3.jpg" alt="">
                                    <div class="rv1458">
                                        <h4 class="tutor_name1">Albert Dua</h4>
                                        <span class="time_145">5 days ago</span>
                                    </div>
                                </div>

                                <p class="rvds10">Nam gravida elit a velit rutrum, eget dapibus ex elementum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce lacinia, nunc sit amet tincidunt venenatis.</p>

                            </div>
                            <div class="review_item">
                                <div class="review_usr_dt">
                                    <img src="images/left-imgs/img-4.jpg" alt="">
                                    <div class="rv1458">
                                        <h4 class="tutor_name1">Zoena Singh</h4>
                                        <span class="time_145">15 days ago</span>
                                    </div>
                                </div>

                                <p class="rvds10">Nam gravida elit a velit rutrum, eget dapibus ex elementum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce lacinia, nunc sit amet tincidunt venenatis.</p>

                            </div>
                            <div class="review_item">
                                <div class="review_usr_dt">
                                    <img src="images/left-imgs/img-5.jpg" alt="">
                                    <div class="rv1458">
                                        <h4 class="tutor_name1">Joy Dua</h4>
                                        <span class="time_145">20 days ago</span>
                                    </div>
                                </div>
                                <p class="rvds10">Nam gravida elit a velit rutrum, eget dapibus ex elementum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce lacinia, nunc sit amet tincidunt venenatis.</p>
                            </div>
                            <div class="review_item">
                                <a href="#" class="more_reviews">See More Comments</a>
                            </div>
                        </div>
                    </div>
                    <!-- Comment End -->
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>