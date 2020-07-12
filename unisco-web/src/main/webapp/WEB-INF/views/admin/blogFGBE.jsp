<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/defaultvw.jsp" pageTitle="${title}" pageCss="style.css">
	<stripes:layout-component name="contents">




	<!-- Body Start -->
		<div class="_205ef5">
			<div class="container-fluid">
<%--letf side--%>
					<%--
					<div class="col-lg-3 col-md-5">
						<div class="fcrse_3 mt-50">
							<ul class="blogleft12">
								<li>
									<div class="explore_search blg152">
										<div class="ui search focus">
											<div class="ui left icon input swdh11 swdh15">
												<input class="prompt srch_explore" type="text" placeholder="Search">
												<i class="uil uil-search-alt icon icon2"></i>
											</div>
										</div>
									</div>
								</li>
								<li>
									<a href="#collapse1" class="category-topics cate-right collapsed" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapse1">Labels</a>
									<div class="collapse" id="collapse1" style="">
										<ul class="category-card">
											<li>
												<a href="#" class="category-item1 active">All</a>																											
												<a href="#" class="category-item1">Students</a>																												
												<a href="#" class="category-item1">Instructors</a>																												
												<a href="#" class="category-item1">Ideas & Opinions</a>																												
												<a href="#" class="category-item1">Edututs+ News</a>																												
												<a href="#" class="category-item1">Social Innovation</a>
											</li>											
										</ul>
									</div>
									<a href="#collapse2" class="category-topics cate-right collapsed" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapse2">Archive</a>
									<div class="collapse" id="collapse2" style="">
										<ul class="category-card">
											<li>
												<a href="#" class="category-item1">January 2020</a>																											
												<a href="#" class="category-item1">February 2020</a>																											
												<a href="#" class="category-item1">March 2020</a>																											
												<a href="#" class="category-item1">April 2020</a>																																																																																											
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
--%>
<%--main content--%>
	<form action="" method="get">
		<div class="search120">
			<div class="ui search">
				<div class="ui left icon input swdh10">
					<input class="prompt srch10" name="search" type="text" placeholder="Search"/>
					<i class='uil uil-search-alt icon icon1'></i>
				</div>
				<button class="btn btn-outline-info btn-v" type="submit">Search</button>
			</div>

		</div>
	</form>
<%--					<div class="col-lg-9 col-md-7">--%>
		<c:forEach items="${lstBlog}" var="item">

	<div class="row">
						<div class="blogbg_1 mt-50">
							<a href="blog_single_view.html" class="hf_img">
								<img src="<c:url value='/static/assets/images/blog/img-1.jpg'/>" alt="">
								<div class="course-overlay"></div>
							</a>
							<div class="hs_content">
								<div class="vdtodt">
									<span class="vdt14">109k views</span>
									<span class="vdt14">March 10, 2020</span>
								</div>
								<a href="blog_single_view.html" class="crse14s title900">${item.blogTitle}</a>
								<p class="blog_des">${item.blogContent}</p>
								<a href="blog_single_view.html" class="view-blog-link">Read More<i class="uil uil-arrow-right"></i></a>
							</div>
						</div>
	</div>
						</c:forEach>
					</div>

<%--pagination--%>
						<div class="main-p-pagination">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item disabled">
										<a class="page-link" href="#" aria-label="Previous">
											PREV
										</a>
									</li>
									<li class="page-item"><a class="page-link active" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">...</a></li>
									<li class="page-item"><a class="page-link" href="#">24</a></li>
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Next">
											NEXT
										</a>
									</li>
								</ul>
							</nav>
						</div>			
					</div>
<%--			</div>--%>
		</div>


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