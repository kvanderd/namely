@IndexCtrl = ($scope, $http) ->
	$scope.data = 
		names: [{first: "loading...", meaning: "", occupation: "", tagline: ""}]

	loadNames = ->
		$http.get('./names.json').success( (data) ->
			console.log data
			$scope.data.names = data
			console.log "we got the data"
		).error( ->
			console.log "errors" 
		)

	loadNames()