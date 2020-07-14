<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Edit Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div id="course-id" data-id="${courseEdit.courseId}"></div>
        <div class="sa4d25">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="course_tabs_1">
                            <div id="add-course-tab" class="step-app">
                                <ul class="step-steps">
                                    <li class="active">

                                        <a href="#tab_step1">
                                            <span class="number"></span>
                                            <span class="step-name">Course Information</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab_step2">
                                            <span class="number"></span>
                                            <span class="step-name">Image</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab_step3">
                                            <span class="number"></span>
                                            <span class="step-name">Course Content</span>
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
                                                                    <input type="text" class="prompt srch_explore" maxlength="60" onfocus="true" id="course-name"  value="${courseEdit.courseName}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6">
                                                            <div class="ui search focus mt-30 lbel25">
                                                                <label>Course Subtitle*</label>
                                                                <div class="ui left icon input swdh19">
                                                                    <input type="text" class="prompt srch_explore" maxlength="60" id="course-subtitle" value="${courseEdit.courseSubtitle}">
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
                                                                                <textarea rows="5" placeholder="Insert your course description" id="edit_description_1" >${courseEdit.courseDescription}</textarea>
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
                                                                    <option value="${listL.value}" ${courseEdit.courseLanguage.equals(listL.value)?"selected":""}>${listL.value}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-lg-4 col-md-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Course Category*</label>
                                                            </div>
                                                            <select id="course-category" class="ui hj145 dropdown cntry152 prompt srch_explore mdb-select md-form" multiple>
                                                                <option value="">Select Category</option>
                                                                <c:forEach items="${courseEdit.category}" var="c">
                                                                    <option value="${c.cateId}" selected>${c.cateName}</option>
                                                                </c:forEach>
                                                                <c:forEach items="${listCateEdit}" var="l">
                                                                    <option value="${l.cateId}">${l.cateName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-lg-4 col-md-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Course Duration*</label>
                                                            </div>
                                                            <div class="ui search focus">
                                                                <div class="ui left icon input swdh19">
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your course Duration." name="courseDuration" data-purpose="edit-course-duration" maxlength="60" id="course-duration" value="${courseEdit.courseDuration}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price_course">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="price_title">
                                                                <h4><i class="uil uil-dollar-sign-alt"></i>Pricing (in USD)*</h4>
                                                            </div>
                                                            <div class="ui search focus mt-30 lbel25">
                                                                <div class="ui left icon input swdh19">
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your course Price." name="coursePrice" data-purpose="edit-course-price" maxlength="60" id="course-price" value="${courseEdit.coursePrice}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="price_title">
                                                                <h4><i class="uil uil-dollar-sign-alt"></i>Status</h4>
                                                            </div>
                                                            <div class="col-lg-3 col-md-4 col-sm-6">
                                                                <div class="ui search focus mt-30 lbel25">
                                                                    <div class="ui left icon input swdh19">
                                                                        <select id="course_active" class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                            <option value="1" ${courseEdit.isActive==1?"selected":""}>Active</option>
                                                                            <option value="0" ${courseEdit.isActive==0?"selected":""}>Inactive</option>
                                                                        </select>
                                                                    </div>
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
                                                                        <img id="course_thumbnail" src="<c:url value="/upload/avatar.jpg"/>" alt="">
                                                                    </div>
                                                                </div>
                                                                <div class="view_img_right">
                                                                    <h4>Cover Image</h4>
                                                                    <p>Upload your course image here. It must meet our course image quality standards to be accepted. Important guidelines: 750x422 pixels; .jpg, .jpeg,. gif, or .png. no text on the image.</p>
                                                                    <div class="upload__input">
                                                                        <div class="input-group">
                                                                            <div class="custom-file">
                                                                                <input type="file" class="custom-file-input" id="inputGroupFile04" onchange='openFileThumb(event)'>
                                                                                <label style="height: 40px;" class="custom-file-label" id="lblInputGroupFile04" for="inputGroupFile04">No Choose file</label>
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
                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your section title." name="title" data-purpose="edit-section-title" maxlength="60" id="section_title" value="">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="ui search mt-30 lbel25">
                                                                        <label>Duration*</label>
                                                                        <div class="ui left icon input swdh19">
                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your section duration." name="duration" data-purpose="edit-section-duration" maxlength="60" id="section_duration" value="">
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
                                                                                        <textarea rows="5" name="edit_description_2" id="id_part_description" placeholder="Insert your section description"></textarea>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2 col-md-12">
                                                                    <button class="part_btn_save prt-sv" id="btn-save-section" type="submit">SAVE SECTION</button>
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
                                                                            <tbody id="list-section">
                                                                            <c:forEach items="${listSectionEdit}" var="s">
                                                                                <c:if test="${s.course.courseId.equals(courseEdit.courseId)}">
                                                                                    <tr id="section-${s.sectionId}">
                                                                                        <td class="text-center section-id" >${s.sectionId}</td>
                                                                                        <td class="cell-ta section-title">${s.sectionTitle}</td>

                                                                                        <td class="text-center section-duration">
                                                                                            ${s.sectionDuration}
                                                                                        </td>
                                                                                        <td class="text-center section-desc">
                                                                                             ${s.sectionDescription}
                                                                                        </td>
                                                                                        <td class="text-center">
                                                                                            <a href="#" title="${s.sectionId}" class="gray-s section-edit" data-toggle="modal" data-target="#edit-section-modal"><i class="uil uil-edit-alt"></i></a>
                                                                                            <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </c:if>

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
                                    </div>

                                    <div class="modal" id="edit-section-modal">
                                        <div class="modal-dialog ">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3 class="modal-title"></h3>
                                                </div>
                                                    <div class="modal-body">
                                                        <div class="col-lg-12 col-md-12">
                                                            <div class="lecture_title">
                                                                <h4>Edit Section</h4>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12 col-md-12">
                                                            <div class="ui search focus mt-30 lbel25">
                                                                <label>Section Title*</label>
                                                                <div class="ui left icon input swdh19">
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your section title." name="title" data-purpose="edit-section-title" maxlength="60" id="edit-section-modal-title" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12 col-md-12">
                                                            <div class="ui search mt-30 lbel25">
                                                                <label>Duration*</label>
                                                                <div class="ui left icon input swdh19">
                                                                    <input class="prompt srch_explore" type="text" placeholder="Insert your section duration." name="duration" data-purpose="edit-section-duration" maxlength="60" id="edit-section-modal-duration" value="">
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
                                                                                <textarea rows="5" name="edit_description_2" id="edit-section-modal-desc" placeholder="Insert your section description"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <div class="modal-footer">
                                                    <button type="button" id="btn-edit-section-save" class="part_btn_save">UPDATE</button>
                                                    <button type="button" id="btn-edit-section-cancel" class="part_btn_save" data-dismiss="modal">CANCEL</button>
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
                                                                            <input class="prompt srch_explore" type="text" placeholder="Insert your video name." name="vName" data-purpose="edit-video-name" maxlength="60" id="video-name" value="">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="ui search focus mt-30 lbel25">
                                                                        <label>For Section*</label>
                                                                        <div class="ui left icon input swdh19">
                                                                            <select class="ui hj145 dropdown cntry152 prompt srch_explore" id="belong-to">
                                                                                <option value="">Select Section</option>
                                                                                <c:forEach items="${listSectionEdit}" var="s">
                                                                                    <c:if test="${s.course.courseId.equals(courseEdit.courseId)}">
                                                                                        <option value="${s.sectionId}">${s.sectionTitle}</option>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="part_input mt-30 lbel25">
                                                                        <label>Upload Video*</label>
                                                                        <div class="input-group">
                                                                            <div class="custom-file">
                                                                                <input type="file" class="custom-file-input" id="inputGroupFile06" onchange='openFileVideo(event)'>
                                                                                <label style="height: 40px;" class="custom-file-label" id="lblInputGroupFile06" for="inputGroupFile06">No Choose file - (Pdf, Video)</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2 col-md-12">
                                                                    <button class="part_btn_save prt-sv" id="btn-save-video" type="submit">SAVE VIDEO</button>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="table-responsive mt-50 mb-0">
                                                                        <table class="table ucp-table" id="list-video">
                                                                            <thead class="thead-s">
                                                                            <tr>
                                                                                <th class="text-center" scope="col">ID</th>

                                                                                <th class="cell-ta">Video Name</th>
                                                                                <th class="text-center" scope="col">Belong to</th>
                                                                                <th class="text-center" scope="col">Video URL</th>
                                                                                <th class="text-center" scope="col">Controls</th>
                                                                            </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                            <c:forEach items="${listSectionEdit}" var="s">
                                                                                <c:if test="${s.course.courseId.equals(courseEdit.courseId)}">
                                                                                    <c:forEach items="${listVideoEdit}" var="v">
                                                                                        <c:if test="${v.section.sectionId.equals(s.sectionId)}">
                                                                                            <tr id="video-${v.videoId}">
                                                                                                <td class="text-center video-id">${v.videoId}</td>

                                                                                                <td class="cell-ta video-name">${v.videoName}</td>
                                                                                                <td class="text-center belong-to" data-sectionId="${v.section.sectionId.equals(s.sectionId)?s.sectionId:"N/A"}">${v.section.sectionId.equals(s.sectionId)?s.sectionTitle:"N/A"}</td>
                                                                                                <td class="text-center video-url"><a href="#" id="btnPreview" data-toggle="modal" data-target="#previewModal_${v.videoId}">${v.videoUrl}</a></td>
                                                                                                <div class="modal" id="previewModal_${v.videoId}">
                                                                                                    <div class="modal-dialog">
                                                                                                        <div class="modal-content">
                                                                                                            <div class="modal-header">
                                                                                                                <h3 class="modal-title">${v.videoName} - Preview</h3>
                                                                                                            </div>
                                                                                                            <c:if test="${!(v.videoUrl.contains('iframe'))}">
                                                                                                                <div class="modal-body">
                                                                                                                        ${v.videoUrl}
                                                                                                                </div>
                                                                                                            </c:if>
                                                                                                            <div class="modal-footer">
                                                                                                                <button type="button" id="btnPreviewBack" class="btn btn-default" data-dismiss="modal" >BACK</button>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <td class="text-center">
                                                                                                    <a href="#" title="${v.videoId}" id="video-edit" data-toggle="modal" data-target="#edit-video-modal" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                                                                    <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </c:if>
                                                                                    </c:forEach>
                                                                                </c:if>
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
                                    </div>

                                    <div class="modal" id="edit-video-modal">
                                        <div class="modal-dialog ">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3 class="modal-title"></h3>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="lecture_title">
                                                            <h4>Edit Video</h4>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="ui search focus mt-30 lbel25">
                                                            <label>Video Name*</label>
                                                            <div class="ui left icon input swdh19">
                                                                <input class="prompt srch_explore" type="text" placeholder="Insert your section title." name="title" data-purpose="edit-video-name" maxlength="60" id="edit-video-modal-name" value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="part_input mt-30 lbel25">
                                                            <label>Upload Video*</label>
                                                            <div class="input-group">
                                                                <div class="custom-file">
                                                                    <input type="file" class="custom-file-input" id="editInputGroupFile06Modal">
                                                                    <label style="height: 40px;" class="custom-file-label" id="lblEditInputGroupFile06Modal" for="editInputGroupFile06Modal">No Choose file - (Pdf, Video)</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" id="btn-edit-video-save" class="part_btn_save">UPDATE</button>
                                                    <button type="button" id="btn-edit-video-cancel" class="part_btn_save" data-dismiss="modal">CANCEL</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="step-footer step-tab-pager">
                                    <button data-direction="prev" class="btn btn-default steps_btn">PREVIOUS</button>
                                    <button data-direction="next" class="btn btn-default steps_btn">NEXT</button>
                                    <button id="finish-btn" data-direction="finish" type="submit" class="btn btn-default steps_btn">FINISH</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="//cdn.jsdelivr.net/ckeditor/4.0.1/ckeditor.js"></script>
        <script type="text/javascript">
            var courseThumbnail = '${courseEdit.courseThumbnail}' == ''?'avatar.jpg':'${courseEdit.courseThumbnail}';
            $('#course_thumbnail').attr('src','http://localhost:8080/upload/'+courseThumbnail);
            CKEDITOR.replace( 'edit_description_1',
                {
                    toolbar : 'Basic',
                    uiColor : '#f7f7f7'
                });
            CKEDITOR.replace( 'edit_description_2',
                {
                    toolbar : 'Basic',
                    uiColor : '#f7f7f7'
                });
            //process edit data
            var dataSections = [];
            var dataCreateSection = {};
            var editSectionObj;
            const dumpId = Date.now() * (Math.floor((Math.random() * 100) + 1));

            var dataVideos = [];
            var dataCreateVideo = {};
            var editVideoObj;

            $(document).ready(function () {
                // get list section
                $('#list-section tr').each(function (a, b) {
                    dataSections.push({
                        id: $('.section-id', b).text(),
                        title: $('.section-title', b).text(),
                        duration: $('.section-duration', b).text().trim(),
                        description: $('.section-desc', b).text().trim(),
                        status: 'old'
                    });
                });
                $('#list-video tr').each(function (a,b) {
                    if(($('.belong-to',b).attr("data-sectionId"))){
                        dataVideos.push({
                            id:$('.video-id', b).text(),
                            name:$('.video-name',b).text(),
                            sectionId:$('.belong-to',b).attr("data-sectionId"),
                            url:$('.video-url',b).text(),
                            status: 'old'
                        }) ;
                    }
                });
            });

            $('#btn-save-video').on("click", function () {
               var maxId = 0;
               dataVideos.forEach(item=>{
                  item.id > maxId ? maxId = item.id:"";
               });
               dataCreateVideo = {
                   id: (parseInt(maxId)+1).toString(),
                   name: $('#video-name').val(),
                   sectionId: $('#belong-to').val(),
                   url: $('#inputGroupFile06')[0].files[0].name,
                   status: 'new'
               };
                var selectedSection = $('#belong-to option:selected').text();
               if ($('#video-name').val()!=""){
                   dataVideos.push(dataCreateVideo);
                   $('#video-name').val("");
                   $('#belong-to').val($('#belong-to option:first').val());
                   $('#lblInputGroupFile06').text("");

                   $('#list-video tr:last').after('<tr id="video-'+ dataCreateVideo["id"] +'">\n' +
                       '     <td class="text-center video-id">'+ dataCreateVideo["id"] +'</td>\n' +
                       '     <td class="cell-ta video-name">'+ dataCreateVideo["name"] +'</td>\n' +
                       '     <td class="text-center belong-to" data-sectionId="'+ dataCreateVideo["sectionId"] +'">'+ selectedSection +'</td>\n' +
                       '     <td class="text-center video-url"><a href="#" id="btnPreview" data-toggle="modal" data-target="#previewModal_'+ dataCreateVideo["id"] +'">'+ dataCreateVideo["url"] +'</a></td>\n' +
                       '    <div class="modal" id="previewModal_'+ dataCreateVideo["id"] +'">\n' +
                       '     <div class="modal-dialog">\n' +
                       '       <div class="modal-content">\n' +
                       '         <div class="modal-header">\n' +
                       '            <h3 class="modal-title">'+ dataCreateVideo["name"] +' - Preview</h3>\n' +
                       '         </div>\n' +
                       '       <c:if test="${!(v.videoUrl.contains(\'iframe\'))}">\n' +
                       '         <div class="modal-body">\n' +
                       '            '+ dataCreateVideo["url"] +'\n' +
                       '         </div>\n' +
                       '       </c:if>\n' +
                       '          <div class="modal-footer">\n' +
                       '            <button type="button" id="btnPreviewBack" class="btn btn-default" data-dismiss="modal" >BACK</button>\n' +
                       '           </div>\n' +
                       '         </div>\n' +
                       '       </div>\n' +
                       '     </div>\n' +
                       '    <td class="text-center">\n' +
                       '       <a href="#" title="'+ dataCreateVideo["id"] +'" id="video-edit" data-toggle="modal" data-target="#video-edit-modal" class="gray-s"><i class="uil uil-edit-alt"></i></a>\n' +
                       '       <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>\n' +
                       '     </td>\n' +
                       '   </tr>');
               }
            });

            $('#btn-save-section').on("click", function () {
                var maxId = 0;
                if(dataSections.length != 0){
                    dataSections.forEach(item=>{
                        item.id > maxId ? maxId = item.id:'';
                    });
                }
                dataCreateSection = {
                    id: dataSections.length==0?1:(parseInt(maxId)+1).toString(),
                    title : $('#section_title').val(),
                    duration: $('#section_duration').val(),
                    description: CKEDITOR.instances.id_part_description.getData(),
                    status: 'new'
                };
                if ($('#section_title').val()!==""){
                    dataSections.push(dataCreateSection);
                    console.log(dataSections);
                    $('#section_title').val("");
                    $('#section_duration').val("");
                    CKEDITOR.instances.id_part_description.setData("");
                    if(dataSections.length!==1){
                        $('#list-section tr:last').after('<tr id="section-'+dataCreateSection["id"]+'">\n' +
                            '   <td class="text-center section-id" >'+dataCreateSection["id"]+'</td>\n' +
                            '   <td class="cell-ta section-title">'+dataCreateSection["title"]+'</td>\n' +
                            '\n' +
                            '   <td class="text-center section-duration">\n' +
                            '       '+dataCreateSection["duration"]+'\n' +
                            '   </td>\n' +
                            '   <td class="text-center section-desc">\n' +
                            '       '+dataCreateSection["description"]+'\n' +
                            '   </td>\n' +
                            '   <td class="text-center">\n' +
                            '       <a href="#" title="'+dataCreateSection["id"]+'" class="gray-s section-edit" data-toggle="modal" data-target="#edit-section-modal"><i class="uil uil-edit-alt"></i></a>\n' +
                            '       <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>\n' +
                            '   </td>\n' +
                            '</tr>');
                    }else{
                        $('#list-section').append('<tr id="section-'+dataCreateSection["id"]+'">\n' +
                            '   <td class="text-center section-id" >'+dataCreateSection["id"]+'</td>\n' +
                            '   <td class="cell-ta section-title">'+dataCreateSection["title"]+'</td>\n' +
                            '\n' +
                            '   <td class="text-center section-duration">\n' +
                            '       '+dataCreateSection["duration"]+'\n' +
                            '   </td>\n' +
                            '   <td class="text-center section-desc">\n' +
                            '       '+dataCreateSection["description"]+'\n' +
                            '   </td>\n' +
                            '   <td class="text-center">\n' +
                            '       <a href="#" title="'+dataCreateSection["id"]+'" class="gray-s section-edit" data-toggle="modal" data-target="#edit-section-modal"><i class="uil uil-edit-alt"></i></a>\n' +
                            '       <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>\n' +
                            '   </td>\n' +
                            '</tr>');
                    }

                    $('#belong-to option:last').after('<option value="'+dataCreateSection["id"]+'">'+dataCreateSection["title"]+'</option>');
                }
            });

            $('#video-edit').click(function () {
               var id = $(this).attr('title');
               editVideoObj = dataVideos.find(v => v.id === id);
               $('#edit-video-modal-name').val(editVideoObj["name"]);
               $('#editInputGroupFile06').val(editVideoObj["url"]);
            });

            $('#list-video').on( "click", "#video-edit", function() { // delegate
                var id = $(this).attr('title');
                editVideoObj = dataVideos.find(v => v.id === id);
                $('#edit-video-modal-name').val(editVideoObj["name"]);
                $('#editInputGroupFile06').val(editVideoObj["url"]);
            });

            $('#btn-edit-video-save').click(function () {
                editVideoObj["name"] = $('#edit-video-modal-name').val();
                editVideoObj["url"] = $('#lblEditInputGroupFile06Modal').val();
                var foundObj = dataVideos.find(o=>o.id === editVideoObj["id"]);
                foundObj["name"] = editVideoObj["name"];
                foundObj["url"] = editVideoObj["url"];

                $('#section-'+editVideoObj["id"]).find('.video-id').text(editVideoObj["id"]);
                $('#section-'+editVideoObj["id"]).find('.video-name').text(editVideoObj["name"]);
                $('#section-'+editVideoObj["id"]).find('.video-url').text(editVideoObj["url"]);

            });


            $('.section-edit').click(function () {
                var id = $(this).attr('title');
                editSectionObj = dataSections.find(o => o.id === id);
                $('#edit-section-modal-title').val(editSectionObj["title"]);
                $('#edit-section-modal-duration').val(editSectionObj["duration"]);
                $('#edit-section-modal-desc').val(editSectionObj["description"]);
            });

            $('#list-section').on( "click", ".section-edit", function() { // delegate
                var id = $(this).attr('title');
                editSectionObj = dataSections.find(o => o.id === id);
                $('#edit-section-modal-title').val(editSectionObj["title"]);
                $('#edit-section-modal-duration').val(editSectionObj["duration"]);
                $('#edit-section-modal-desc').val(editSectionObj["description"]);
            });

            $('#btn-edit-section-save').click(function () {
                editSectionObj["title"] = $('#edit-section-modal-title').val();
                editSectionObj["duration"] = $('#edit-section-modal-duration').val();
                editSectionObj["description"] = $('#edit-section-modal-desc').val();
                var foundObj = dataSections.find(o=>o.id === editSectionObj["id"]);
                foundObj["title"] = editSectionObj["title"];
                foundObj["duration"] = editSectionObj["duration"];
                foundObj["description"] = editSectionObj["description"];
                $('#section-'+editSectionObj["id"]).find('.section-id').text(editSectionObj["id"]);
                $('#section-'+editSectionObj["id"]).find('.section-title').text(editSectionObj["title"]);
                $('#section-'+editSectionObj["id"]).find('.section-duration').text(editSectionObj["duration"]);
                $('#section-'+editSectionObj["id"]).find('.section-desc').text(editSectionObj["description"]);
            });

            var listUploadFile = [];
            var openFileThumb = function(event) {
                var input = event.target;
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#course_thumbnail').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                courseThumbnail = input.files[0].name;
                listUploadFile.push(input.files[0]);
                $('#lblInputGroupFile04').text(input.files[0].name);
            };

            var openFileVideo = function(event) {
                var input = event.target;
                var reader = new FileReader();
                reader.readAsDataURL(input.files[0]);
                listUploadFile.push(input.files[0]);
                $('#lblInputGroupFile06').text(input.files[0].name);
            };

            //preview for video href
            $('#btnPreview').click(function () {
                $('#previewModal').modal('show');
            });
            $('.modal').on('hidden.bs.modal', function () {
                $('.modal iframe').attr("src", $(".modal iframe").attr("src"));
            });

            //click on finish
            $('#finish-btn').click(function(){
                run_waitMe();
                var listCate = $('#course-category').val().filter(function(elem, index, self) {
                    return index === self.indexOf(elem);
                });
                var dataBiding = {
                    'courseId': $('#course-id').attr('data-id')==''?null:$('#course-id').attr('data-id'),
                    'courseName': $('#course-name').val(),
                    'courseSubtitle': $('#course-subtitle').val(),
                    'courseDescription': CKEDITOR.instances.edit_description_1.getData(),
                    'courseLanguage': $('#courseLanguage').val(),
                    'courseActive': $('#course_active').val(),
                    'courseCategories': listCate,
                    'courseDuration': $('#course-duration').val(),
                    'coursePrice': $('#course-price').val(),
                    'courseThumbnail': courseThumbnail,
                    'dataSections':dataSections,
                    'dataVideos': dataVideos
                };
                console.log(dataBiding);
                $.ajax({
                    url: "/api/course/edit",
                    method: "POST",
                    processData: false,
                    contentType: 'application/json',
                    data: JSON.stringify(dataBiding),
                    success: function(result) {
                        if(listUploadFile.length!==0){
                            var count = 0;
                            for(var i = 0; i < listUploadFile.length; i++){
                                var formData = new FormData();
                                formData.append('file',listUploadFile[i]);
                                console.log(listUploadFile[i]);
                                $.ajax({
                                    url: "/api/course/upload",
                                    method: "POST",
                                    enctype: 'multipart/form-data',
                                    processData: false,
                                    contentType: false,
                                    data: formData,
                                    success: function() {
                                        count++;
                                        if(count===listUploadFile.length-1){
                                            $('.containerLoading').waitMe('hide');
                                            window.location.href = "";
                                        }
                                    }
                                });
                            }
                        }
                        $('.containerLoading').waitMe('hide');
                    }
                });
            });
        </script>

    </stripes:layout-component>
</stripes:layout-render>