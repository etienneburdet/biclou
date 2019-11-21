import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/dark.css";


const initFlatpickr = () => {
  flatpickr('.datePicker', {
    enableTime: true,
    time_24hr: true
  });
}

export { initFlatpickr };

