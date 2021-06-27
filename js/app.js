// slide show images section
const slideImages = document.querySelectorAll(".intro-slideshow img");

const nextImageDelay = 3000;
var currentImageCounter = 0; // setting a variable to keep track of the current image (slide)
slideImages[currentImageCounter].style.opacity = 1;

setInterval(nextImage, nextImageDelay);

function nextImage() {
  slideImages[currentImageCounter].style.opacity = 0;
  currentImageCounter = (currentImageCounter+1) % slideImages.length;
  slideImages[currentImageCounter].style.opacity = 1;
}
const slideImages1 = document.querySelectorAll(".intro-slideshow-1 img");

const nextImageDelay1 = 2000;
var currentImageCounter1 = 0; // setting a variable to keep track of the current image (slide)
slideImages1[currentImageCounter1].style.opacity = 1;

setInterval(nextImage1, nextImageDelay1);

function nextImage1() {
  slideImages1[currentImageCounter1].style.opacity = 0;
  currentImageCounter1 = (currentImageCounter1+1) % slideImages.length;
  slideImages1[currentImageCounter1].style.opacity = 1;
}
