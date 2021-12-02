import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById("map");

  // only build a map if there's a div#map to inject into
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v10",
      center: [2.1774322, 41.3828939],
      zoom: 8
    });

    //generate the markers
    const markers = JSON.parse(mapElement.dataset.markers);
    if (markers) {
      markers.forEach((marker) => {
        let popup = null;
        if (marker.info_window){
          popup = new mapboxgl.Popup().setHTML(marker.info_window);
        }

        const element = document.createElement("div");
        element.className = "marker";
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = "contain";
        element.style.width = "25px";
        element.style.height = "25px";

        new mapboxgl.Marker(element)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);
      });

      fitMapToMarkers(map, markers);

      window.addEventListener('load', () => {
        map.resize();
        fitMapToMarkers(map, markers);
      })

      // Add fly to feature to map

      //select all fly buttons
      const flyBtns = document.querySelectorAll(".js-fly");

      //add event listener on click for each button
      flyBtns.forEach((flyBtn) => {
        flyBtn.addEventListener("click", (event) => {
          //retrieve coordinates from html
          const coordinates = [
            Number.parseFloat(event.currentTarget.dataset.lng),
            Number.parseFloat(event.currentTarget.dataset.lat),
          ];
          //move map focus to wanted coordinates
          map.flyTo({
            center: coordinates,
            zoom: 10,
          });
        });
      });
    }
  }
};
// change map zoom and center to see all markers

export { initMapbox };
