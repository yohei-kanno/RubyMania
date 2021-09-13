const swiper = new Swiper('.swiper', {
  direction: 'vertical',
  loop: true,
  speed: 500,
  autoplay: {
    delay: 3000,
  },
  direction: "horizontal",
  effect: "cube",
  pagination: {
    el: '.swiper-pagination',
    type: "bullets",
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  scrollbar: {
    el: '.swiper-scrollbar',
  },
});