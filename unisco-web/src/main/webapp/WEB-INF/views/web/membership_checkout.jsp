<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default_2.jsp" pageTitle="About Us">
    <stripes:layout-component name="contents">
        <div class="wrapper _bg4586 _new89">
        <div class="_215b15">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title125">
                            <div class="titleleft">
                                <div class="ttl121">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="/">Home</a></li>
                                            <li class="breadcrumb-item"><a href="/membership">Paid Membership</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="title126">
                            <h2>Checkout</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                        <div class="membership_chk_bg">
                            <div class="checkout_title">
                                <h4>Select Payment Method</h4>
                                <img src="images/line.svg" alt="">
                            </div>
                            <div class="checkout-tabs">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a href="#credit-method-tab" id="credit-tab" class="nav-link active" data-toggle="tab"><i class="uil uil-card-atm check_icon5"></i>Credit/Debit Card</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="credit-method-tab" role="tabpanel" aria-labelledby="credit-tab">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="ui search focus mt-30 lbel25">
                                                    <label>Holder Name</label>
                                                    <div class="ui left icon input swdh11 swdh19">
                                                        <input class="prompt srch_explore" type="text" name="holder[name]" value="" id="id_holdername" required="" maxlength="64" placeholder="Enter Holder Name">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="ui search focus mt-30 lbel25">
                                                    <label>Card Number</label>
                                                    <div class="ui left icon input swdh11 swdh19">
                                                        <input class="prompt srch_explore" type="text" name="card[number]" maxlength="16" placeholder="Card #">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="lbel25 mt-30">
                                                    <label>Expiration Month</label>
                                                    <select class="ui hj145 dropdown cntry152 prompt srch_explore" name="card[expire-month]">
                                                        <option value="">Month</option>
                                                        <option value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="ui search focus mt-30 lbel25">
                                                    <label>Expiration Year</label>
                                                    <div class="ui left icon input swdh11 swdh19">
                                                        <input class="prompt srch_explore" type="text" name="card[expire-year]" maxlength="4" placeholder="Year">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="ui search focus mt-30 lbel25">
                                                    <label>Expiration Year</label>
                                                    <div class="ui left icon input swdh11 swdh19">
                                                        <input class="prompt srch_explore"  type="text" name="card[cvc]" maxlength="3" placeholder="CVC">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            <div class="chckout_order_dt">
                                <div class="checkout_title">
                                    <h4>Order Details</h4>
                                    <img src="images/line.svg" alt="">
                                </div>
                                <div class="order_dt_section">
                                    <div class="order_title">
                                        <h4>Business Plan</h4>
                                        <div class="order_price">$49</div>
                                    </div>
                                    <div class="order_title">
                                        <h6>Taxes(GST)</h6>
                                        <div class="order_price">$2</div>
                                    </div>
                                    <div class="order_title">
                                        <h3>Total</h3>
                                        <div class="order_price">$51</div>
                                    </div>
                                    <form method="post" action="<c:url value='/updateRole'/>">
                                    <button class="chckot_btn" type="submit">Confirm Checkout</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>