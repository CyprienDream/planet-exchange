const showNext = () => {
  const storageHodler = document.querySelector(".storage-holder");
  const btns = document.querySelectorAll(".btn-action");
  const formGroup = document.querySelectorAll(".item-group");
  storageHolder.addEventListener("click", (e) => {
    const click = e.target.dataset.click;
    if (click) {
      btns.forEach(btn, () => {
        btn.classList.remove("active");
      });
      e.target.classList.add("active");
      formGroups.forEach(group, () => {
        group.classList.remove("d-none");
      });
      const grouping = document.getElementById(click);
      grouping.classList.add("d-none");
    }
  });
};

export { showNext };
