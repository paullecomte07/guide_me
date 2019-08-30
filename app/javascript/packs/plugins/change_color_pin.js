const colorPin = () => {

document.querySelectorAll(".mapboxgl-marker").forEach((element)=>
  element.addEventListener('click',(event)=>{

    let fill = document.querySelectorAll(".mapboxgl-marker")[0].querySelector("g").children[1]

    if (fill.getAttribute(`fill`) === 'red'){
      event.currentTarget.querySelector("g").children[1].setAttribute(`fill`, `#3FB1CE`)
    }
    event.currentTarget.querySelector("g").children[1].setAttribute(`fill`, `red`)
  }))
}
export { colorPin };