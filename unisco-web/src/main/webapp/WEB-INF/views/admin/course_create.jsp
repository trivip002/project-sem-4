<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Create Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-analysis"></i> Create New Course</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
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
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your course Name." name="name" data-purpose="edit-course-title" maxlength="60" id="courseName" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6">
                                                            <div class="ui search focus mt-30 lbel25">
                                                                <label>Course Subtitle*</label>
                                                                <div class="ui left icon input swdh19">
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your course Subtitle." name="subtitle" data-purpose="edit-course-title" maxlength="60" id="courseSubtitle" value="">
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
                                                            <select class="ui hj145 dropdown cntry152 prompt srch_explore" id="courseLanguage">
                                                                <option value="">Select Language</option>
                                                                <c:forEach items="${listLang}" var="listL">
                                                                    <option value="${listL.value}">${listL.value}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-lg-4 col-md-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Course Category*</label>
                                                            </div>
                                                            <select class="ui hj145 dropdown cntry152 prompt srch_explore mdb-select md-form" id="courseCategory" multiple>
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
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your course Duration." name="courseDuration" data-purpose="edit-course-duration" maxlength="60" id="courseDuration" value="">
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
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your course Price." name="coursePrice" data-purpose="edit-course-price" maxlength="60" id="coursePrice" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Status*</label>
                                                            </div>

                                                            <div class="ui search focus mt-30 lbel25">
                                                                <div class="ui left icon input swdh19">
                                                                    <select class="ui hj145 dropdown cntry152 prompt srch_explore" id="courseStatus">
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
<%--                                                                        <div class="input-group">--%>
<%--                                                                            <div class="custom-file">--%>
<%--                                                                                <input type="file" class="custom-file-input" id="inputGroupFile04">--%>
<%--                                                                                <label class="custom-file-label" for="inputGroupFile04">No Choose file</label>--%>
<%--                                                                            </div>--%>
<%--                                                                        </div>--%>
                                                                            <input type="text" class="prompt srch_explore" id="inputGroupFile04"/>
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
                                    <button data-direction="finish" id="btnFinish" class="btn btn-default steps_btn">CREATE</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="//cdn.jsdelivr.net/ckeditor/4.0.1/ckeditor.js"></script>
        <script type="text/javascript">
            CKEDITOR.replace( 'id_course_description',
                {
                    toolbar : 'Basic',
                    uiColor : '#f7f7f7'
                });
            CKEDITOR.replace( 'edit_description_2',
                {
                    toolbar : 'Basic',
                    uiColor : '#f7f7f7'
                });
            // Material Select Initialization
            $(document).ready(function() {
                $('.mdb-select').materialSelect();
            });

            $(document).ready(function () {
                $('#btnPreview').click(function () {
                   $('#previewModal').modal('show');
                });
                $('.modal').on('hidden.bs.modal', function () {
                    $('.modal iframe').attr("src", $(".modal iframe").attr("src"));
                })
            });

        </script>

    </stripes:layout-component>
</stripes:layout-render>