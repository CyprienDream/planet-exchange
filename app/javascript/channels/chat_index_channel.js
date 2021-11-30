import consumer from "./consumer";

const initChatIndexCable = () => {
  console.log("Hello from chat index js");
  const chatroomsContainer = document.getElementById('chatrooms-container');
  if (chatroomsContainer) {
    const id = chatroomsContainer.dataset.userId;

    consumer.subscriptions.create({ channel: "ChatIndexChannel", id: id }, {
      received(data) {
        console.log("data");
        chatroomsContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatIndexCable };
