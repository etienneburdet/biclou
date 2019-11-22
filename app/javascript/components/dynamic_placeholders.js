import Typed from 'typed.js';

const options = {
  strings: ['Centre Pompidou', 'Etienne Marcel', 'Torcy RER', 'Vincennes'],
  typeSpeed: 40,
  loop: true,
  attr: 'placeholder'
};

const initTyped = () => {
 const typed = new Typed('#home-search', options);
}

export { initTyped };
