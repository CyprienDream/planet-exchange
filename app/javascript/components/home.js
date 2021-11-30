
const homeScripts = () => {
  const choicesTag = document.querySelector("#choices")
  const buttonOnboardingTag = document.querySelector("a#btn-onboarding")
  const browseTag = document.querySelector("#browse")
  const buttonBrowseTag = document.querySelector("a#btn-browse")


    window.addEventListener('scroll', function () {
      const videoDiv = document.querySelector(".video-intro")

      if (videoDiv) {
        if (window.pageYOffset > "460") {
          videoDiv.style.opacity = "0";
        } else if (window.pageYOffset < "460") {
          videoDiv.style.opacity = "1";
        }
      }

    });

    // window.addEventListener('scroll', function () {
    //   const navbarTag = document.querySelector(".navbar")

    //   if (navbarTag) {
    //     if (window.pageYOffset > "640") {
    //       navbarTag.style.transform = "translateY(0)";
    //     } else if (window.pageYOffset < "640") {
    //       navbarTag.style.transform = "translateY(64px)";
    //     }
    //   }
    // });

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
    };

};
export { homeScripts };
