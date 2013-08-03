@app.factory "DistributionListServices", ['$http', '$q', '$rootScope', ($http, $q, $rootScope) ->

  get_distribution_list: (distribution_list_id) ->
    console.log "Fetching distribution list: ", distribution_list_id
    deferred = $q.defer()
    $http.jsonp('http://fast-crag-9968.herokuapp.com/api/distribution_lists/1?callback=JSON_CALLBACK', params: {id: distribution_list_id}).success (response) ->
      if response.statusCode is 200
        deferred.resolve(response)
      else
        deferred.reject(response)
    deferred.promise

]
