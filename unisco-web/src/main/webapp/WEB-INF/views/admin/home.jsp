<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/admin/layout/default.jsp" pageTitle="Home Page" pageCss="style.css">
    <stripes:layout-component name="contents">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <ul class="more_options_tt" style="float: right">
                            <li>
                                <div class="explore_search">
                                    <div class="ui search focus">
                                        <div class="ui left icon input swdh11 swdh15">
                                            <input class="prompt srch_explore" type="text" placeholder="Document Number">
                                            <i class="uil uil-search-alt icon icon8"></i>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <button type="button" class="upload_btn"  data-toggle="modal" data-target="#centralModalDanger"><i class="uil uil-plus-circle"></i></button>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">User Name</th>
                                    <th scope="col">Role Name</th>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">City</th>
                                    <th scope="col">Country</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Avatar</th>
                                    <th scope="col">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listUser}" var="item">
                                    <tr>
                                        <td>${item.userId}</td>
                                        <td>${item.userName!=null?item.userName:"N/A"}</td>
                                        <td>${item.role.roleName!=null?item.role.roleName:"N/A"}</td>
                                        <td>${item.fullName!=null?item.fullName:"N/A"}</td>
                                        <td>${item.address!=null?item.address:"N/A"}</td>
                                        <td>${item.city!=null?item.city:"N/A"}</td>
                                        <td>${item.country!=null?item.country:"N/A"}</td>
                                        <td>${item.telephone!=null?item.telephone:"N/A"}</td>
                                        <td>${item.userEmail!=null?item.userEmail:"N/A"}</td>
                                        <td>${item.userAvatar!=null?item.userAvatar:"N/A"}</td>
                                        <td>
                                            <a><button type="button" class="upload_btn"><i class="uil uil-edit"></i></button></a>
                                            <a><button type="button" class="upload_btn"><i class="uil uil-trash-alt"></i></button></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

<%--        <!-- Button trigger modal-->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCart">Launch modal</button>--%>

        <!-- Modal: modalCart -->
        <div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Your cart</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">

                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Product name</th>
                                <th>Price</th>
                                <th>Remove</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Product 1</td>
                                <td>100$</td>
                                <td><a><i class="fas fa-times"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Product 2</td>
                                <td>100$</td>
                                <td><a><i class="fas fa-times"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Product 3</td>
                                <td>100$</td>
                                <td><a><i class="fas fa-times"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Product 4</td>
                                <td>100$</td>
                                <td><a><i class="fas fa-times"></i></a></td>
                            </tr>
                            <tr class="total">
                                <th scope="row">5</th>
                                <td>Total</td>
                                <td>400$</td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary">Checkout</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal: modalCart -->


        <!-- Central Modal Medium Danger -->
        <div class="modal fade" id="centralModalDanger" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-notify modal-danger" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <p class="heading lead">Add User</p>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>
                    </div>

                    <!--Body-->
                    <div class="modal-body">

                    </div>

                    <!--Footer-->
                    <div class="modal-footer justify-content-center">
                        <a type="button" class="btn btn-danger">Add</a>
                        <a type="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">Cancel</a>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- Central Modal Medium Danger-->
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