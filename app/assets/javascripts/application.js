// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require underscore
//= require gmaps/google
//= requre ./gmaps4rails/googlemaps.js


function mapBuilder() {
  handler = Gmaps.build('Google');
  handler.buildMap( {internal: {id: 'map'}}, function(){
    // handler.map is the proxy object created by the gem,
    // where you can add your custom methods,
    // like centerOn
    handler.map.centerOn([39.733668, -104.992765]);

    // handler.getMap() is the google map object
    // you can also access it with handler.map.getServiceObject()
    handler.getMap().setZoom(12);
  });
}

function placeMarker(lats, longs, name, start, end, rating, menu) {
    var marker = new google.maps.Marker({
    position: {lat: lats, lng: longs},
    icon: eval(rating),
    map: handler.getMap()
  });

  var contentString = name + '<br>HappyHour start: ' + start + '<br>HappyHour end: ' + end + "<br>Menu: " +  menu.link(menu);

  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(handler.getMap(), marker);
  });
}
//
// function changeZoom() {
//   handler.map.setZoom(100);
// }
//
// document.getElementById("clickMe").onclick = changeZoom();


var iconBase = '/assets/';
var icons = {
  unrated: {
    icon: iconBase + 'Circle_Grey.png'
  },
  great: {
    icon: iconBase + 'Circle_Green.png'
  },
  average: {
    icon: iconBase + 'Circle_Yellow.png'
  },
  bad: {
    icon: iconBase + 'Circle_Red.png'
  }
};
