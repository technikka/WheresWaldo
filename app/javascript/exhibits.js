const imageGrid = document.getElementById("image-grid");
const characters = ["Waldo", "Wilma", "Odlaw", "Wizard"];

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
      newDiv.className += "imageTile";
      newDiv.style.width = "10px";
      newDiv.style.height = "10px";
      newDiv.style.display = "inline-block";
      newDiv.style.boxSizing = "border-box";
      newDiv.style.border = "1px solid transparent";
      imageGrid.appendChild(newDiv);
      divID = divID + 1;
    }
  }
})();

const displaySelect = (parent) => {
  const select = document.createElement("select");
  parent.appendChild(select);

  for (let i = 0; i < characters.length; i++) {
    let option = document.createElement("option");
    option.value = characters[i];
    option.text = characters[i];
    select.appendChild(option);
  }

  select.style.position = "absolute";
  select.style.zIndex = "10";
  select.style.transform = "translate(10px, -20px)";
};

imageGrid.addEventListener("click", (event) => {
  if (event.target.classList.contains("imageTile")) {
    event.target.style.border = "1px solid orange";
    event.target.style.borderRadius = "7px";
    event.target.style.scale = "4";

    displaySelect(event.target.nextSibling);
  }
});

// TEMPORARY FOR GETTING CHARACTER LOCATIONS
// imageGrid.addEventListener('click', (event) => {
//   if (event.target.style.backgroundColor === "orange") {
//     event.target.style.backgroundColor = "initial";
//   } else {
//     event.target.style.backgroundColor = "orange";
//   }
//   console.log(event.target);
// })
