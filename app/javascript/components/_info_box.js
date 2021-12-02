const infoShow = () => {
  console.log("Helo from InfoShow");
  const calculatorBox = document.querySelector(".calculator");
  const infoBoxContent = document.querySelectorAll(".info-box-content");
  const closePopup = document.querySelectorAll(".info-box-content-close");
  if (calculatorBox) {
    calculatorBox.addEventListener("click", (e) => {
      const infoBoxId = e.target.dataset.id;
      console.log(infoBoxId);
      if (infoBoxId) {
        const infoPopup = document.getElementById(`${infoBoxId}`);

        infoBoxContent.forEach((box) => {
          box.classList.add("d-none");
        });

        infoPopup.classList.remove("d-none");
      }
    });

    closePopup.forEach((button) => {
      button.addEventListener("click", () => {
        infoBoxContent.forEach((box) => {
          box.classList.add("d-none");
        });
      });
    });
  }
};

export { infoShow };
