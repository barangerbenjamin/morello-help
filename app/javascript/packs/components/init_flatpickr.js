import flatpickr from "flatpickr"
import 'flatpickr/dist/flatpickr.min.css'

const init_flatpickr = () => {
  flatpickr(".flatpickr", {
    disableMobile: "true",
    enableTime: true,
    minDate: "today",
    maxDate: new Date().fp_incr(14)
  });
}

export { init_flatpickr };