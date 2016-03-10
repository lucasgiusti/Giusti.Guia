app.controller('areaRestritaController', function ($scope, $http, $window, $location, UserService, toasterAlert) {
    UserService.verificaLogin();

    $scope.heading = 'Área Restrita';
    $scope.message = "Esta página só pode ser acessada após fazer o login.";
    var url = 'api/usuario';
    var headerAuth = { headers: { 'Authorization': 'Basic ' + UserService.getUser().token } };

    $scope.usuarios = [];
    $scope.acessoLiberado = false;

    //APIs
    $scope.getUsuarios = function () {

        $http.get(url, headerAuth).success(function (data) {
            $scope.usuarios = data;
            $scope.acessoLiberado = true;
        }).error(function (jqxhr, textStatus) {
            if (textStatus) {
                $location.path('signin');
            }
            else {
                toasterAlert.showAlert(jqxhr.message);
            }
        })
    };
});