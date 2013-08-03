@WidgetController = ($scope, distribution_list, $http, $rootScope) ->

  $scope.widget = distribution_list

  $scope.loading =
    show_spinner: false

  window.scope = $scope

WidgetController.resolve =
  distribution_list: ['DistributionListServices', '$q', '$rootScope', (DistributionListServices, $q, $rootScope) ->
    deferred = $q.defer()

    #script_tag = document.getElementById('snaptivist-widget')
    #distribution_list_id = script_tag.getAttribute("petition-id");
    
    DistributionListServices.get_distribution_list(1).then (response) ->
      console.log "got distribution llist"

      deferred.resolve response.result
    
    deferred.promise
  ]