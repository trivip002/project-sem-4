
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default.jsp" pageTitle="Using A Layout">
    <stripes:layout-component name="contents">
<div class="sa4d25">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="st_title"><i class='uil uil-cog'></i>Account Setting</h2>
                <div>
                    <div>
                        <div class="account_setting">
                            <h4>Your Cursus Account</h4>
                            <p>This is your public presence on Cursus. You need a account to upload your paid courses, comment on courses, purchased by students, or earning.</p>
                            <div class="basic_profile">
                                <div class="basic_ptitle">
                                    <h4>Basic Profile</h4>
                                    <p>Add information about yourself</p>
                                </div>
                                <form class="basic_form" method="post" action="<c:url value='/updateUser'/>">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="view__img">
                                                        <img width="300px" height="300px" id="user-avatar-update" src="<c:url value="/upload/${user.userAvatar==null?'default.jpg':user.userAvatar}"/>" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <h4>Avatar Image</h4>
                                                    <p>Upload your course image here. It must meet our course image quality standards to be accepted. Important guidelines: 40x40 pixels; .jpg, .jpeg, or .png. no text on the image.</p>
                                                    <div class="upload__input">
                                                        <div class="input-group">
                                                            <div class="custom-file">
                                                                <input onchange="changeAvatar(event)" type="file" class="custom-file-input" id="inputGroupFile04">
                                                                <label id="custom-avatar-name" class="custom-file-label" for="inputGroupFile04">${user.userAvatar==null?'No chose file': 'user.userAvatar'}</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--<div class="col-lg-12">
                                                    <div class="ui search focus mt-30">
                                                        <div class="ui left icon input swdh11 swdh19">
                                                            <input class="prompt srch_explore" type="text" name="userName" value="${user.userName}"  required="" maxlength="64" placeholder="User Name" onfocus="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="ui search focus mt-30">
                                                        <div class="ui left icon input swdh11 swdh19">
                                                            <input class="prompt srch_explore" type="password" name="password" value="${user.password}" required="" maxlength="20" placeholder="Password">
                                                        </div>
                                                    </div>
                                                </div>--%>
                                                <div class="col-lg-12">
                                                    <div class="ui search focus mt-30">
                                                        <div class="ui left icon input swdh11 swdh19">
                                                            <input class="prompt srch_explore" type="email" name="userEmail" value="${user.userEmail}" required="" maxlength="64" placeholder="Email Address">
                                                        </div>
                                                    </div>
                                                </div>
                                                    <div class="col-lg-12">
                                                        <div class="ui search focus mt-30">
                                                            <div class="ui left icon input swdh11 swdh19">
                                                                <input class="prompt srch_explore" type="text" name="fullName" value="${user.fullName}" required="" maxlength="64" placeholder="Full Name">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="ui search focus mt-30">
                                                            <div class="ui left icon input swdh11 swdh19">
                                                                <input class="prompt srch_explore" type="text" name="address" value="${user.address}" required="" maxlength="64" placeholder="Address">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="ui search focus mt-30">
                                                            <div class="ui left icon input swdh11 swdh19">
                                                                <input class="prompt srch_explore" type="text" name="city" value="${user.city}" required="" maxlength="64" placeholder="City">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="ui search focus mt-30">
                                                            <div class="ui left icon input swdh11 swdh19">
                                                                <input class="prompt srch_explore" type="text" name="country" value="${user.country}" required="" maxlength="64" placeholder="Country">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="ui search focus mt-30">
                                                            <div class="ui left icon input swdh11 swdh19">
                                                                <input class="prompt srch_explore" type="tel" name="telephone" value="${user.telephone}" required="" maxlength="10" placeholder="Phone Number">
                                                            </div>
                                                        </div>
                                                    </div>
                                                <input id="userAvatar" class="prompt srch_explore" type="hidden" name="userAvatar" value="${user.userAvatar}" >
                                            </div>
                                        </div>
                                    </div>
                                    <button class="save_btn" type="submit">Save Changes</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <script>
            var changeAvatar = function(event) {
                var input = event.target;
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#user-avatar-update').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                $('#custom-avatar-name').text(input.files[0].name);
                $('#userAvatar').val(input.files[0].name);
            };
        </script>
    </stripes:layout-component>
</stripes:layout-render>