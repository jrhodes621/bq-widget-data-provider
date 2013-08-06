@app = angular.module('widget', [])
	.value('$anchorScroll', angular.noop)

@app.config ['$routeProvider', ($routeProvider) ->
  base_page_url = '/'
  $routeProvider.when('/',
    templateUrl: 'http://calm-harbor-9975.herokuapp.com/widgets/menu'
    controller: WidgetController 
    resolve: WidgetController.resolve
  ).otherwise redirectTo: base_page_url
]

@app.config ['$locationProvider', ($locationProvider) ->
  $locationProvider.html5mode = true
]
