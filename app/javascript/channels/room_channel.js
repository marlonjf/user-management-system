import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
  },

  disconnected() {
  },

  received(data) {
    $('#msg').append('<div class="message"> ' + data.content + '</div>')
  }
});
