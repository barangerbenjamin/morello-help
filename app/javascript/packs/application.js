require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
console.log('Hello World from Webpacker')


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";
import $ from 'jquery';
import { init_flatpickr } from './components/init_flatpickr';
import "controllers";


const needForm = document.getElementById("new_need");
if (needForm) {
  init_flatpickr();
}

const alert = document.querySelector(".alert");
if (alert) {
  setTimeout(() => {
    $(".alert").fadeOut()
  }, 5000);
}

const messageContent = document.getElementById("message_content");
if (messageContent) {
  const form = document.querySelector(".chat-form");
  form.addEventListener("submit", () => {
    messageContent.value = "";
  });
}