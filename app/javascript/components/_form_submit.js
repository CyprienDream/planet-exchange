const formSubmit = () => {
  const storage = document.querySelector(".storage-magic");
  const checkboxItem = document.querySelectorAll(".checkbox-button");
  storage.addEventListener("click", (e) => {
    const checkboxId = e.target.dataset.checkboxid;
    console.log(checkboxId);
    if (checkboxId) {
      const formItem = document.getElementById(`${checkboxId}`);
      console.log(formItem);
      formItem.submit();
    }
  });
};

export { formSubmit };
