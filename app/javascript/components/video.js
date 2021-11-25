const videoFading = () => {
  const buttonTag = document.querySelector("#start-journey")
  const videoDiv = document.querySelector(".video-intro")
  const onboardingTag = document.querySelector("#onboarding")

  buttonTag.addEventListener("click", (event) => {
    videoDiv.style.opacity = "0";
    onboardingTag.scrollIntoView()
  })
}

export { videoFading };
