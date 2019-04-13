// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// When the user scrolls the page, execute myFunction
window.onscroll = function() {myFunction()};

// Get the navbar
var navbar = document.getElementById("navbar");

// Get the offset position of the navbar
var sticky = navbar.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
} 






var imageCount = 1;
var total = 9;

function photo(x) {
    var image = document.getElementById('image');
    imageCount = imageCount + x;
    if (imageCount > total) {
        imageCount = 1;
    }
    if (imageCount < 1) {
        imageCount = total;
    }
    image.src = "images/img" + imageCount + ".jpg";
    clearInterval(time); 								// clear interval stops the set interval.
    time = window.setInterval(function photoA() { 		// givig the value of time the samfunction below starts the loop 
        var image = document.getElementById('image');
        imageCount = imageCount + 1;
        if (imageCount > total) {
            imageCount = 1;
        }
        if (imageCount < 1) {
            imageCount = total;
        }
        image.src = "images/img" + imageCount + ".jpg";
    }, 2000);
}

var time = window.setInterval(function photoA() {    // just addign the sunction to the variable so you can target it.
    var image = document.getElementById('image');
    imageCount = imageCount + 1;
    if (imageCount > total) {
        imageCount = 1;
    }
    if (imageCount < 1) {
        imageCount = total;
    }
    image.src = "images/img" + imageCount + ".jpg";
}, 2000);



//GOOGLE MAPS
function initMap() {
    var directionsService = new google.maps.DirectionsService;
    var directionsDisplay = new google.maps.DirectionsRenderer;
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: {lat: 53.3385578, lng: -6.2687624}
    });
    directionsDisplay.setMap(map);

    var onChangeHandler = function () {
        calculateAndDisplayRoute(directionsService, directionsDisplay);
    };
    document.getElementById('start').addEventListener('change', onChangeHandler);
    document.getElementById('end').addEventListener('change', onChangeHandler);
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    directionsService.route({
        origin: document.getElementById('start').value,
        destination: document.getElementById('end').value,
        travelMode: 'WALKING'
    }, function (response, status) {
        if (status === 'OK') {
            directionsDisplay.setDirections(response);
        } else {
            window.alert('Directions request failed due to ' + status);
        }
    });
}


function myFunction(x) {
  x.classList.toggle("fa-thumbs-down");
} 
