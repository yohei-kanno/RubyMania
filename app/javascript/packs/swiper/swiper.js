const swiper = new Swiper('.swiper-container', {
  direction: 'vertical',
  loop: true,
  speed: 1500,
  autoplay: {
    delay: 2500,
  },
  direction: "horizontal",
  effect: "coverflow",
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