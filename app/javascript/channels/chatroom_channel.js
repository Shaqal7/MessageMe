import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    //$('#msg').append('<div class="event"><div class="content"><div class="summary"><em>' + data.content[0] + '</em>: ' + data.content[1].body + '<div class="time_to_right">' + data.content[2] + '</div></div></div></div>')
    $('#msg').append(data.content)
    $('#message_content').val('')
    gotoBottom('messages')
  }
});


function gotoBottom(id){
  var element = document.getElementById('messages');
  element.scrollTop = element.scrollHeight - element.clientHeight;
}