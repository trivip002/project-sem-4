<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Course Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-book-alt"></i>Courses</h2>
                    </div>
                    <div class="col-md-12">
                        <div class="card_dash1">
                            <div class="card_dash_left1">
                                <i class="uil uil-book-alt"></i>
                                <h1>Jump Into Course Creation</h1>
                            </div>
                            <div class="card_dash_right1">
                                <a href="/admin/course/edit"><button class="create_btn_dash">Create Your Course</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="my_courses_tabs">
                            <ul class="nav nav-pills my_crse_nav" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-my-courses-tab" data-toggle="pill" href="#pills-my-courses" role="tab" aria-controls="pills-my-courses" aria-selected="true"><i class="uil uil-book-alt"></i>My Courses</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" id="pills-my-purchases-tab" data-toggle="pill" href="#pills-my-purchases" role="tab" aria-controls="pills-my-purchases" aria-selected="false"><i class="uil uil-download-alt"></i>My Purchases</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" id="pills-upcoming-courses-tab" data-toggle="pill" href="#pills-upcoming-courses" role="tab" aria-controls="pills-upcoming-courses" aria-selected="false"><i class="uil uil-upload-alt"></i>Upcoming Courses</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="card_dash" style="margin-bottom: 30px;">
                                    <div class="ui search" style="float: right;">
                                            <div class="review_search" style="width: 300px;">
                                                    <input class="rv_srch" type="text" name="searchStr" id="searchStr" placeholder="Search courses...">
                                                    <button type="submit" id="btnSearch" class="rvsrch_btn"><i class="uil uil-search"></i></button>
                                            </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade show active" id="pills-my-courses" role="tabpanel">
                                    <div class="table-responsive tbl-pagi-1 mt-30">
                                        <table class="table ucp-table">
                                            <thead class="thead-s">
                                            <tr>
                                                <th class="text-center" scope="col">Item No.</th>
                                                <th>Title</th>
                                                <th class="text-center" scope="col">Publish Date</th>
                                                <th class="text-center" scope="col">Sales</th>
                                                <th class="text-center" scope="col">Parts</th>
                                                <th class="text-center" scope="col">Category</th>
                                                <th class="text-center" scope="col">Status</th>
                                                <th class="text-center" scope="col">Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${listCourse}" var="i">
                                            <tr>
                                                <td class="text-center">${i.courseId}</td>
                                                <td><a href="/admin/course/${i.courseId}">${i.courseName}</a></td>
                                                <td class="text-center">${i.createdDate.toLocaleString()}</td>
                                                <td class="text-center">--</td>
                                                <td class="text-center">${i.section.size()}</td>
                                                <td class="text-center">
                                                    <c:forEach items="${i.category!=null?i.category:'N/A'}" var="c">
                                                        <a href="#">
                                                            ${c.cateName}
                                                         </a> |
                                                    </c:forEach>
                                                </td>
                                                <td class="text-center"><b class="course_active">${i.isActive==1?"Active":"Inactive"}</b></td>
                                                <td class="text-center">
                                                    <a href="/admin/course/edit?courseId=${i.courseId}" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!-- Central Modal Medium Danger -->
                                <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                     aria-hidden="true">
                                    <div class="modal-dialog modal-notify modal-danger modal-dialog-centered modal-dialog-scrollable modal-xl" role="document">
                                        <!--Content-->
                                        <div class="modal-content">
                                            <!--Header-->
                                            <div class="modal-header">
                                                <p class="heading lead">Create New Course</p>

                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true" class="white-text">&times;</span>
                                                </button>
                                            </div>

                                            <!--Body-->
                                            <div class="modal-body">
                                                <div class="course_tabs_1">
                                                    <div id="add-course-tab" class="step-app">
                                                        <ul class="step-steps">
                                                            <li class="active">
                                                                <a href="#tab_step1">
                                                                    <span class="number"></span>
                                                                    <span class="step-name">General Information</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#tab_step2">
                                                                    <span class="number"></span>
                                                                    <span class="step-name">Images</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#tab_step3">
                                                                    <span class="number"></span>
                                                                    <span class="step-name">Course Section</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#tab_step4">
                                                                    <span class="number"></span>
                                                                    <span class="step-name">Videos</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <div class="step-content">
                                                            <div class="step-tab-panel step-tab-info active" id="tab_step1">
                                                                <div class="tab-from-content">
                                                                    <div class="title-icon">
                                                                        <h3 class="title"><i class="uil uil-info-circle"></i>General Information</h3>
                                                                    </div>
                                                                    <div class="course__form">
                                                                        <div class="general_info10">
                                                                            <div class="row">
                                                                                <div class="col-lg-6 col-md-6">
                                                                                    <div class="ui search focus mt-30 lbel25">
                                                                                        <label>Course Name*</label>
                                                                                        <div class="ui left icon input swdh19">
                                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your course Name." name="name" data-purpose="edit-course-title" maxlength="60" id="main[name]" value="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6 col-md-6">
                                                                                    <div class="ui search focus mt-30 lbel25">
                                                                                        <label>Course Subtitle*</label>
                                                                                        <div class="ui left icon input swdh19">
                                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your course Subtitle." name="subtitle" data-purpose="edit-course-title" maxlength="60" id="sub[title]" value="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-12 col-md-12">
                                                                                    <div class="course_des_textarea mt-30 lbel25">
                                                                                        <label>Course Description*</label>
                                                                                        <div class="course_des_bg">
                                                                                            <div class="textarea_dt">
                                                                                                <div class="ui form swdh339">
                                                                                                    <div class="field">
                                                                                                        <textarea rows="5" name="description" id="id_course_description" placeholder="Insert your course description"></textarea>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-4 col-md-12">
                                                                                    <div class="mt-30 lbel25">
                                                                                        <label>Language*</label>
                                                                                    </div>
                                                                                    <select class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                                        <option value="">Select Language</option>
                                                                                        <c:forEach items="${listLang}" var="listL">
                                                                                            <option value="${listL.key}">${listL.value}</option>
                                                                                        </c:forEach>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="col-lg-4 col-md-6">
                                                                                    <div class="mt-30 lbel25">
                                                                                        <label>Course Category*</label>
                                                                                    </div>
                                                                                    <select class="ui hj145 dropdown cntry152 prompt srch_explore mdb-select md-form" multiple>
                                                                                        <option value="">Select Category</option>
                                                                                        <c:forEach items="${listCategory}" var="listCat">
                                                                                        <option value="${listCat.cateId}">${listCat.cateName}</option>
                                                                                        </c:forEach>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="col-lg-4 col-md-6">
                                                                                    <div class="mt-30 lbel25">
                                                                                        <label>Course Duration*</label>
                                                                                    </div>
                                                                                    <div class="ui search focus">
                                                                                        <div class="ui left icon input swdh19">
                                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your course Duration." name="courseDuration" data-purpose="edit-course-duration" maxlength="60" id="course[Duration]" value="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="price_course">
                                                                            <div class="row">
                                                                                <div class="col-lg-6 col-md-6 col-sm-6">
                                                                                    <div class="mt-30 lbel25">
                                                                                        <label>Pricing*</label>
                                                                                    </div>
                                                                                    <div class="ui search focus mt-30 lbel25">
                                                                                        <div class="ui left icon input swdh19">
                                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your course Price." name="coursePrice" data-purpose="edit-course-price" maxlength="60" id="course[Price]" value="${courseEdit.coursePrice}">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6 col-md-6 col-sm-6">
                                                                                    <div class="mt-30 lbel25">
                                                                                        <label>Status*</label>
                                                                                    </div>

                                                                                        <div class="ui search focus mt-30 lbel25">
                                                                                            <div class="ui left icon input swdh19">
                                                                                                <select class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                                                    <option value="1">Active</option>
                                                                                                    <option value="0">Inactive</option>
                                                                                                </select>
                                                                                            </div>
                                                                                        </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="step-tab-panel step-tab-gallery" id="tab_step2">
                                                                <div class="tab-from-content">
                                                                    <div class="title-icon">
                                                                        <h3 class="title"><i class="uil uil-image-upload"></i>View</h3>
                                                                    </div>
                                                                    <div class="course__form">
                                                                        <div class="view_info10">
                                                                            <div class="row">
                                                                                <div class="col-lg-12">
                                                                                    <div class="view_all_dt">
                                                                                        <div class="view_img_left">
                                                                                            <div class="view__img">
                                                                                                <img src="images/courses/add_img.jpg" alt="">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="view_img_right">
                                                                                            <h4>Thumbnail</h4>
                                                                                            <p>Upload your course image here. It must meet our course image quality standards to be accepted. Important guidelines: 750x422 pixels; .jpg, .jpeg,. gif, or .png. no text on the image.</p>
                                                                                            <div class="upload__input">
                                                                                                <div class="input-group">
                                                                                                    <div class="custom-file">
<%--                                                                                                        <input type="file" class="custom-file-input" id="inputGroupFile04">--%>
                                                                                                        <input type="text" class="prompt srch_explore" id="inputGroupFile04"/>
                                                                                                        <label class="custom-file-label" for="inputGroupFile04">No Choose file</label>
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

                                                            <div class="step-tab-panel step-tab-location" id="tab_step3">
                                                                <div class="tab-from-content">
                                                                    <div class="title-icon">
                                                                        <h3 class="title"><i class="uil uil-film"></i>Course Content</h3>
                                                                    </div>
                                                                    <div class="course__form">
                                                                        <div class="row">
                                                                            <div class="col-lg-12">
                                                                                <div class="extra_info">
                                                                                    <h4 class="part__title">New Course Content</h4>
                                                                                </div>
                                                                                <div class="view_info10">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12 col-md-12">
                                                                                            <div class="lecture_title">
                                                                                                <h4>Add Section</h4>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-6 col-md-12">
                                                                                            <div class="ui search focus mt-30 lbel25">
                                                                                                <label>Section Title*</label>
                                                                                                <div class="ui left icon input swdh19">
                                                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your section title." name="title" data-purpose="edit-section-title" maxlength="60" id="section[title]" value="">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-6 col-md-12">
                                                                                            <div class="part_input mt-30 lbel25">
                                                                                                <label>Duration*</label>
                                                                                                <div class="ui left icon input swdh19">
                                                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your section duration." name="duration" data-purpose="edit-section-duration" maxlength="60" id="section[duration]" value="">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-12 col-md-12">
                                                                                            <div class="course_des_textarea mt-30 lbel25">
                                                                                                <label>Description*</label>
                                                                                                <div class="course_des_bg">
                                                                                                    <div class="textarea_dt">
                                                                                                        <div class="ui form swdh339">
                                                                                                            <div class="field">
                                                                                                                <textarea rows="5" id="id_part_description" placeholder="Insert your section description"></textarea>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-2 col-md-12">
                                                                                            <button class="part_btn_save prt-sv" type="submit">SAVE SECTION</button>
                                                                                        </div>
                                                                                        <div class="col-lg-12 col-md-12">
                                                                                            <div class="table-responsive mt-50 mb-0">
                                                                                                <table class="table ucp-table">
                                                                                                    <thead class="thead-s">
                                                                                                    <tr>
                                                                                                        <th class="text-center" scope="col">Section</th>
                                                                                                        <th class="cell-ta">Title</th>
                                                                                                        <th class="text-center" scope="col">Duration</th>
                                                                                                        <th class="text-center" scope="col"> Description</th>
                                                                                                        <th class="text-center" scope="col">Controls</th>
                                                                                                    </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                            <tr>
                                                                                                                <td class="text-center">1</td>
                                                                                                                <td class="cell-ta">Title</td>

                                                                                                                <td class="text-center">
                                                                                                                        30
                                                                                                                </td>
                                                                                                                <td class="text-center">
                                                                                                                        AAAAAAA
                                                                                                                </td>
                                                                                                                <td class="text-center">
                                                                                                                    <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                                                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="text-center">2</td>
                                                                                                                <td class="cell-ta">Title</td>

                                                                                                                <td class="text-center">
                                                                                                                    30
                                                                                                                </td>
                                                                                                                <td class="text-center">
                                                                                                                    AAAAAAA
                                                                                                                </td>
                                                                                                                <td class="text-center">
                                                                                                                    <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                                                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                                                                                </td>
                                                                                                            </tr>
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
                                                            </div>

                                                            <div class="step-tab-panel step-tab-amenities" id="tab_step4">
                                                                <div class="tab-from-content">
                                                                    <div class="title-icon">
                                                                        <h3 class="title"><i class="uil uil-file-copy-alt"></i>Videos</h3>
                                                                    </div>
                                                                    <div class="course__form">
                                                                        <div class="row">
                                                                            <div class="col-lg-12">
                                                                                <div class="extra_info">
                                                                                    <h4 class="part__title">New Video</h4>
                                                                                </div>
                                                                                <div class="view_info10">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12 col-md-12">
                                                                                            <div class="lecture_title">
                                                                                                <h4>Add Video</h4>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-6 col-md-12">
                                                                                            <div class="ui search focus mt-30 lbel25">
                                                                                                <label>Video Name*</label>
                                                                                                <div class="ui left icon input swdh19">
                                                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your video name." name="vName" data-purpose="edit-video-name" maxlength="60" id="video[name]" value="">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-6 col-md-12">
                                                                                            <div class="part_input mt-30 lbel25">
                                                                                                <label>Upload Video*</label>
                                                                                                <div class="input-group">
                                                                                                    <div class="custom-file">
                                                                                                        <input type="file" class="custom-file-input" id="inputGroupFile06">
                                                                                                        <label class="custom-file-label" for="inputGroupFile06">No Choose file - (Pdf, Video)</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-2 col-md-12">
                                                                                            <button class="part_btn_save prt-sv" type="submit">SAVE VIDEO</button>
                                                                                        </div>
                                                                                        <div class="col-lg-12 col-md-12">
                                                                                            <div class="table-responsive mt-50 mb-0">
                                                                                                <table class="table ucp-table">
                                                                                                    <thead class="thead-s">
                                                                                                    <tr>
                                                                                                        <th class="text-center" scope="col">ID</th>
                                                                                                        <th class="cell-ta">Video Name</th>
                                                                                                        <th class="text-center" scope="col">Video URL</th>
                                                                                                        <th class="text-center" scope="col">Controls</th>
                                                                                                    </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                                    <tr>
                                                                                                                        <td class="text-center">1</td>
                                                                                                                        <td class="cell-ta">AAA</td>
                                                                                                                        <td class="text-center"><a href="#" id="btnPreview">AAA</a></td>
                                                                                                                        <td class="text-center">
                                                                                                                            <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                                                                                            <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                                                                                        </td>
                                                                                                                    </tr>
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
                                                            </div>

                                                        </div>
                                                        <div class="step-footer step-tab-pager">
                                                            <button data-direction="prev" class="btn btn-default steps_btn">PREVIOUS</button>
                                                            <button data-direction="next" class="btn btn-default steps_btn">NEXT</button>
                                                            <button data-direction="finish" class="btn btn-default steps_btn">CREATE</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <!--/.Content-->
                                    </div>
                                </div>
                                <!-- Central Modal Medium Danger-->


<%--                                <div class="tab-pane fade" id="pills-my-purchases" role="tabpanel">--%>
<%--                                    <div class="table-responsive mt-30">--%>
<%--                                        <table class="table ucp-table">--%>
<%--                                            <thead class="thead-s">--%>
<%--                                            <tr>--%>
<%--                                                <th class="text-center" scope="col">Item No.</th>--%>
<%--                                                <th class="cell-ta" scope="col">Title</th>--%>
<%--                                                <th class="cell-ta" scope="col">Vendor</th>--%>
<%--                                                <th class="cell-ta" scope="col">Category</th>--%>
<%--                                                <th class="text-center" scope="col">Delivery Type</th>--%>
<%--                                                <th class="text-center" scope="col">Price</th>--%>
<%--                                                <th class="text-center" scope="col">Purchase Date</th>--%>
<%--                                                <th class="text-center" scope="col">Actions</th>--%>
<%--                                            </tr>--%>
<%--                                            </thead>--%>
<%--                                            <tbody>--%>
<%--                                            <tr>--%>
<%--                                                <td class="text-center">001</td>--%>
<%--                                                <td class="cell-ta">Course Title Here</td>--%>
<%--                                                <td class="cell-ta"><a href="#">Zoena Singh</a></td>--%>
<%--                                                <td class="cell-ta"><a href="#">Web Development</a></td>--%>
<%--                                                <td class="text-center"><b class="course_active">Download</b></td>--%>
<%--                                                <td class="text-center">$15</td>--%>
<%--                                                <td class="text-center">25 March 2020</td>--%>
<%--                                                <td class="text-center">--%>
<%--                                                    <a href="#" title="Download" class="gray-s"><i class="uil uil-download-alt"></i></a>--%>
<%--                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>--%>
<%--                                                    <a href="#" title="Print" class="gray-s"><i class="uil uil-print"></i></a>--%>
<%--                                                </td>--%>
<%--                                            </tr>--%>
<%--                                            <tr>--%>
<%--                                                <td class="text-center">002</td>--%>
<%--                                                <td class="cell-ta">Course Title Here</td>--%>
<%--                                                <td class="cell-ta"><a href="#">Rock William</a></td>--%>
<%--                                                <td class="cell-ta"><a href="#">C++</a></td>--%>
<%--                                                <td class="text-center"><b class="course_active">Download</b></td>--%>
<%--                                                <td class="text-center">$20</td>--%>
<%--                                                <td class="text-center">20 March 2020</td>--%>
<%--                                                <td class="text-center">--%>
<%--                                                    <a href="#" title="Download" class="gray-s"><i class="uil uil-download-alt"></i></a>--%>
<%--                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>--%>
<%--                                                    <a href="#" title="Print" class="gray-s"><i class="uil uil-print"></i></a>--%>
<%--                                                </td>--%>
<%--                                            </tr>--%>
<%--                                            </tbody>--%>
<%--                                        </table>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="tab-pane fade" id="pills-upcoming-courses" role="tabpanel">--%>
<%--                                    <div class="table-responsive mt-30">--%>
<%--                                        <table class="table ucp-table">--%>
<%--                                            <thead class="thead-s">--%>
<%--                                            <tr>--%>
<%--                                                <th class="text-center" scope="col">Item No.</th>--%>
<%--                                                <th class="cell-ta">Title</th>--%>
<%--                                                <th class="text-center" scope="col">Thumbnail</th>--%>
<%--                                                <th class="text-center">Category</th>--%>
<%--                                                <th class="text-center">Price</th>--%>
<%--                                                <th class="text-center">Date</th>--%>
<%--                                                <th class="text-center" scope="col">Status</th>--%>
<%--                                                <th class="text-center" scope="col">Actions</th>--%>
<%--                                            </tr>--%>
<%--                                            </thead>--%>
<%--                                            <tbody>--%>
<%--                                            <tr>--%>
<%--                                                <td class="text-center">01</td>--%>
<%--                                                <td class="cell-ta">Course Title Here</td>--%>
<%--                                                <td class="text-center"><a href="#">View</a></td>--%>
<%--                                                <td class="text-center"><a href="#">Web Development</a></td>--%>
<%--                                                <td class="text-center">$15</td>--%>
<%--                                                <td class="text-center">9 April 2020</td>--%>
<%--                                                <td class="text-center"><b class="course_active">Pending</b></td>--%>
<%--                                                <td class="text-center">--%>
<%--                                                    <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>--%>
<%--                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>--%>
<%--                                                </td>--%>
<%--                                            </tr>--%>
<%--                                            <tr>--%>
<%--                                                <td class="text-center">02</td>--%>
<%--                                                <td class="cell-ta">Course Title Here</td>--%>
<%--                                                <td class="text-center"><a href="#">View</a></td>--%>
<%--                                                <td class="text-center"><a href="#">Graphic Design</a></td>--%>
<%--                                                <td class="text-center">$12</td>--%>
<%--                                                <td class="text-center">8 April 2020</td>--%>
<%--                                                <td class="text-center"><b class="course_active">Pending</b></td>--%>
<%--                                                <td class="text-center">--%>
<%--                                                    <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>--%>
<%--                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>--%>
<%--                                                </td>--%>
<%--                                            </tr>--%>
<%--                                            <tr>--%>
<%--                                                <td class="text-center">03</td>--%>
<%--                                                <td class="cell-ta">Course Title Here</td>--%>
<%--                                                <td class="text-center"><a href="#">View</a></td>--%>
<%--                                                <td class="text-center"><a href="#">Photography</a></td>--%>
<%--                                                <td class="text-center">$6</td>--%>
<%--                                                <td class="text-center">7 April 2020</td>--%>
<%--                                                <td class="text-center"><b class="course_active">Pending</b></td>--%>
<%--                                                <td class="text-center">--%>
<%--                                                    <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>--%>
<%--                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>--%>
<%--                                                </td>--%>
<%--                                            </tr>--%>
<%--                                            </tbody>--%>
<%--                                        </table>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="tab-pane fade" id="pills-discount" role="tabpanel">--%>
<%--                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">--%>
<%--                                        <div class="panel panel-default">--%>
<%--                                            <div class="panel-heading" role="tab" id="headingOne">--%>
<%--                                                <div class="panel-title adcrse1250">--%>
<%--                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">--%>
<%--                                                        New Discount--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">--%>
<%--                                                <div class="panel-body adcrse_body">--%>
<%--                                                    <div class="row">--%>
<%--                                                        <div class="col-lg-8">--%>
<%--                                                            <div class="discount_form">--%>
<%--                                                                <div class="row">--%>
<%--                                                                    <div class="col-lg-6 col-md-6">--%>
<%--                                                                        <div class="mt-20 lbel25">--%>
<%--                                                                            <label>Course*</label>--%>
<%--                                                                        </div>--%>
<%--                                                                        <select class="ui hj145 dropdown cntry152 prompt srch_explore">--%>
<%--                                                                            <option value="">Select Course</option>--%>
<%--                                                                            <option value="1">Course Title Here</option>--%>
<%--                                                                            <option value="2">Course Title Here</option>--%>
<%--                                                                            <option value="3">Course Title Here</option>--%>
<%--                                                                            <option value="4">Course Title Here</option>--%>
<%--                                                                            <option value="5">Course Title Here</option>--%>
<%--                                                                            <option value="6">Course Title Here</option>--%>
<%--                                                                            <option value="7">Course Title Here</option>--%>
<%--                                                                        </select>--%>
<%--                                                                    </div>--%>
<%--                                                                    <div class="col-lg-6 col-md-6">--%>
<%--                                                                        <div class="ui search focus mt-20 lbel25">--%>
<%--                                                                            <label>Discount Amount</label>--%>
<%--                                                                            <div class="ui left icon input swdh19">--%>
<%--                                                                                <input class="prompt srch_explore" type="number" name="off" value="" required="" min="1" max="99" placeholder="Percent (eg. 20 for 20%)">--%>
<%--                                                                            </div>--%>
<%--                                                                        </div>--%>
<%--                                                                    </div>--%>
<%--                                                                    <div class="col-lg-6 col-md-6">--%>
<%--                                                                        <div class="ui search focus mt-20 lbel25">--%>
<%--                                                                            <label>Start Date</label>--%>
<%--                                                                            <div class="ui left icon input swdh19">--%>
<%--                                                                                <input class="prompt srch_explore datepicker-here" type="text" data-language="en" placeholder="dd/mm/yyyy">--%>
<%--                                                                            </div>--%>
<%--                                                                        </div>--%>
<%--                                                                    </div>--%>
<%--                                                                    <div class="col-lg-6 col-md-6">--%>
<%--                                                                        <div class="ui search focus mt-20 lbel25">--%>
<%--                                                                            <label>End Date</label>--%>
<%--                                                                            <div class="ui left icon input swdh19">--%>
<%--                                                                                <input class="prompt srch_explore datepicker-here" type="text" data-language="en" placeholder="dd/mm/yyyy">--%>
<%--                                                                            </div>--%>
<%--                                                                        </div>--%>
<%--                                                                    </div>--%>
<%--                                                                    <div class="col-lg-6 col-md-6">--%>
<%--                                                                        <button class="discount_btn" type="submit">Save Changes</button>--%>
<%--                                                                    </div>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="table-responsive mt-30">--%>
<%--                                        <table class="table ucp-table">--%>
<%--                                            <thead class="thead-s">--%>
<%--                                            <tr>--%>
<%--                                                <th class="text-center" scope="col">Item No.</th>--%>
<%--                                                <th class="cell-ta">Course</th>--%>
<%--                                                <th class="text-center" scope="col">Start Date</th>--%>
<%--                                                <th class="text-center" scope="col">End Date</th>--%>
<%--                                                <th class="text-center" scope="col">Discount</th>--%>
<%--                                                <th class="text-center" scope="col">Status</th>--%>
<%--                                                <th class="text-center" scope="col">Actions</th>--%>
<%--                                            </tr>--%>
<%--                                            </thead>--%>
<%--                                            <tbody>--%>
<%--                                            <tr>--%>
<%--                                                <td class="text-center">01</td>--%>
<%--                                                <td class="cell-ta">Course Title Here</td>--%>
<%--                                                <td class="text-center">02 November 2019</td>--%>
<%--                                                <td class="text-center">19 November 2019</td>--%>
<%--                                                <td class="text-center">20%</td>--%>
<%--                                                <td class="text-center"><b class="course_active">Active</b></td>--%>
<%--                                                <td class="text-center">--%>
<%--                                                    <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>--%>
<%--                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>--%>
<%--                                                </td>--%>
<%--                                            </tr>--%>
<%--                                            </tbody>--%>
<%--                                        </table>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="tab-pane fade" id="pills-promotions" role="tabpanel" aria-labelledby="pills-promotions-tab">--%>
<%--                                    <div class="promotion_tab mb-10">--%>
<%--                                        <img src="images/dashboard/promotion.svg" alt="">--%>
<%--                                        <h4>Baby promotion plan is activated!</h4>--%>
<%--                                        <p>By activating promotion plans you can improve course views and sales.</p>--%>
<%--                                        <button class="plan_link_btn" onclick="window.location.href = '#';">Change New Plan</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="//cdn.jsdelivr.net/ckeditor/4.0.1/ckeditor.js"></script>
        <script type="text/javascript">
            var searchStr;
            $( document ).ready(function() {
                $('.tbl-pagi-1 tbody').paginathing({
                    perPage: 4,
                    insertAfter: '.tbl-pagi-1',
                    activeClass: 'active',
                    pageNumbers: true
                });
                $('.mdb-select').materialSelect();
            });
            CKEDITOR.replace( 'id_course_description',
                {
                    toolbar : 'Basic',
                    uiColor : '#f7f7f7'
                });
            CKEDITOR.replace( 'id_part_description',
                {
                    toolbar : 'Basic',
                    uiColor : '#f7f7f7'
                });
            $('#btnSearch').click(function () {
                searchStr = $('#searchStr').val();
                window.location.href = "http://"+window.location.hostname+":8080" + "/admin/course/search?searchStr=" +searchStr;
                console.log(searchStr);
            });
        </script>
    </stripes:layout-component>
</stripes:layout-render>
