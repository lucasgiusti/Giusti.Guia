app.controller('motelController', function ($scope, $http, $window, $location, $routeParams, UserService, toasterAlert) {

    $scope.regiao = "";
    var urlSignin = 'api/signin';
    var url = 'api/motel';

    //APIs
    $scope.postLogin = function () {
        $http.post(urlSignin, $scope.usuario).success(function (data) {
            UserService.setUser(data);
        }).error(function (jqxhr, textStatus) {
            toasterAlert.showAlert(jqxhr.message);
        });
    };

    $scope.getMoteis = function () {

        if (!angular.isUndefined($routeParams.regiao)) {
            $scope.regiao = $routeParams.regiao;
            $scope.nomeRegiao = $scope.retornaNomeRegiao($scope.regiao);
        }

        if (!angular.isUndefined($routeParams.id)) {
            $scope.id = $routeParams.id;
        }

        $http.get(url).success(function (data) {
            $scope.moteis = data;
        }).error(function (jqxhr, textStatus) {
            toasterAlert.showAlert(jqxhr.message);
        })
    };

    $scope.cookieDestroy = function () {
        UserService.setUser(null);
    };

    $scope.retornaNomeRegiao = function (regiao) {
        if (regiao == 'saopaulo')
            return 'EM SÃO PAULO';
        else if(regiao == 'riodejaneiro')
            return 'EM RIO DE JANEIRO';
        else if (regiao == 'florianopolis')
            return 'EM FLORIANÓPOLIS';
        else if (regiao == 'recife')
            return 'EM RECIFE';
        else
            return '';
    };

    $scope.retornaNomeRegiaoItem = function (regiao) {
        if (regiao == 'saopaulo')
            return 'São Paulo';
        else if (regiao == 'riodejaneiro')
            return 'Rio de Janeiro';
        else if (regiao == 'florianopolis')
            return 'Florianópolis';
        else if (regiao == 'recife')
            return 'Recife';
        else
            return '';
    };
});