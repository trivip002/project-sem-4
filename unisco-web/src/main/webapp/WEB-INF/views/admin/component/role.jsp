<%--
  Created by IntelliJ IDEA.
  User: trivip002
  Date: 2/26/2020
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<br>
    <div class="row mx-4">
        <div class="col-md-4">
            <div class="table-block mt-4" >
                <div class="table-wrapper">
                    <div class="title-header">
                        <div class="title-left">Roles</div>
                        <div class="title-right">Total: {{listRoles.length}}</div>
                    </div>
                    <div class="custom-table">
                        <div class="custom-table-header include-group-btn">
                            <div class="group-btn-row">
                                <div class="mx-2">
                                    <button class="btn btn-core btn-sm">
                                        <i class="fas fa-user-plus" ng-click="openAddModal()" data-toggle="modal" data-target="#roleEditModal">&nbsp;Add</i>
                                    </button>
                                    <button class="btn btn-core btn-sm ml-2">
                                        <i class="fas fa-user-edit" ng-click="openEditModal()" data-toggle="modal" data-target="#roleEditModal">&nbsp;Edit</i>
                                    </button>
                                    <button class="btn btn-core btn-sm ml-2" data-toggle="modal" data-target="#modalDeleteRole">
                                        <i class="fas fa-trash-alt">&nbsp;Delete</i>
                                    </button>
                                </div>
                                <div class="mx-2">
                                    <span>Role Name</span>
                                </div>
                                <div class="custom-table-cell mx-2">
                                    <input class="form-control" type="text">
                                </div>
                            </div>
                            <div class="custom-table-row">
                                <div  class="custom-table-cell k-flex-2"><span >Code</span></div>
                                <div  class="custom-table-cell"><span>Name</span></div>
                                <div class="custom-table-cell"></div>
                            </div>
                        </div>
                        <div class="custom-table-body custom-scrollbar">
                            <div class="custom-table-row" ng-class="item.isSelected?'selected':''" ng-repeat="item in listRoles" >
                                <div class="custom-table-cell k-flex-2 work-break" ng-click="selectedRole(item)">
                                    <span >{{item.roleCode}}</span>
                                </div>
                                <div class="custom-table-cell work-break" ng-click="selectedRole(item)">
                                    <span>{{item.roleName}}</span>
                                </div>
                                <div class="custom-table-cell">
                                    <a class="text-primary detail" href="javascript:void(0)">Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8 mt-4">
            <div class="row">
                <div class="col-md-5 table-block">
                    <div class="table-wrapper">
                        <div class="title-header">
                            <div class="title-left">Active Permissions</div>
                            <div class="title-right">Total: {{listActivePermissions.length}}</div>
                        </div>
                        <div class="custom-table">
                            <div class="custom-table-header include-group-btn">
                                <div class="group-btn-row">
                                    <div class="mx-2"><span>Permission Name</span></div>
                                    <div class="custom-table-cell mx-2">
                                        <input  class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="custom-table-row">
                                    <div class="custom-table-cell checkbox-col"><input type="checkbox" ng-click="clickCheckAllActivePermissions()" ng-model="isAllCheckActivePermissions"></div>
                                    <div class="custom-table-cell k-flex-1"><span>Code</span></div>
                                    <div class="custom-table-cell"><span>Name</span></div>
                                </div>
                            </div>
                            <div class="custom-table-body custom-scrollbar" >
                                <div class="custom-table-row" ng-repeat="item in listActivePermissions">
                                    <div class="custom-table-cell checkbox-col">
                                        <input  type="checkbox" ng-click="checkAvtivePermission()" ng-model="item.isChecked">
                                    </div>
                                    <div class="custom-table-cell k-flex-1">
                                        <div class="work-break"><span>{{item.permissionCode}}</span></div>
                                    </div>
                                    <div class="custom-table-cell k-flex-1">
                                        <div class="work-break"><span>{{item.permissionName}}</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 group-btn-action">
                    <div class="holding">
                        <button class="btn btn-sm btn-core " ng-click="addPermission()"removePermission
                                ng-model="isDisabledAddPermissionButton" ng-disabled="isDisabledAddPermissionButton"><i class="fas fa-arrow-left"></i><span class="add-bnt">Add</span></button>
                        <button class="btn btn-secondary btn-sm mt-1" ng-click="removePermission()" ng-model="isDisabledRemovePermissionButton" ng-disabled="isDisabledRemovePermissionButton"><span>Remove &nbsp;</span><i class="fas fa-arrow-right"></i></button>
                    </div>
                </div>
                <div class="col-md-6 table-block">
                    <div class="table-wrapper">
                        <div class="title-header">
                            <div class="title-left">InActive Permissions</div>
                            <div class="title-right">Total: {{listInActivePermissions.length}}</div>
                        </div>
                        <div class="custom-table">
                            <div class="custom-table-header include-group-btn">
                                <div class="group-btn-row">
                                    <div class="mx-2"><span>Permission Name</span></div>
                                    <div class="custom-table-cell mx-2">
                                        <input  class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="custom-table-row">
                                    <div class="custom-table-cell checkbox-col"><input type="checkbox" ng-click="clickCheckAllInActivePermissions()" ng-model="isAllCheckInActivePermissions"></div>
                                    <div class="custom-table-cell k-flex-1"><span>Code</span></div>
                                    <div class="custom-table-cell"><span>Name</span></div>
                                </div>
                            </div>
                            <div class="custom-table-body custom-scrollbar" >
                                <div class="custom-table-row" ng-repeat="item in listInActivePermissions ">
                                    <div class="custom-table-cell checkbox-col">
                                        <input  type="checkbox" ng-model="item.isChecked" ng-click="checkInAvtivePermission()">
                                    </div>
                                    <div class="custom-table-cell k-flex-1">
                                        <div class="work-break"><span>{{item.permissionCode}}</span></div>
                                    </div>
                                    <div class="custom-table-cell k-flex-1">
                                        <div class="work-break"><span>{{item.permissionName}}</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<br>

<!-- Modal -->
<div class="modal fade" id="roleEditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{{modelEditHeader}}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="code">Role Code</label>
                            <input class="form-control" id="code" ng-model="roleEdit.roleCode" placeholder="Enter code">
                        </div>
                        <div class="form-group">
                            <label for="name">Role Name(Description)</label>
                            <input  class="form-control" id="name" ng-model="roleEdit.roleName" placeholder="Enter name">
                        </div>
                    </div>
                    <!-- /.card-body -->
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" ng-click="closeModal()">Close</button>
                <button type="button" class="btn btn-primary" ng-click="onSaveRole()">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!--Modal: modalConfirmDelete-->
<div class="modal fade" id="modalDeleteRole" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
        <!--Content-->
        <div class="modal-content text-center">
            <!--Header-->
            <div class="modal-header d-flex justify-content-center">
                <p class="heading">Are you sure?</p>
            </div>

            <!--Body-->
            <div class="modal-body">

                <i class="fas fa-times fa-4x animated rotateIn"></i>

            </div>

            <!--Footer-->
            <div class="modal-footer flex-center">
                <a href="" class="btn  btn-outline-danger">Yes</a>
                <a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal">No</a>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!--Modal: modalConfirmDelete-->