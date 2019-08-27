const detectPopup = () => {

  document.querySelector("#map").addEventListener('click', (event) => {
  if (document.querySelectorAll("p")) {
    document.querySelectorAll("p").remove();
  }

  let contentPopup = document.querySelector(".mapboxgl-popup-content");

  if(contentPopup) {

    const name = contentPopup.querySelector('p').querySelector("#stop-name").outerHTML;
    const description = contentPopup.querySelector('p').querySelector("#stop-description").outerHTML;
    const image = contentPopup.querySelector('p').querySelector("#stop-image").outerHTML;
    const order = contentPopup.querySelector('p').querySelector("#stop-order").outerHTML;

    document.querySelector("#stop").insertAdjacentHTML('afterbegin', name )
    document.querySelector("#stop").insertAdjacentHTML('afterbegin', description )






  } else {
    console.log('there no popup selected')

  };



});


}


export { detectPopup };
