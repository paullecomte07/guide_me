
const redirectStop = () => {
  document.getElementById("stop")
    .addEventListener("click", (event)=> {
      event.currentTarget.classList.toggle("stops-popup-page")
      event.currentTarget.querySelector('.preview-picture').classList.toggle("open");
    })
}

redirectStop();


