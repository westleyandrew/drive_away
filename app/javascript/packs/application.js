import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "../plugins/flatpickr"

import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initSweetalert } from '../plugins/init_sweetalert';


initMapbox();

initSweetalert('#sweet-alert-demo', {
  title: "Congratulations!",
  text: "We've sent you an email with the confirmation.",
  icon: "success"
}, (value) => {
  const form = document.querySelector("#new_booking");
  form.submit();
});
