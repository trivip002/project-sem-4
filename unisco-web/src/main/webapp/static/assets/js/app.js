'use strict';

var App = angular.module('adminApp',['ngRoute']);

App.config(['$routeProvider', function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: '/admin/home',
            controller : 'HomeConrtoller as homeCtrl'
        })
        .when('/user', {
            templateUrl: '/admin/user',
            controller: 'UserConrtoller as userCtrl'
        })
        .when('/role', {
            templateUrl: '/admin/role',
            controller: 'RoleConrtoller as roleCtrl'
        })
        .otherwise({redirectTo:'/'});
}]);

