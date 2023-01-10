const imageGrid = document.getElementById("image-grid");

console.log('in exhibit.js');

const sizeGrid = ((width = "1000px", height = "630px") => {
  imageGrid.style.fontSize = "0px";
  imageGrid.style.width = width;
  imageGrid.style.height = height;
})();

const drawGrid = ((width = 1000, height = 630) => {
  const tilesAcross = Math.round(width / 10);
  const tilesDown = Math.round(height / 10);

  let divID = 1;

  for (let i = 0; i < tilesDown; i++) {
    for (let i = 0; i < tilesAcross; i++) {
      let newDiv = document.createElement("div");
      newDiv.id = divID;
      newDiv.style.width = "10px";
      newDiv.style.height = "10px";
      newDiv.style.display = "inline-block";
      newDiv.style.border = "1px solid orange";
      imageGrid.appendChild(newDiv);
      divID = divID + 1;
    }
  }
})();
