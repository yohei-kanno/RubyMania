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

const swiper2 = new Swiper('.swiper2', {
  direction: 'vertical',
  loop: true,
  speed: 500,
  autoplay: {
    delay: 3000,
  },
  direction: "horizontal",
  effect: "flip",
  pagination: {
    el: '.swiper-pagination',
    type: "fraction",
    renderBullet: function (index, className) {
			return '<span class="' + className + '">' + (index + 1) + '</span>';
		}
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  scrollbar: {
    el: '.swiper-scrollbar',
  },
});