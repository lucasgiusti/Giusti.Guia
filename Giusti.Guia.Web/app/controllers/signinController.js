app.controller('signinController', function ($scope, $http, toasterAlert, UserService, $location) {

    var url = 'api/signin';

    $scope.heading = 'Login';

    //APIs
    $scope.postLogin = function () {
        
        $http.post(url, $scope.usuario).success(function (data) {
            UserService.setUser(data);
            $location.path('arearestrita');
        }).error(function (jqxhr, textStatus) {
            toasterAlert.showAlert(jqxhr.message);
        });
    };

    $scope.cookieDestroy = function () {
        UserService.setUser(null);
        $scope.$emit('atualizaHeaderEmit', null);
    };

    $scope.iniciaDados = function () {
        $scope.usuario = {'email': 'giusti.lucas@gmail.com', 'senha': 'giusti'};
    };
});