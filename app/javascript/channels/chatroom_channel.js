import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        const currentUserId = messagesContainer.dataset.currentUserId;
        const message = document.createElement('div');
        message.innerHTML = data;

        if (message.firstChild.dataset.senderId === currentUserId) {
          message.firstChild.classList.add('message-current-user');
          message.children[1].classList.add('text-left');
        } else {
          message.firstChild.classList.add('message-chat-user');
          message.children[1].classList.add('text-right');
        }
        messagesContainer.insertAdjacentHTML('beforeend', message.innerHTML);

        const msgs = document.querySelector("#messages")
        msgs.scrollTop = msgs.scrollHeight
      },
    });
  }
}

export { initChatroomCable };
