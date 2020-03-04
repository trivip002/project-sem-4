'use strict';

App.controller('RoleConrtoller', function($scope, $http, $filter) {
    $scope.modelEditHeader = "Edit Role";
    Array.prototype.diff = function(a) {
        return this.filter(function(i) {return a.indexOf(i) < 0;});
    };
    $scope.onRefresh = function () {
        $http.get("/api/admin/get-all-roles")
            .then(function (response) {
                $scope.listRoles = response.data;
                angular.forEach($scope.listRoles, function (value) {
                    value.isSelected = false;
                });
                $scope.listRoles[0].isSelected = true;
                $scope.roleEdit = Object.assign({}, $scope.listRoles[0]);
                $scope.tempEditRole = Object.assign({}, $scope.roleEdit);
                getActiveAndInActivePermission($scope.listRoles[0]);
            }, function (error) {
                console.log(error);
            });
    };
    $scope.onRefresh();
    function getActiveAndInActivePermission(role){
        $scope.listActivePermissions = [];
        $scope.listInActivePermissions = [];
        $scope.isAllCheckActivePermissions = false;
        $scope.isAllCheckInActivePermissions = false;
        $scope.isDisabledAddPermissionButton = true;
        $scope.isDisabledRemovePermissionButton = true;
        $http.get("/api/admin/get-all-permissions").then(function (data) {
            for(var i = 0 ; i < role.permissionIds.length; i++){
                for(var j = 0 ; j < data.data.length; j++){
                    if(role.permissionIds[i] === data.data[j].permissionId){
                        $scope.listActivePermissions.push(data.data[j]);
                        break;
                    }
                }
            }
            $scope.listInActivePermissions = data.data.diff($scope.listActivePermissions);
            angular.forEach($scope.listActivePermissions, function (value) {
                value.isChecked = false;
            });
            angular.forEach($scope.listInActivePermissions, function (value) {
                value.isChecked = false;
            });
        });
    }
    $scope.selectedRole = function(value) {
        $http.get("/api/admin/get-all-roles")
            .then(function(response) {
                $scope.listRoles = response.data;
                angular.forEach($scope.listRoles, function (item) {
                    if(item.roleId !== value.roleId){
                        item.isSelected = false;
                    }
                });
                value = $filter('filter')($scope.listRoles, {roleId: value.roleId})[0];
                $scope.roleEdit =  Object.assign({}, value);
                value.isSelected = !value.isSelected;
                getActiveAndInActivePermission(value);
            }, function(error){
                console.log(error);
            });
    };
    $scope.clickCheckAllActivePermissions = function () {
        angular.forEach($scope.listActivePermissions, function (value) {value.isChecked = $scope.isAllCheckActivePermissions;});
        $scope.isDisabledRemovePermissionButton = $filter('filter')($scope.listActivePermissions, {isChecked: true}).length===0;
    };
    $scope.clickCheckAllInActivePermissions = function () {
        angular.forEach($scope.listInActivePermissions, function (value) {value.isChecked = $scope.isAllCheckInActivePermissions;});
        $scope.isDisabledAddPermissionButton = $filter('filter')($scope.listInActivePermissions, {isChecked: true}).length===0;
    };
    $scope.checkAvtivePermission = function () {
        $scope.isAllCheckActivePermissions = $scope.listActivePermissions.length===$filter('filter')($scope.listActivePermissions, {isChecked: true}).length;
        $scope.isDisabledRemovePermissionButton = $filter('filter')($scope.listActivePermissions, {isChecked: true}).length===0;
    };
    $scope.checkInAvtivePermission = function () {
        $scope.isAllCheckInActivePermissions = $scope.listInActivePermissions.length===$filter('filter')($scope.listInActivePermissions, {isChecked: true}).length;
        $scope.isDisabledAddPermissionButton = $filter('filter')($scope.listInActivePermissions, {isChecked: true}).length===0;
    };
    $scope.removePermission = function(){
        var listPermissionsToRemove = $filter('filter')($scope.listActivePermissions, {isChecked: true});
        $http.post("/api/admin/remove-permission-to-role/"+$scope.roleEdit.roleId,JSON.stringify(listPermissionsToRemove),{transformResponse: angular.identity}).then(function(response) {
            angular.forEach(listPermissionsToRemove, function (value) {
                value.isChecked = false;
                $scope.listInActivePermissions.push(value);
                $scope.listActivePermissions.splice($scope.listActivePermissions.indexOf(value),1);
            });
            $scope.isAllCheckActivePermissions = false;
            $scope.isAllCheckInActivePermissions = false;
            $scope.isDisabledAddPermissionButton = true;
            $scope.isDisabledRemovePermissionButton = true;
        }, function(error){
            console.log(error);
        });
    };
    $scope.addPermission = function(){
        var listPermissionsToAdd = $filter('filter')($scope.listInActivePermissions, {isChecked: true});
        $http.post("/api/admin/add-permission-to-role/"+$scope.roleEdit.roleId,JSON.stringify(listPermissionsToAdd),{transformResponse: angular.identity}).then(function(response) {
            angular.forEach(listPermissionsToAdd, function (value) {
                value.isChecked = false;
                $scope.listActivePermissions.push(value);
                $scope.listInActivePermissions.splice($scope.listInActivePermissions.indexOf(value),1);
            });
            $scope.isAllCheckActivePermissions = false;
            $scope.isAllCheckInActivePermissions = false;
            $scope.isDisabledAddPermissionButton = true;
            $scope.isDisabledRemovePermissionButton = true;
        }, function(error){
            console.log(error);
        });
    };
    $scope.openEditModal = function () {
        $scope.modelEditHeader = "Edit Role";
    };
    $scope.openAddModal = function () {
        $scope.modelEditHeader = "Add Role";
        $scope.roleEdit.roleId = undefined;
        $scope.roleEdit.roleCode = "";
        $scope.roleEdit.roleName = "";
        $scope.roleEdit.permissions = [];
    };
    $scope.closeModal = function () {
        $scope.roleEdit =  Object.assign({}, $scope.tempEditRole);
    };
    $scope.onSaveRole = function () {
        if(!$scope.roleEdit.roleId){
            $http.post("/api/admin/add-role",JSON.stringify($scope.roleEdit),{transformResponse: angular.identity}).then(function(response) {
                $scope.onRefresh();
            }, function(error){
                console.log(error);
            });
        }else{
            $http.put("/api/admin/update-role/"+$scope.roleEdit.roleId,JSON.stringify($scope.roleEdit),{transformResponse: angular.identity}).then(function(response) {
                $scope.onRefresh();
            }, function(error){
                console.log(error);
            });
        }
        $scope.closeModal();
        $("#roleEditModal").modal("hide");
    }
});