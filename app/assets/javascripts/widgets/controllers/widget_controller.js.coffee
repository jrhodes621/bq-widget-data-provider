@WidgetController = ($scope, distribution_list, $http, $rootScope) ->

  $scope.widget = distribution_list

  $scope.selected_tab = 0
  $scope.selected_category = 0
  $scope.selected_subcategory = 0

  $scope.loading =
    show_spinner: false

  $scope.show_tab = (index) ->
    console.log "switch to tab " + index
    $scope.selected_tab = index
    $scope.selected_category = 0
    $scope.selected_subcategory = 0

  $scope.show_list = (index) ->
    return $scope.selected_tab == index

  $scope.show_category_clicked = (index) ->
    $scope.selected_category = index

  $scope.show_category = (index) ->
    return $scope.selected_category == index

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