window.app.
directive 'chatCreation', ->
  restrict: 'E'
  templateUrl: 'chat_creation/chat_creation_block.html'
  replace: true
  scope: {map: '='}
  link: (scope) ->
    init = ->
      navigator.geolocation.getCurrentPosition(setCenter) if navigator.geolocation != null
    setCenter = (position) ->
      scope.map = new ymaps.Map("map", {
        center: [position.coords.latitude, position.coords.longitude]
        zoom: 15
      })
      placemark = new ymaps.Placemark([position.coords.latitude, position.coords.longitude])
      scope.map.geoObjects.add(placemark)
      scope.map.latitude = position.coords.latitude
      scope.map.longitude = position.coords.longitude
      scope.$apply()
    ymaps.ready(init)
