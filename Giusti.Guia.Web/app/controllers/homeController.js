app.controller('homeController', function ($scope, $http, $window, $location, UserService, toasterAlert) {

    $scope.message = "Todos os motéis";
    var urlSignin = 'api/signin';

    //APIs
    $scope.postLogin = function () {
        $http.post(urlSignin, $scope.usuario).success(function (data) {
            UserService.setUser(data);
        }).error(function (jqxhr, textStatus) {
            toasterAlert.showAlert(jqxhr.message);
        });
    };

    $scope.cookieDestroy = function () {
        UserService.setUser(null);
    };
});