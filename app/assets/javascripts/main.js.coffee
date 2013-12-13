#put all functionality that declared controller may need, example: custom services

#= require_self
#= require_tree ./controllers/main

Name = angular.module('Name', [])

# Sets up routing
Name.config(['$routeProvider', ($routeProvider) ->
  # Route for '/name'
  $routeProvider.when('/name', { templateUrl: '../assets/mainName.html', controller: 'NameCtrl' } )
  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])



