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
//= require bootstrap-sprockets
//= require bootstrap-wysihtml5

$(document).on('page:load', function(){
  window['rangy'].initialized = false
	//   var youtube = {
	//     init: function() {
	//         var v = $(".youtube-player");
	//         if (v.empty()) {
	//             for (var n = 0; n < v.length; n++) {
	//                 var p = document.createElement("div");
	//                 p.innerHTML = labnolThumb(v[n].dataset.id);
	//                 p.onclick = labnolIframe;
	//                 v[n].appendChild(p);
	//             }
	//             function labnolThumb(id) {
	//                 return '<img class="youtube-thumb" src="//i.ytimg.com/vi/' + id + '/hqdefault.jpg"><div class="play-button"></div>';
	//             }

	//             function labnolIframe() {
	//                 var iframe = document.createElement("iframe");
	//                 iframe.setAttribute("src", "//www.youtube.com/embed/" + this.parentNode.dataset.id + "?autoplay=1&autohide=2&border=0&wmode=opaque&enablejsapi=1&controls=1&showinfo=0");
	//                 iframe.setAttribute("frameborder", "0");
	//                 iframe.setAttribute("id", "youtube-iframe");
	//                 this.parentNode.replaceChild(iframe, this);
	//             }
	//         }

	//     }
	// };

 
});




