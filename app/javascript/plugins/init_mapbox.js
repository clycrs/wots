import mapboxgl from 'mapbox-gl';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/chadludo/ckhnn4u5710vs1ap4gzwzn7rm?optimize=true'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '35px';
      element.style.height = '35px';
      element.style.backgroundRepeat = 'no-repeat';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    // Using setTimeout to prevent map from being displayed before DOM parent element #map loading has been completed by browser
    // which offset the final width of the Mapbox canvas
    // https://github.com/mapbox/mapbox-gl-js/issues/2156#issuecomment-186425892

    setTimeout(() => {
      const map = buildMap(mapElement);
      const markers = JSON.parse(mapElement.dataset.markers);

      window.map     = map;
      window.markers = markers;
      window.fitMapToMarkers = fitMapToMarkers;

      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
    }, 500);
  }
};



export { initMapbox };
