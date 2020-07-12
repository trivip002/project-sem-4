<%@ page import="com.unisco.utils.Principal" %>
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
                                <div id="order_dt_section" class="order_dt_section">

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var courseCookies = [];
            $(document).ready(function (){
                $.ajax({
                    url: "/api/cart/get-cart",
                    method: "GET",
                    success: function(result) {
                        courseCookies = $.parseJSON(result);
                        if(courseCookies !== []){
                            $.each(courseCookies, function( i, val ) {
                                $('#order_dt_section').append(`
                                     <div id='course-`+val['id']+`' class="order_title">
                                        <div class="order_img">
                                            <img style="width: 10%" src="`+val['image']+`">
                                        </div>
                                        <h4>`+val['description']+`</h4>
                                        <div class="order_price">`+val['price']+`
                                            <div style="padding-left: 10px;"></div>
                                            <a href="javascript:void(0)" onclick="deleteCard('`+val['id']+`')">
                                                <i class="fa fa-times" style="color: #ed2a26;" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                `);
                            });
                            $('#order_dt_section').append(`
                                <button class="chckot_btn" onclick="deleteAllCard()" type="submit">Remove All</button>
                            `);
                            var userName = '<%=Principal.getPrincipal()%>';
                            if(userName!=='anonymousUser'){
                                $('#order_dt_section').append(`
                                 <button class="chckot_btn" onclick="redirectCheckOutCard()" type="submit" style="margin-right: 2%;">Checkout</button>
                            `);
                            }
                        }
                    }
                });
            });
            function redirectCheckOutCard() {
                window.location.href = "/cart-checkout";
            }
            function deleteAllCard() {
                $('#order_dt_section').remove();
                $.ajax({
                    url: "/api/cart/remove-all-cart",
                    method: "POST",
                    success: function(result) {
                        console.log(result);
                    }
                });
            }
            function deleteCard(id) {
                courseCookies.forEach(function(emp, index){
                    if(emp.id===id){
                        courseCookies.splice(index,1);
                        $('#course-'+id).remove();
                    }
                });
                if(courseCookies.length==0){
                    $('#order_dt_section').remove();
                }else{
                    var dataBiding = {
                        courseId: id,
                        courseCookies: courseCookies
                    };
                    $.ajax({
                        url: "/api/cart/remove-cart",
                        method: "POST",
                        dataType: 'json',
                        contentType:'application/json',
                        data: JSON.stringify(dataBiding),
                        success: function(result) {
                            console.log(result);
                        }
                    });
                }
            }
        </script>
    </stripes:layout-component>
</stripes:layout-render>