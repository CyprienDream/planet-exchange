import consumer from "./consumer";

const initNotificationCable = () => {
  console.log("Notification cable sends its regards.");
  const notificationHolder = document.getElementById('notification-holder');
  if (notificationHolder) {
    const id = notificationHolder.dataset.userId;
    consumer.subscriptions.create({ channel: "NotificationChannel", id: id }, {
      received(data) {
        console.log(data)
        document.getElementById("msg-icon").classList.add("d-none");
        document.getElementById("active-msg-icon").classList.remove('d-none');
      },
    });
  }
}

export { initNotificationCable };
