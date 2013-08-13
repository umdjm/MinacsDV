rad = function(x) {return x*Math.PI/180;}

distanceBetweenTwoPoints = function(p1, p2) {
  var R = 3959; // earth's mean radius in miles
  var dLat  = rad(p2.lat() - p1.lat());
  var dLong = rad(p2.lng() - p1.lng());

  var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
          Math.cos(rad(p1.lat())) * Math.cos(rad(p2.lat())) * Math.sin(dLong/2) * Math.sin(dLong/2);
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  var d = R * c;

  return Math.round(d*10)/10;
}
/*var map;
var layer = [];
var geoData;
var oTable = null;

var icon1 = {
  url: "http://labs.google.com/ridefinder/images/mm_20_red.png",
  size: new google.maps.Size(12, 20),
  origin: new google.maps.Point(0,0),
  anchor: new google.maps.Point(6, 20)
}; 
var icon2 = {
  url: "http://labs.google.com/ridefinder/images/mm_20_blue.png",
  size: new google.maps.Size(12, 20),
  origin: new google.maps.Point(0,0),
  anchor: new google.maps.Point(6, 20)
}; 
 var iconShadow = {
url: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png',
// The shadow image is larger in the horizontal dimension
// while the position and offset are the same as for the main image.
size: new google.maps.Size(22, 20),
origin: new google.maps.Point(0,0),
anchor: new google.maps.Point(6, 20)
};
// Shapes define the clickable region of the icon.
// The type defines an HTML &lt;area&gt; element 'poly' which
// traces out a polygon as a series of X,Y points. The final
// coordinate closes the poly by connecting to the first
// coordinate.
var iconShape = {
coord: [4,0,0,4,0,7,3,11,4,19,7,19,8,11,11,7,11,4,7,0],
type: 'poly'
}; 


function filterData() {
    var filtered;
    if(oTable != null)
    {
      for (var i=0; i< (layer.length); i++) 
        layer[i].setMap(null);

      oTable.$('tr', {"filter": "applied"}).each(function( index ) {
        layer[this._DT_RowIndex].setMap(map);
      });     
    }
  }

function loadData() {

  $.ajax({
    type: "GET",
    dataType: "json",
    async: false,
    url: "/campaign_members/geodata",
    success: function(data){
            geoData = data; 
            var geoDataTransformed = [];
            for (var i=0; i< data.length; i++) {
              var datapoint = data[i];
              geoDataTransformed.push([
                datapoint.name,
                datapoint.address,
                datapoint.success,
                datapoint.amount
                ]);
              var icon = icon1;
              if(datapoint.amount > 500)
                icon = icon2;

              layer.push(
                new google.maps.Marker({
                  position: new google.maps.LatLng(datapoint.lat, datapoint.lng),
                  map: map,
                  icon: icon,
                  shadow: iconShadow,
                  shape: iconShape
                  })
              );
            }
            oTable = $('#example').dataTable( {
              "fnDrawCallback": function( oSettings ) {
                filterData();
              },
              "sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
              "sPaginationType": "bootstrap",
              "bProcessing": true,
              "aaData" : geoDataTransformed,
              "aoColumns" : [
                  { "sTitle": "Name" },
                  { "sTitle": "Address" },
                  { "sTitle": "Visits" },
                  { "sTitle": "Amount" }
                  ]
            } ).fnSetFilteringDelay(1000);
          }
        });
        return layer;
      }
$(document).ready(function() {
  $("#test").click(function(){
    for (var i=0; i< (layer.length); i++) 
    {
      if(geoData[i].success == 0)
        layer[i].setMap(null);
    }
  });      
});

window.onload = function(){

  var myLatlng = new google.maps.LatLng(42.312581, -83.298304);


  var myOptions = {
    zoom: 10,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    disableDefaultUI: false,
    scrollwheel: true,
    draggable: true,
    navigationControl: true,
    mapTypeControl: false,
    scaleControl: true,
    disableDoubleClickZoom: false
  };

  map = new google.maps.Map(document.getElementById("heatmapArea"), myOptions);
  loadData();
};
*/