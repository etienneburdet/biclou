import Typed from 'typed.js';

const options = {
  strings: ['Centre Pompidou', 'Etienne Marcel', 'Torcy RER', 'Vincenne'],
  typeSpeed: 40,
  loop: true,
  attr: 'placeholder'
};

const typed = new Typed('#home-search', options);

export default typed;
