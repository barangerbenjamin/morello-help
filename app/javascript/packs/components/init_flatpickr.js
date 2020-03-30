import flatpickr from "flatpickr"
import 'flatpickr/dist/themes/airbnb.css'

const init_flatpickr = () => {
  flatpickr(".flatpickr", {
    disableMobile: "true",
    enableTime: true,
    minDate: "today",
    maxDate: new Date().fp_incr(14),
    time_24hr: true,
    shorthandCurrentMonth: true,
    defautlDate: new Date,
    allowInput: true,
    altInput: true,
    "locale": {
      "firstDayOfWeek": 1,
      "startDate": new Date,
      "todayHighlight": true
    }
  });
}

export { init_flatpickr };