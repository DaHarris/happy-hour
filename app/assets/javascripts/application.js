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
//= require turbolinks
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
    handler.map.centerOn([39.73374, -104.99276]);

    // handler.getMap() is the google map object
    // you can also access it with handler.map.getServiceObject()
    handler.getMap().setZoom(12);
  });
}

function placeMarker(lats, longs) {
    var marker = new google.maps.Marker({
    position: {lat: lats, lng: longs},
    map: handler.getMap()
  });
}
