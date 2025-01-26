// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//import "@hotwired/turbo-rails"
//import "controllers"
//= require bootstrap
document.addEventListener("DOMContentLoaded", () => {
    const isSmallDevice = window.innerWidth <= 768;
    const urlParams = new URLSearchParams(window.location.search);
    if (isSmallDevice && urlParams.get("per") !== "5") {
      urlParams.set("per", "5");
      window.location.search = urlParams.toString();
    }
  });  