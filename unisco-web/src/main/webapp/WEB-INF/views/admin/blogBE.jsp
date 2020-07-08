<%--<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="${title}" pageCss="style.css">
	<stripes:layout-component name="contents">

		<!-- Body Start -->
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
													<th class="text-center" scope="col">blogId</th>
													<th>blogTitle</th>
													<th  scope="col">blogContent</th>
                                                    <th class="text-center">createdDate</th>
                                                    <th class="text-center">modifiedDate</th>
                                                    <th class="text-center">createdBy</th>
                                                    <th class="text-center">modifiedBy</th>
													<th class="text-center" scope="col">Action</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="item" items="${lstBlog}">
														<tr>
															<td class="text-center blogId" id="blogId" data-blogId="${item.blogId}">${item.blogId}</td>
															<td class="blogTitle" id="blogTitle" data-blogTitle="${item.blogTitle}">${item.blogTitle}</td>
															<td class="blogContent" id="blogContent">${item.blogContent}</td>
															<td class="text-center createdDate" id="createdDate">${item.createdDate}</td>
															<td class="text-center modifiedDate" id="modifiedDate">${item.modifiedDate}</td>
															<td class="text-center createdBy" id="createdBy">${item.createdBy}</td>
															<td class="text-center modifiedBy" id="modifiedBy">${item.modifiedBy}</td>
															<td class="text-center">
																<a href="<c:url value='/admin/blogBE/${item.blogId}' />" type="submit" title="Edit" class="btn btn-outline-primary btn-edit"><i class="uil uil-edit-alt"></i></a>
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
									<input type="hidden" class="form-control" name="blogId"/>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="blogTitle" placeholder="blogTitle"/>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="blogContent" placeholder="blogContent"/>
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