const detectPopup = () => {

  document.querySelector("#map").addEventListener('click', (event) => {
  let elementStop = document.getElementById("stop");
  let elementOrder = document.querySelector(".order-counter");
  let elementImage = document.querySelector(".preview-picture");
  while (elementStop.firstChild) {
        elementStop.removeChild(elementStop.firstChild);
      }
  if(elementOrder.firstChild) {elementOrder.firstChild.remove()};
  if(elementImage.firstChild) {elementImage.firstChild.remove()};


  let contentPopup = document.querySelector(".mapboxgl-popup-content");

  if(contentPopup) {

    let name = contentPopup.querySelector("#stop-name").outerHTML;
    let description = contentPopup.querySelector("#stop-description").outerHTML;
    let image = contentPopup.querySelector("#stop-image").outerHTML;
    let order = contentPopup.querySelector("#stop-order").outerHTML;
    document.querySelector("#stop").insertAdjacentHTML('afterbegin', description )
    document.querySelector("#stop").insertAdjacentHTML('afterbegin', name )
    document.querySelector(".order-counter").insertAdjacentHTML('afterbegin', order )
    document.querySelector(".preview-picture").insertAdjacentHTML('afterbegin', image )
  };

});


}


export { detectPopup };
