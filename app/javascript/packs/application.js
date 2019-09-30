// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("jquery")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//= require semantic-ui


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//

function gotoBottom(id){
  var element = document.getElementById('messages');
  element.scrollTop = element.scrollHeight - element.clientHeight;
}


// $('html, body').animate({
//   //scrollTop: $('footer').offset().top
//   scrollTop: $('#messages').offset().top
//   //scrollTop: $('.your-class').offset().top
// }, 'slow');

// scroll_bottom = function() {
//   if ($('#messages').length > 0) {
//     $('#messages').scrollTop($('messages')[0].scrollHeight);
//   }
// }

$(document).on('turbolinks:load', function() {
  gotoBottom('messages');
})