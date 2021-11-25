
const videoFading = () => {
  const buttonTag = document.querySelector("a#start-journey")
  const videoDiv = document.querySelector(".video-intro")
  const onboardingTag = document.querySelector("#onboarding")

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
};

export { videoFading };
