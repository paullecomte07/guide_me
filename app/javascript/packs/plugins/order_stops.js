
const order = () => {
const tiles = document.querySelectorAll('td');


const selectCoordinateMatrix= (tile) => {
  const tileColumn = tile.cellIndex;
  const tileRow = tile.rowIndex;
  return [tileRow,tileColumn]
}




debugger
tiles.forEach((tile) =>
tile.addEventLestener('click', (event) => {
  const coordinates = selectCoordinateMatrix(event.current_target)
  console.log(selectCoordinateMatrix(event))
  const contentSelectedRow = event.current_target.innerText




})
)
}
export { order };
