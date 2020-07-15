<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default_2.jsp" pageTitle="Blogs">
    <stripes:layout-component name="contents">
        <div class="_215cd2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="course_tabs">
                            <nav>
                                <div class="nav nav-tabs tab_crse  justify-content-center">
                                    <a class="nav-item nav-link" href="<c:url value="/about"/>">About</a>
                                    <a class="nav-item nav-link active" href="<c:url value="/blog"/>">Blog</a>
                                    <a class="nav-item nav-link" href="<c:url value="/company"/>">Company</a>
                                    <a class="nav-item nav-link" href="<c:url value="/career"/>">Careers</a>
                                </div>
                            </nav>
                        </div>
                        <div class="title129 mt-35 mb-35">
                            <h2>Insights, ideas, and stories</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="_205ef5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-5">
                        <div class="fcrse_3 mt-50">
                            <ul class="blogleft12">
                                <li>
                                    <div class="explore_search blg152">
                                        <div class="ui search focus">
                                            <div class="ui left icon input swdh11 swdh15">
                                                <input class="prompt srch_explore" type="text" id="searchStr" name="searchStr" placeholder="Search" style="padding-left: 15px !important;">
                                                <button type="submit" id="btnSearch" style="width: 35px; height: 35px;" class="rvsrch_btn"><i class="uil uil-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="#collapse1" class="category-topics cate-right collapsed" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapse1">Categories</a>
                                    <div class="collapse" id="collapse1" style="">
                                        <ul class="category-card">
                                            <li>
                                                <a href="#" class="category-item1 active">All</a>
                                                <c:forEach items="${listBlogCate}" var="bc">
                                                    <a href="<c:url value="/blog/searchById?blogCateId=${bc.blogCateId}" />" class="category-item1">${bc.blogCateTitle}</a>
                                                </c:forEach>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="socl148">
                                        <button class="twiter158" data-href="#" onclick="sharingPopup(this);" id="twitter-share"><i class="uil uil-twitter ic45"></i>Follow</button>
                                        <button class="facebook158" data-href="#" onclick="sharingPopup(this);" id="facebook-share"><i class="uil uil-facebook ic45"></i>Follow</button>
                                    </div>
                                </li>
                                <li>
                                    <div class="help_link">
                                        <p>Learn More</p>
                                        <a href="#">Cursus Help Center</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-7">
                        <c:forEach items="${listBlog}" var="b">
                            <div class="blogbg_1 mt-50">
                                <a href="<c:url value="/blog/view?id=${b.blogId}"/>" class="hf_img">
                                    <img src="<c:url value="/static/assets/images/blog/img-1.jpg"/>" alt="...">
                                    <div class="course-overlay"></div>
                                </a>
                                <div class="hs_content">
                                    <div class="vdtodt">
                                        <!-- <span class="vdt14">109k views</span> -->
                                        <span class="vdt14">${"".equals(b.createdDate)?"N/A":b.createdDate}</span>
                                    </div>
                                    <a href="<c:url value="/blog/view?id=${b.blogId}"/>" class="crse14s title900">${b.blogTitle}</a>
                                    <p class="blog_des">${b.blogMetaTitle}</p>
                                    <a href="<c:url value="/blog/view?id=${b.blogId}"/>" class="view-blog-link">Read More<i class="uil uil-arrow-right"></i></a>
                                </div>
                            </div>
                        </c:forEach>

                        <c:if test="${listBlog.size() == 0}">
                            <div class="title129 mt-35 mb-35">
                                <h2>No blog matches the selected category</h2>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            $('#btnSearch').click(function () {
                searchStr = $('#searchStr').val();
                window.location.href = "http://"+window.location.hostname+":8080" + "/blog/searchByTitle?blogTitle=" +searchStr;
                console.log(searchStr);
            });
            var input = document.getElementById("searchStr");
            input.addEventListener("keyup", function () {
                if (event.keyCode === 13){
                    event.preventDefault();
                    document.getElementById("btnSearch").click();
                }
            });
        </script>
    </stripes:layout-component>
</stripes:layout-render>