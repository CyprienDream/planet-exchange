import consumer from "./consumer";

const initNotificationCable = () => {
  console.log("Hi from notif controller");
  const notificationHolder = document.getElementById('notification-holder');
  if (notificationHolder) {
    const id = notificationHolder.dataset.userId;
    consumer.subscriptions.create({ channel: "NotificationChannel", id: id }, {
      received(data) {
        console.log(data)
        // notificationHolder.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initNotificationCable };
