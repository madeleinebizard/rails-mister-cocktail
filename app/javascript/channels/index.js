// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.
import Typed from 'typed.js';

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Hard to follow Le Wagon?", "C O C K T A I L S - T I M E ! ! ! !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
