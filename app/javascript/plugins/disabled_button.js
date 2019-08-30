

const disableButton = () => {

  if(document.querySelectorAll('.tag')){
  document.querySelectorAll('.tag').forEach(
  (link)=>{

    link.addEventListener('click',(event) => {
      event.currentTarget.remove()
      })
    }
  )
}
}


export { disableButton };
