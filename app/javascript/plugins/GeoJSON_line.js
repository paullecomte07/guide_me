import 'mapbox-gl/dist/mapbox-gl.css';
import mapboxgl from 'mapbox-gl';


const traceLineMap = (map) => {

let a = document.getElementById("marker-not-display").innerText
let json = JSON.parse(a)
let urlCoordinates = ""
json.forEach((element)=>
  urlCoordinates += `${element[0]},${element[1]};`
  )
urlCoordinates = urlCoordinates.slice(0,-1)

fetch(`https://api.mapbox.com/directions/v5/mapbox/cycling/${urlCoordinates}?access_token=${process.env.MAPBOX_API_KEY}&geometries=geojson`)
    .then(response => response.json())
    .then(data => data["routes"]["0"]["geometry"])
    .then(geometry =>
          map.on('load', function () {
            map.addLayer({
              "id": "route",
              "type": "line",
              "source": {
                "type": "geojson",
                "data": {
                  "type": "Feature",
                  "properties": {},
                  "geometry": geometry
                  }
                },
                "layout": {
                  "line-join": "round",
                  "line-cap": "round"
                },
                "paint": {
                  "line-color": "#888",
                  "line-width": 8
              }
            });
          })
    );

}
export { traceLineMap };

