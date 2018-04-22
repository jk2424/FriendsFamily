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
//

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require loading_screen

function load(/photos) {
    console.log("hello")
    // display loading image here...
    document.getElementById('loading.gif').visible = true;
    // request your data...
    var req = new XMLHttpRequest();
    req.open("POST", url, true);

    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            // content is loaded...hide the gif and display the content...
            if (req.responseText) {
                document.getElementById('loading.gif').innerHTML = req.responseText;
                document.getElementById('loading.gif').visible = false;
            }
        }
    };
    request.send(vars);
}

$(document).on('turbolinks:load', function(){


    $('.carousel').carousel();
    $(".tabs").tabs();

    $(document).on('click', '[href="#mens"], [href="#womans"]', function(){
      $('.carousel').carousel();
    })


});
