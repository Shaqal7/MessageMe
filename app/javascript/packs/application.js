// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("jquery")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//import { gotoBottom } from './custom';
//= require semantic-ui


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//

function gotoBottom(){
  let element = document.getElementById('messages');
  element.scrollTop = element.scrollHeight - element.clientHeight;
}

function clear() {
  let msgcontent = document.getElementById("message_content");

  msgcontent.addEventListener("keyup", function(event) {
    if(event.keyCode === 13) {
      event.preventDefault();
      msgcontent.value = '';
    }
  })
}

$(document).on('turbolinks:load', function() {
  gotoBottom();
  clear();
})