
const videoFading = () => {
  const buttonTag = document.querySelector("a#start-journey")
  const videoDiv = document.querySelector(".video-intro")
  const onboardingTag = document.querySelector("#onboarding")
  const choicesTag = document.querySelector("#choices")
  const buttonOnboardingTag = document.querySelector("a#btn-onboarding")
  const browseTag = document.querySelector("#browse")
  const buttonBrowseTag = document.querySelector("a#btn-browse")

  window.addEventListener('scroll', function () {
    const videoDiv = document.querySelector(".video-intro")

    if (window.pageYOffset > "640") {
      videoDiv.style.opacity = "0";
    } else if (window.pageYOffset < "640") {
      videoDiv.style.opacity = "1";
    }
  });

  buttonTag.addEventListener("click", (event) => {
    event.preventDefault
    onboardingTag.scrollIntoView();
    videoDiv.style.opacity = "0";

  });

  buttonOnboardingTag.addEventListener("click", (event) => {
    event.preventDefault
    choicesTag.scrollIntoView();
  });

  buttonBrowseTag.addEventListener("click", (event) => {
    event.preventDefault
    browseTag.scrollIntoView();
  });

};

export { videoFading };
