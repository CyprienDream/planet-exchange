const formSubmit = () => {
  console.log("FormSubmit sends it's regards, winter is coming");
  const storage = document.querySelector(".storage-magic");
  const checkboxItem = document.querySelectorAll(".checkbox-button");
  storage.addEventListener("click", (e) => {
    const checkboxId = e.target.dataset.checkboxid;
    if (checkboxId) {
      const formItem = document.getElementById(`${checkboxId}`);
      formItem.submit();
    }
  });
};

export { formSubmit };
