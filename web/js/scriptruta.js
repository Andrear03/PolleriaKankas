mapboxgl.accessToken = 'pk.eyJ1IjoiMjAyMDA2NjMyMSIsImEiOiJjbDlhY2poM3UzMHl1M3V0ZzJ1dDhoM3A3In0.NScTVPQ8KrnU6Njiw24-_w';
const map = new mapboxgl.Map({
container: 'map',
// Choose from Mapbox's core styles, or make your own style with Mapbox Studio
style: 'mapbox://styles/mapbox/streets-v11',
center: [-70.2538613, -17.9998355],
zoom: 16.5
});
 
// Create a default Marker and add it to the map.
const marker1 = new mapboxgl.Marker()
.setLngLat([-70.2538613, -17.9998355])
.addTo(map);
 console.log(map.zoom)