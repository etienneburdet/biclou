import "bootstrap";

// import newBikeEvt from '../components/add_bike';

import flatpickr from "../components/flatpickr";
import { initTyped } from "../components/dynamic_placeholders.js";
import { initMapbox } from '../components/init_mapbox';

if(document.getElementById('home-search')) {
  initTyped();
}
initMapbox();
