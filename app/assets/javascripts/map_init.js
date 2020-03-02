let map

function initMap(){
  geocoder = new google.maps.Geocoder()

  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 35.681236, lng:139.767125},
    zoom: 12,
  });

  marker = new google.maps.Marker({
    position:  {lat: 35.681236, lng:139.767125},
    map: map
  });
}