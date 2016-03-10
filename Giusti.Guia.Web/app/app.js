var app = angular.module('app', ['ngRoute', 'ngAnimate', 'ui.bootstrap', 'ngCookies', 'toaster'])
    .config(function ($routeProvider, $locationProvider) {
        $routeProvider.when('/signin', { templateUrl: 'app/templates/signin.html', controller: 'signinController' });
        $routeProvider.when('/arearestrita', { templateUrl: 'app/templates/areaRestrita.html', controller: 'areaRestritaController' });
        $routeProvider.when('/paginanaoencontrada', { templateUrl: 'app/templates/paginaNaoEncontrada.html', controller: 'paginaNaoEncontradaController' });
        $routeProvider.when('/motel', { templateUrl: 'app/templates/motelRegiao.html', controller: 'motelController' });
        $routeProvider.when('/motel/:regiao', { templateUrl: 'app/templates/motelRegiao.html', controller: 'motelController' });
        $routeProvider.when('/dadosmotel/:id', { templateUrl: 'app/templates/motel.html', controller: 'motelController' });
        $routeProvider.when('/', { redirectTo: '/motel' });
        $routeProvider.otherwise({ redirectTo: '/paginanaoencontrada' });
        $locationProvider.html5Mode(true);
    });

app.factory('UserService', function ($http, $window, $cookies, $location, toasterAlert) {
    return {
        getUser: function () {
            var user = $cookies.get('user');
            if (user) {
                return JSON.parse(user);
            }
            else {
                return null;
            }
        },
        setUser: function (newUser) {
            if (newUser) {
                    $cookies.put('user', JSON.stringify(newUser));
            }
            else {
                $cookies.put('user', null);
            }
        },
        verificaLogin: function () {
            var user = this.getUser();
            if (!user) {
               $location.path('signin');
            }
        }
    };
});