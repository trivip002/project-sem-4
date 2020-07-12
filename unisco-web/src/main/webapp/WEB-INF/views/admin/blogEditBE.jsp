<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="${title}" pageCss="style.css">
	<stripes:layout-component name="contents">

		<!-- Body Start -->

		<div class="sa4d25">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="st_title"><i class="uil uil-analysis"></i> Update ${title}</h2>
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
														<label for="blogTitle">blogTitle</label>
														<div class="ui left icon input swdh19">
															<input id="blogTitle" class="prompt srch_explore" type="text" name="blogTitle" value="${lstBlogEdit.blogTitle}" />
														</div>
													</div>


													<div class="ui search focus mt-30 lbel25">
														<label for="isActive">isActive</label>
														<div class="ui left icon input swdh19">
															<select name="isActive" id="isActive" type="text" class="btn-v">
																	<option value="${lstBlogEdit.isActive}" selected>${lstBlogEdit.isActive==0?'Inactive':'Active'}</option>
																	<option value="${lstBlogEdit.isActive==0?1:0}">${lstBlogEdit.isActive==0?'Active':'Inactive'}</option>
															</select>
														</div>
													</div>


													<div class="ui search focus mt-30 lbel25">
														<label for="blogCateLst">blogCateTitle</label>
														<div class="ui left icon input swdh19">
															<select name="blogCateId" id="blogCateLst" class="btn-v">
																<option value="${lstBlogEdit.blog.blogCateId}" selected>${lstBlogEdit.blog.blogCateTitle}</option>
																<c:forEach items="${selectBlogCate}" var="select">
																	<option value="${select.blogCateId == lstBlogEdit.blog.blogCateId ?select.blogCateId:''}">${select.blogCateTitle == lstBlogEdit.blog.blogCateTitle?'':select.blogCateTitle}</option>
																</c:forEach>
															</select>
														</div>
													</div>

													<div class="ui search focus mt-30 lbel25">
														<label for="id_course_description">blogContent</label>
														<div class="course_des_bg">
															<ul class="course_des_ttle ui left icon input swdh19">
																<li><a href="#"><i class="uil uil-bold"></i></a></li>
																<li><a href="#"><i class="uil uil-italic"></i></a></li>
																<li><a href="#"><i class="uil uil-list-ul"></i></a></li>
																<li><a href="#"><i class="uil uil-left-to-right-text-direction"></i></a></li>
																<li><a href="#"><i class="uil uil-right-to-left-text-direction"></i></a></li>
																<li><a href="#"><i class="uil uil-list-ui-alt"></i></a></li>
																<li><a href="#"><i class="uil uil-link"></i></a></li>
																<li><a href="#"><i class="uil uil-text-size"></i></a></li>
																<li><a href="#"><i class="uil uil-text"></i></a></li>
															</ul>
															<div class="textarea_dt">
																<div class="ui form swdh339">
																	<div class="field">
																		<textarea rows="5" name="blogContent" id="id_course_description" placeholder="Insert your course description">${lstBlogEdit.blogContent}</textarea>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="step-footer step-tab-pager ui search focus mt-30 lbel25">
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