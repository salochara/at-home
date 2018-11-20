import Typed from 'typed.js';


function loadDynamicBannerText() {
  const CITIES = []
  new Typed('#banner-typed-text', {
    strings: ['Tel Aviv', 'Madrid', 'Berlin', 'Shanghai', 'Tokyo'],
    typeSpeed: 200,
    loop: false
  });
}

export { loadDynamicBannerText };
