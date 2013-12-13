#put all functionality that declared controller may need, example: custom services

#=require_self
#=require_tree .controllers/


Name = angular.Module('Name', [])

Name.config([ '$routeProvider', ($routeProvider) -> 

  $routeProvider.when('name/:nameId', {templateUrl '../assets/mainName.html', controller: 'NameCtrl' })
  $routeProvider.otherwise( {templateUrl '../assets/mainIndex.html', controller: 'IndexCtrl' })
])