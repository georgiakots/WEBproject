<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MAP </title>

    <!--leaflet css-->

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
    integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="crossorigin=""/>

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ==" crossorigin="" />
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.76.1/dist/L.Control.Locate.min.css" />
    
    <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
    

</head>
<body>
    
    <h1 style="font-size: 20px;margin: auto; color: black; display: flex; align-content: center; justify-content: center;">"MAP"</h1><br>

    <a href="admin.php" style="position:fixed; bottom:70px; right: 100px" >HOME</a>

    <div id="map" class='map' style="position:relative;"></div>  <br>

    <form name = 'poiForm' class= 'poiForm' style="position:relative;">
         POI name: <input type = 'text' id = 'poiName' /> <br />
         POI category: <input type = 'text' id = 'poiCategory' /> <br />
         <input type = 'button' onclick = 'ajaxFunction()' value = 'Search places'/>
    </form>

</body>
</html>
    
    <!--leaflet jf-->

    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
    integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="crossorigin=""></script>

    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js" integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ==" crossorigin=""></script>

    <script src="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.76.1/dist/L.Control.Locate.min.js" charset="utf-8"></script>

    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>

<style>
    #map { 
        
        width: 67vw;
        height: 620px;
        margin: auto;
        allign-items: center;
        justify-content: center;
         }
</style>
<script>
var mapsPlaceholder = [];
   

L.Map.addInitHook(function () {
   mapsPlaceholder.push(this);
});

//map initialization
var map = L.map('map').setView([38.246232, 21.734868], 16);

var streetMap =  L.tileLayer('https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
    subdomains: 'abcd',
    maxZoom: 16
});
streetMap.addTo(map)

//current user's location
L.control.locate({watch: true}).addTo(map); 

/*
//Marker
var singleMarker1 = L.marker([38.249804, 21.738939]).addTo(map);
var popup = singleMarker1.bindPopup('Ελληνικά Ταχυδρομεία (ΕΛΤΑ)').openPopup()
popup.addTo(map);
*/
</script>

<script language = "javascript" type = "text/javascript">
         
         var currentMap = mapsPlaceholder.pop();
         var mapFeatureGroup = L.featureGroup().addTo(currentMap);

         //Browser Support Code
         function ajaxFunction() {
            var ajaxRequest;  // The variable that makes Ajax possible!
            
            try {        
               // Opera 8.0+, Firefox, Safari
               ajaxRequest = new XMLHttpRequest();
            } catch (e) {
               
               // Internet Explorer Browsers
               try {
                  ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
               } catch (e) {
                  
                  try {
                     ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                  } catch (e) {
                     // Something went wrong
                     alert("Your browser broke!");
                     return false;
                  }
               }
            }
            
            // Now get the value from user and pass it to
            // server script.
            var poi = document.getElementById('poiName').value;
            var category = document.getElementById('poiCategory').value;
            var queryString = "?poiName=" + poi;
            queryString +=  "&poiCategory=" + category;
            

            const weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
            const d = new Date();
            var currentDay = weekday[d.getDay()];

            queryString +=  "&currentday=" + currentDay;

            ajaxRequest.open("GET", "ajax_backend2.php" + queryString, true);
            ajaxRequest.send(null); 

            // Create a function that will receive data
            // sent from the server and will update
            // div section in the same page.
            ajaxRequest.onreadystatechange = function() {
            
               if(ajaxRequest.readyState == 4) {
            
               const response = JSON.parse(ajaxRequest.responseText);

               mapFeatureGroup.clearLayers();

                           
               

               for (let i in response) {

                  var peopleTraffic = [];

                  var currentHour = d.getHours();

                  var currentData = response[i].data.replace('[','').replace(']','').split(',');

                  peopleTraffic.push(parseInt(currentData[currentHour]));

                  if (currentHour<=22){
                     peopleTraffic.push(parseInt(currentData[currentHour+1]));
                  }

                  if (currentHour<=21){
                     peopleTraffic.push(parseInt(currentData[currentHour+2]));
                  }

                  var min = Math.min(...peopleTraffic),
                      max = Math.max(...peopleTraffic);
                  
                  var trafficAverage = peopleTraffic.reduce((a, b) => a + b, 0) / peopleTraffic.length;

                  var trafficPercentage =  parseFloat(trafficAverage).toFixed();

                  var colour;

                  if (trafficPercentage<=32){
                     colour = 'green';
                  } else if (trafficPercentage<=65){
                     colour = 'orange';
                  } else {
                     colour = 'red';
                  }

                  const markerHtmlStyles = `
                  background-color: ${colour};
                  width: 3rem;
                  height: 3rem;
                  display: block;
                  left: -1.5rem;
                  top: -1.5rem;
                  position: relative;
                  border-radius: 3rem 3rem 0;
                  transform: rotate(45deg);
                  border: 1px solid #FFFFFF`;

                  const myIcon = L.divIcon({
                  className: "my-custom-pin",
                  iconAnchor: [0, 24],
                  labelAnchor: [-6, 0],
                  popupAnchor: [0, -36],
                  html: `<span style="${markerHtmlStyles}" />`
                  });
                  

                  var marker = L.marker([response[i].latitude, response[i].longtitude], {draggable: false, icon: myIcon})
                              .bindPopup("<h3>"+response[i].name + "</h3><br>Εκτιμώμενη επισκεψιμότητα: " + min + " - " + max )
                              .addTo(mapFeatureGroup);
               }

               currentMap.fitBounds(mapFeatureGroup.getBounds());
               //var poiname = response[i].name; 
         
               }
               
            }
         }
         
      </script>