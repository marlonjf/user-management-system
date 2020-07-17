import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
  },

  disconnected() {
  },

  received(data) {
    $("#real-time-info").html(data.html);
  }
});
