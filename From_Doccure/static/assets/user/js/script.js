
// main slider
let slideshowElements = document.querySelectorAll(".left_body_inner");

let count = 1;
setInterval(() => {
  count++;
  let curentElement = document.querySelector(".current");
  curentElement.classList.remove("current");
  if (count > slideshowElements.length) {
    slideshowElements[0].classList.add("current");
    count = 1;
  } else {
    curentElement.nextElementSibling.classList.add("current");
  }
  //Typing Anomation
  new TypeIt(curentElement.children[1], {
    strings: [curentElement.children[1].innerHTML],
    speed: 50,
    waitUntilVisible: true,
  }).go();
  
}, 5000);


