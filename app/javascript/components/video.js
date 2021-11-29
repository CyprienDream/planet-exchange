
const videoFading = () => {
  const choicesTag = document.querySelector("#choices")
  const buttonOnboardingTag = document.querySelector("a#btn-onboarding")
  const browseTag = document.querySelector("#browse")
  const buttonBrowseTag = document.querySelector("a#btn-browse")
  window.addEventListener('scroll', function () {
    const videoDiv = document.querySelector(".video-intro")
    if (window.pageYOffset > "460") {
      videoDiv.style.opacity = "0";
    } else if (window.pageYOffset < "460") {
      videoDiv.style.opacity = "1";
    }
  });
  if (buttonOnboardingTag) {
    buttonOnboardingTag.addEventListener("click", (event) => {
      event.preventDefault
      choicesTag.scrollIntoView();
    });
  }
  if (buttonBrowseTag) {
    buttonBrowseTag.addEventListener("click", (event) => {
      event.preventDefault
      browseTag.scrollIntoView();
    });
  }
};
export { videoFading };
