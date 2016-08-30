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
//= require bootstrap.js
//= require medium-editor
//= require sticky-kit.js
//= require_tree .


// document.addEventListener("turbolinks:load", function() {
		
// 		$("#main").stick_in_parent({
// 			offset_top: 0
// 		});	

// 		var editor = new MediumEditor('.editable', {
// 			toolbar: {
//         		buttons: ['bold', 'italic', 'underline', 'orderedlist', 'anchor', 'quote', 'image' ]
//     		},
// 			placeholder: {
// 	        	/* This example includes the default options for placeholder,
// 	           if nothing is passed this is what it used */
// 	        	text: 'Начните писать',
// 	        	hideOnClick: true
//     		}
//     		// options go here
//   		});

  
// });

$(document).ready(function(){

	$("#main").stick_in_parent({
		offset_top: 0
		});

    var editor = new MediumEditor('.editable', {
			toolbar: {
        		buttons: ['bold', 'italic', 'underline', 'orderedlist', 'anchor', 'quote', 'image' ]
    		},
			placeholder: {
	        	/* This example includes the default options for placeholder,
	           if nothing is passed this is what it used */
	        	text: 'Начните писать',
	        	hideOnClick: true
    		}
    		// options go here
  		});

    alert("test");

 })

