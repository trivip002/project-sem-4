<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default_2.jsp" pageTitle="Blogs">
    <stripes:layout-component name="contents">
        <div class="_215b15">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title125">
                            <div class="titleleft">
                                <div class="ttl121">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="<c:url value="/home"/>">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Cart</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="title126">
                            <h2>Cart Detail</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mb4d25">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="membership_chk_bg">

                            <div class="chckout_order_dt">
                                <div class="checkout_title">
                                    <h4>Order Details</h4>
                                    <img src="<c:url value="/static/assets/images/line.svg"/>" alt="">
                                </div>
                                <div class="order_dt_section">
                                    <div class="order_title">
                                        <div class="order_img">
                                            <img style="width: 10%" src="https://dolphin.cmcglobal.com.vn/wp-content/uploads/2020/02/best-programming-courses-1-800x500.jpg">
                                        </div>
                                        <h4>The Complete Javascript Course 2020: Build Real Projects!</h4>
                                        <div class="order_price">$5
                                            <div style="padding-left: 10px;"></div>
                                            <a href="#">
                                                <i class="fa fa-times" style="color: #ed2a26;" aria-hidden="true"></i>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="order_title">
                                        <div class="order_img">
                                            <img style="width: 10%" src="https://img-a.udemycdn.com/course/750x422/2314160_8d61_6.jpg">
                                        </div>
                                        <h4>Complete Python Bootcamp: Go from zero to hero in Python 3</h4>
                                        <div class="order_price">$10
                                            <div style="padding-left: 10px;"></div>
                                            <a href="#">
                                                <i class="fa fa-times" style="color: #ed2a26;" aria-hidden="true"></i>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="order_title">
                                        <h6>Taxes(GST)</h6>
                                        <div class="order_price">$2</div>
                                    </div>
                                    <div class="order_title">
                                        <h3>Total</h3>
                                        <div class="order_price">$17</div>
                                    </div>
                                    <button class="chckot_btn" type="submit">Remove All</button>
                                    <button class="chckot_btn" type="submit" style="margin-right: 2%;">Checkout</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>