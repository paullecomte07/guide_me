const detectPopup = () => {
  if(document.querySelector("#map")){
  document.querySelector("#map").addEventListener('click', (event) => {
    let elementStop = document.getElementById("stop");
    let elementImage = document.querySelector(".preview-picture #stop-image");


    let contentPopup = document.querySelector(".mapboxgl-popup-content");

    if(contentPopup) {
    while (elementStop.firstChild) {
          elementStop.removeChild(elementStop.firstChild);
        }

    if(elementImage.firstChild) {elementImage.firstChild.remove()};

      let name = contentPopup.querySelector("#stop-name").outerHTML;
      let description = contentPopup.querySelector("#stop-description").outerHTML;
      let image = contentPopup.querySelector("#stop-image").outerHTML;
      document.querySelector("#stop").insertAdjacentHTML('afterbegin', description )
      document.querySelector("#stop").insertAdjacentHTML('afterbegin', name )
      document.querySelector(".preview-picture").insertAdjacentHTML('afterbegin', image )
    };

  });


  }
}

detectPopup();

