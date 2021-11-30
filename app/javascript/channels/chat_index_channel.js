import consumer from "./consumer";

const initChatroomCable = () => {
  const chatroomsContainer = document.getElementById('chatrooms-container');
  if (chatroomsContainer) {
    const id = chatroomsContainer.dataset.userID;

    consumer.subscriptions.create({ channel: "ChatIndexChannel", id: id }, {
      received(data) {
        chatroomsContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatroomCable };
