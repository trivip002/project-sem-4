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
                                        <label>Promotion Code</label>
                                        <div class="ui left icon input swdh11 swdh19">
                                            <input value="" class="prompt srch_explore" id="promotion-code"  type="text" name="card[cvc]" placeholder="CVC">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="chckout_order_dt">
                        <div class="order_dt_section">
                            <div class="order_title">
                                <h4>Courses</h4>
                            </div>
                            <div id="course_title" class="order_title">

                            </div>
                            <div class="order_title">
                                <h3>Total</h3>
                                <div id="total-price" class="order_price">$51</div>
                            </div>
                            <button id="btn-do-checkout" class="chckot_btn" type="submit">Confirm Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
        <script>
            var courseCookies = [];
            $(document).ready(function () {
                $.ajax({
                    url: "/api/cart/get-cart",
                    method: "GET",
                    success: function(result) {
                        courseCookies = $.parseJSON(result);
                        var totalPrice = 0.0;
                        if(courseCookies !== []){
                            $.each(courseCookies, function( i, val ) {
                                $('#course_title').append(`
                                    <h6>`+val['name']+`</h6>
                                    <div id="order_price_`+val['id']+`" class="order_price">`+val['price']+`$</div>
                                `);
                                totalPrice += parseFloat(val['price']);
                            });
                            $('#total-price').text(totalPrice+'$');
                        }
                    }
                });
                $('#btn-do-checkout').click(function () {
                    $('#course_title').find('.order_price').each(function (i) {
                        courseCookies[i].price = parseFloat($(this).text().split('$')[0]);
                    });
                    console.log(courseCookies);
                    setTimeout(function(){
                        $.ajax({
                            url: "/api/cart/checkout",
                            method: "POST",
                            dataType: 'json',
                            contentType:'application/json',
                            data: JSON.stringify(courseCookies),
                            success: function(result) {
                                console.log(result);
                            }
                        });
                        alert('checkout success');
                    }, 2500);

                });
            });
            $('#promotion-code').keyup(function () {
                var courseIds = [];
                var promotionCode = $(this).val();
                $.each(courseCookies, function( i, val ) {
                    courseIds.push(val['id'])
                });
                var data = {
                    courseIds: courseIds,
                    promotionCode: promotionCode
                };
                $.ajax({
                    url: "/api/promotion-detail/get-promotion-detail",
                    method: "POST",
                    dataType: 'json',
                    contentType:'application/json',
                    data: JSON.stringify(data),
                    success: function(result) {
                        var totalPrice = 0.0;
                        if(result.length!==0){
                            for(var i = 0 ; i < result.length; i++){
                                $('#order_price_'+result[i].courseId).text(result[i].lastPrice.toFixed(2)+"$");
                            }
                        }else{
                            $.each(courseCookies, function( i, val ){
                                $('#order_price_'+val['id']).text(val['price']+"$");
                            });
                        }
                        $('#course_title').find('.order_price').each(function (e) {
                            totalPrice += parseFloat($(this).text().split('$')[0]);
                        });
                        $('#total-price').text(totalPrice+'$');
                    }
                });
            });
        </script>
    </stripes:layout-component>
</stripes:layout-render>