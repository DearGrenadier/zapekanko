window.app.
directive 'chatCreation', ->
  restrict: 'E'
  templateUrl: 'chat_creation/chat_creation_block.html'
  controller: 'ChatCreationCtrl'
  link: (scope) ->
    init = ->
      navigator.geolocation.getCurrentPosition(setCenter) if navigator.geolocation != null
    setCenter = (position) ->
      scope.map = new ymaps.Map("map", {
        center: [position.coords.latitude, position.coords.longitude]
        zoom: 15
      })
    ymaps.ready(init)
