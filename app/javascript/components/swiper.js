import Swiper, { Navigation, Pagination } from "swiper";

// import Swiper and modules styles
import "swiper/swiper.scss";
// import 'swiper/modules/navigation/navigation.scss';
import "swiper/modules/pagination/pagination.scss";

// configure Swiper to use modules
Swiper.use([Pagination]);

// init Swiper:
const initSwiper = () => {
  const swiper = new Swiper(".swiper", {

    pagination: {
      el: ".swiper-pagination",
    },
  });
};

export { initSwiper };
