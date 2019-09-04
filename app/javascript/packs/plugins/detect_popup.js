const detectPopup = () => {
  if (document.querySelector("#map")) {
    document.querySelector("#map").addEventListener('click', (event) => {
      let elementStop = document.getElementById("stop");
      let elementImage = document.querySelector(".preview-picture #stop-image");
      let contentPopup = document.querySelector(".mapboxgl-popup-content");

      if (contentPopup) {
        elementStop.querySelector("img").remove();
        elementStop.querySelector("h1").remove();
        elementStop.querySelector("p").remove();

        let name = contentPopup.querySelector("#stop-name").outerHTML;
        let description = contentPopup.querySelector("#stop-description").outerHTML;
        let image = contentPopup.querySelector("#stop-image img").outerHTML;

        document.querySelector("#stop-image").insertAdjacentHTML('afterbegin', image )
        document.querySelector("#stop").insertAdjacentHTML('beforeend', name )
        document.querySelector("#stop").insertAdjacentHTML('beforeend', description )
      }
    });
  }
}

detectPopup();
