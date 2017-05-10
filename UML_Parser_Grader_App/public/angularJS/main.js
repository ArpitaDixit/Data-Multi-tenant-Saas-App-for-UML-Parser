
var app = angular.module("umlParserGraderApp", ["ngRoute"]);

app.config(function($routeProvider) {
    $routeProvider
        .when("/umlparsergrader", {
            templateUrl : "templates/login.html"
        })

    .otherwise({ redirectTo: 'templates/login' });
});


app.controller('loginController', function($scope, $route , $location, $window){

    console.log('loginController');
    $scope.master = {}


    $scope.reset = function() {
        $scope.username = '';
        $scope.passwd = '';
    };

    $scope.login = function () {

        console.log('loginController');
        var uname = $scope.username;
        var pwd = $scope.passwd;

        if( uname == 'Paul' && pwd == 'cmpe202_281'){
            setTimeout($route.reload(), 20000);
            $window.location.href = 'templates/main.html';
        }else{
            $scope.msg = 'Please enter correct Credentials';
            $scope.reset();
        }
    }

});

