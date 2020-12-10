const initSwitch = () => {

  const filter = document.getElementById("switch");
  const filterView = document.getElementById("filter-view");
  const mapView = document.getElementById("map-view");

  if(filter) {
    filter.addEventListener("change", (event) => {
      filterView.style.display = filterView.style.display === "none" ? "" : "none";
      mapView.style.display = filterView.style.display === "none" ? "" : "none";
    });
  }
}

export { initSwitch }
