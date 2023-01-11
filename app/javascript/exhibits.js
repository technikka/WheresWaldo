const sizeForm = document.getElementById("image-size");
const imageGridContainer = document.getElementById("image-grid-container");
const grid = document.getElementById("grid");
const image = document.querySelector("#image-grid-container>img");
const characters = ["Waldo", "Wilma", "Odlaw", "Wizard"];


const sizeSelected = () => {
  if (document.getElementById("size_small").checked) {
    return { width: 800, height: 500 };
  } else if (document.getElementById("size_large").checked) {
    return { width: 1200, height: 750 };
  }
  return { width: 1000, height: 630 }; // default is medium
};

const sizeImage = () => {
  const size = sizeSelected();
  image.style.width = size.width + "px";
  image.style.height = size.height + "px";
}

const sizeContainer = () => {
  const size = sizeSelected();
  imageGridContainer.style.fontSize = "0px";
  imageGridContainer.style.width = size.width + "px";
  imageGridContainer.style.height = size.height + "px";
}

const sizeGrid = () => {
  const size = sizeSelected();
  grid.style.fontSize = "0px";
  grid.style.width = size.width + "px";
  grid.style.height = size.height + "px";
  grid.style.position = "absolute";
};

const drawGrid = () => {
  const size = sizeSelected();
  const tilesAcross = size.width / 10;
  const tilesDown = size.height / 10;

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
      grid.appendChild(newDiv);
      divID = divID + 1;
    }
  }
};

const displaySelect = (parent) => {
  const select = document.createElement("select");
  // need to associate id with parent.previousSibling
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

grid.addEventListener("click", (event) => {
  if (event.target.classList.contains("imageTile")) {
    event.target.style.border = "1px solid orange";
    event.target.style.borderRadius = "7px";
    event.target.style.scale = "4";

    displaySelect(event.target.nextSibling);
  }
});

window.addEventListener("load", () => {
  sizeContainer();
  sizeImage();
  sizeGrid();
  drawGrid();
})

sizeForm.addEventListener("change", () => {
  grid.textContent = "";
  sizeContainer();
  sizeImage();
  sizeGrid();
  drawGrid();
});

// TEMPORARY FOR GETTING CHARACTER LOCATIONS
// grid.addEventListener('click', (event) => {
//   if (event.target.style.backgroundColor === "orange") {
//     event.target.style.backgroundColor = "initial";
//   } else {
//     event.target.style.backgroundColor = "orange";
//   }
//   console.log(event.target);
// })
