<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="${title}" pageCss="style.css">
	<stripes:layout-component name="contents">

		<!-- Body Start -->

		<div class="sa4d25">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="st_title"><i class="uil uil-analysis"></i> Create New ${title}</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="course_tabs_1">
							<div class="tab-from-content">

								<div class="course__form">
									<div class="general_info10">
										<form action="<c:url value='/admin/blogBE'/> " method="post" commandName="saveOrUpdate">
										<div class="row">
											<div class="col-lg-6 col-md-6">
													<div class="ui search focus mt-30 lbel25">
														<div class="ui left icon input swdh19">
															<input class="prompt srch_explore" type="hidden" name="blogId" value="${lstBlogEdit.blogId}"/>
														</div>
													</div>
													<div class="ui search focus mt-30 lbel25">
														<div class="ui left icon input swdh19">
															<input class="prompt srch_explore" type="text" name="blogTitle" value="${lstBlogEdit.blogTitle}" />
														</div>
													</div>
													<div class="ui search focus mt-30 lbel25">
														<div class="ui left icon input swdh19">
															<input class="prompt srch_explore" type="text" name="blogContent" value="${lstBlogEdit.blogContent}" />
														</div>
													</div>
											</div>

										</div>
											<div class="step-footer step-tab-pager">
												<button type="submit" data-direction="prev" class="btn btn-outline-danger btn-v">Update</button>
											</div>
										</form>

									</div>
								</div>
								<br/>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- Body End -->

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