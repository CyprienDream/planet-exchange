import "js-autocomplete/auto-complete.css";
import autocomplete from "js-autocomplete";

const autocompleteSearch = function () {
  const temp = document.getElementById("search-data");
  if (temp) {
    const items = JSON.parse(temp.dataset.items);
    const searchInput = document.querySelector(".search-input");
    // const searchOther = document.querySelector("params[:search]");
    if (items && searchInput) {
      new autocomplete({
        selector: searchInput,
        minChars: 1,
        source: function (term, suggest) {
          term = term.toLowerCase();
          const choices = items;
          const matches = [];
          for (let i = 0; i < choices.length; i++)
            if (~choices[i].toLowerCase().indexOf(term))
              matches.push(choices[i]);
          suggest(matches);
        },
      });
    }
  }
};

export { autocompleteSearch };
