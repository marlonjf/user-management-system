import consumer from "./consumer"

consumer.subscriptions.create("ProgressChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $("#progress-bar").html(data.html);
  }
});
