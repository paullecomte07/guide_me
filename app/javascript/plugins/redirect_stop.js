
const redirectStop = () => {
  document.getElementById("stop").addEventListener("click", (event)=> {event.currentTarget.classList.toggle("stops-popup-page")})
}


export { redirectStop };
