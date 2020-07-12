<%--<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="${title}" pageCss="style.css">
	<stripes:layout-component name="contents">

		<!-- Body Start -->
		<input type="hidden" name="entireView" value="blogCateBE"/>
		<div class="sa4d25">
			<div class="container-fluid">			
				<div class="row">
					<div class="col-lg-12">	
						<h2 class="st_title"><i class="uil uil-book-alt"></i>${title.toUpperCase()} MANAGER</h2>
					</div>			
					<div class="col-md-12">
						<div class="card_dash1">
							<div class="card_dash_left1">
								<i class="uil uil-book-alt"></i>
								<h1>List of ${title.toUpperCase()}</h1>
							</div>
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
							<div class="card_dash_right1">
								<button class="create_btn_dash" data-toggle="modal" data-target="#createModel"><i class="uil uil-plus-circle"> </i>Create New ${title} </button>
							</div>
						</div>
					</div>					
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="my_courses_tabs">
							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-my-courses" role="tabpanel">
									<div class="table-responsive mt-30">
										<table class="table ucp-table">
											<thead class="thead-s">
												<tr>
													<th class="text-center" scope="col">blogCateId</th>
													<th>blogCateTitle</th>
													<th  scope="col">blogCateContent</th>
													<th class="text-center" scope="col">Action</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items="${lstBlog}" var="item">
														<tr>
															<td class="text-center" name = "blogCateId" id="blogCateId" data-blogCateId="${item.blogCateId}">${item.blogCateId}</td>
															<td name = "blogCateTitle" id="blogCateTitle" data-blogCateTitle="${item.blogCateTitle}">${item.blogCateTitle}</td>
															<td name = "blogCateContent" id="blogCateContent">${item.blogCateContent}</td>
															<td class="text-center">
																<a href="<c:url value='/admin/blogCateBE/${item.blogCateId}'/>" type="submit" title="Edit" class="btn btn-outline-primary btn-edit"><i class="uil uil-edit-alt"></i></a>
																<button title="Details" class="btn btn-outline-info"><i class="uil-expand-arrows"></i></button>
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
			</div>
		</div>
		<!-- Body End -->

<!-- Central Modal Medium Danger -->
		<%--Begin-Create-Model--%>
		<div class="modal fade" id="createModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			 aria-hidden="true">
			<div class="modal-dialog modal-notify modal-danger" role="document">
				<!--Content-->
					<div class="modal-content">
						<!--Header-->
						<div class="modal-header">
							<p class="heading lead">Add ${title}</p>

							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true" class="white-text">&times;</span>
							</button>
						</div>

						<!--Body-->
						<div class="modal-body">
							<form action="" method="post" commandName="saveOrUpdate">
								<div class="form-group">
									<input type="hidden" class="form-control" name="blogCateId"/>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="blogCateTitle" placeholder="blogCateTitle"/>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="blogCateContent" placeholder="blogCateContent"/>
								</div>
								<!--Footer-->
								<div class="modal-footer justify-content-center">
									<button type="submit" class="btn btn-outline-primary">Add</button>
									<a type="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">Cancel</a>
								</div>
							</form>
						</div>

					</div>
				<!--/.Content-->
			</div>
		</div>
		<%--End-Create-Model--%>
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