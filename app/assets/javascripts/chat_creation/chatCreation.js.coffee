window.app.
directive 'chatCreation', ->
  restrict: 'E'
  templateUrl: 'chat_creation/chat_creation_block.html'
  controller: 'ChatCreationCtrl'
  link: (scope) ->
    init = ->
			navigator.geolocation.getCurrentPosition(setCenter) if navigator.geolocation?

			scope.map = new ymaps.Map("map", {
        center: [55.76, 37.64]
        zoom: 7
      })
    ymaps.ready(init)
		debugger
