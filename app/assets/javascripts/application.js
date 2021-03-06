// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require best_in_place
//= require jquery-ui
//= require best_in_place.jquery-ui

//= require jquery_ujs
//= jquery.dataTables
//= jquery-ui-1.10.1.custom.min
//= require bootstrap.min
//= require bootstrap-datepicker
//= require toastr

//= require turbolinks

$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
});

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }

    var input = document.getElementById('email');

function loadSettings() {
    if (localStorage['email']) {
        input.value = localStorage['email'];
    }
}

function saveSettings() {
    localStorage['email'] = input.value;
}
}


$('.best_in_place').best_in_place();
