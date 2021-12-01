const totalCarbon = () => {
  const items = document.querySelectorAll("#search_array_");
  let total = 0;
  const value_display = document.getElementById("carbon_value");
  if (value_display !== null){
    value_display.innerText = total;
  }
  // const updateSum = () => {

  // }

  items.forEach((item) => {
    item.addEventListener("click", () => {
      const carbon_emissions = parseFloat(item.dataset.carbon);
      if (item.checked == false) {
        total -= carbon_emissions;
      } else if (item.checked) {
        total += carbon_emissions;
      }
      console.log(total);
      value_display.innerText = total.toFixed(2);
    });
  });
};

const totalPrice = () => {
  const items = document.querySelectorAll("#search_array_");
  let total = 0;
  const price_display = document.getElementById("price_value");
  if (price_display) {
    price_display.innerText = total;
  }
  // const updateSum = () => {

  // }

  items.forEach((item) => {
    item.addEventListener("click", () => {
      const price_item = parseFloat(item.dataset.price);
      if (item.checked == false) {
        total -= price_item;
      } else if (item.checked) {
        total += price_item;
      }
      price_display.innerText = total.toFixed(2);
    });
  });
};

const totalSpace = () => {
  const items = document.querySelectorAll("#search_array_");
  let total = 0;
  const space_display = document.getElementById("space_value");
  if (space_display) {
    space_display.innerText = total;
  }
  // const updateSum = () => {

  // }

  items.forEach((item) => {
    item.addEventListener("click", () => {
      const space_item = parseFloat(item.dataset.space);
      if (item.checked == false) {
        total -= space_item;
      } else if (item.checked) {
        total += space_item;
      }
      if (space_display) {
        space_display.innerText = total.toFixed(2);
      }
    });
  });
};

export { totalCarbon, totalSpace, totalPrice };
