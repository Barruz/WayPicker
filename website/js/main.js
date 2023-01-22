function scrollToTop() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

function toggleBodyScroll() {
  let body = document.getElementsByTagName("body")[0];
  body.classList.toggle("scroll-disabled");
}

function toggleMenuScrollForLargeScreenSizes(menu) {
  var viewportHeight = window.innerHeight;
  var viewportWidth = window.innerWidth;
  if (viewportHeight > 700 || viewportHeight > viewportWidth) {
    menu.classList.toggle("hidden-scroll");
  }
}

function toggleMenu(menu) {
  menu.classList.toggle("menu__contentbox__visible");
  toggleMenuScrollForLargeScreenSizes(menu);
  toggleBodyScroll();
}

function closeMenu(menu) {
  menu.classList.remove("menu__contentbox__visible");
  toggleMenuScrollForLargeScreenSizes(menu);
  toggleBodyScroll();
}

const logoText = document.getElementById("siteTitleSmall");
window.onscroll = function () {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    logoText.classList.remove("logo-text__hidden");
    logoText.classList.add("logo-text__visible");
  } else {
    logoText.classList.remove("logo-text__visible");
    logoText.classList.add("logo-text__hidden");
  }
};
