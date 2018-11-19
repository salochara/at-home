import Typed from 'typed.js';


function loadDynamicBannerText() {
  const CITIES = []
  new Typed('#banner-typed-text', {
    strings: ['Tel Aviv', 'Madrid', 'Berlin', 'Shanghai', 'Tokyo'],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
