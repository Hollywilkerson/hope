// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require underscore
//= require gmaps/google



handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'basic_map' }});



var handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'multi_markers'}}, function(){
  var markers = handler.addMarkers([
    { lat: 43, lng: 3.5},
    { lat: 45, lng: 4},
    { lat: 47, lng: 3.5},
    { lat: 49, lng: 4},
    { lat: 51, lng: 3.5}
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});
