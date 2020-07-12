<%--
  Created by IntelliJ IDEA.
  User: AKHuynh
  Date: 7/8/2020
  Time: 9:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/login/layout/default.jsp" pageTitle="Login page">
    <stripes:layout-component name="contents">
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Sign Up page</title>
        </head>
        <div class="sign_in_up_bg">
            <div class="container">
                <div class="row justify-content-lg-center justify-content-md-center">
                    <div class="col-lg-12">
                        <div class="main_logo25" id="logo">
                            <a href="index.html"><img src="<c:url value='/static/assets/images/logo.svg' />" alt=""></a>
                            <a href="index.html"><img class="logo-inverse" src="<c:url value='/static/assets/images/ct_logo.svg' />" alt=""></a>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-8">
                        <div class="sign_form">
                            <h2>Welcome to Cursus</h2>
                            <p>Sign Up and Start Learning!</p>
                            <form method="post"  action="<c:url value='/createUser'/>">
                                <input type="hidden" name="userId" value="" >
                                <div class="ui search focus">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <input class="prompt srch_explore" type="text" name="fullName" required="" placeholder="Full Name">
                                    </div>
                                </div>
                                <div class="ui search focus mt-15">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <input class="prompt srch_explore" type="email" name="userEmail" required="" placeholder="Email Address">
                                    </div>
                                </div>
                                <div class="ui search focus mt-15">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <input class="prompt srch_explore" type="text" name="userName" required="" placeholder="User Name">
                                    </div>
                                </div>
                                <div class="ui search focus mt-15">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <input class="prompt srch_explore" type="password" name="password" required="" placeholder="Password">
                                    </div>
                                </div>
                                <div class="ui search focus mt-15">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <input class="prompt srch_explore" type="hidden" name="isActive" value="1" required="" placeholder="Password">
                                    </div>
                                </div>
                                <button class="login-btn" type="submit">Sign Up</button>
                            </form>
                            <p class="mb-0 mt-30">Already have an account? <a href="/login">Log In</a></p>
                        </div>
                        <div class="sign_footer"><img src="<c:url value='/static/assets/images/sign_logo.png' />"  alt="">© 2020 <strong>Cursus</strong>. All Rights Reserved.</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Signup End -->
    </stripes:layout-component>
</stripes:layout-render>
</html>