import { FetchRequest } from "@rails/request.js";

const sizeForm = document.getElementById("image-size");
const imageGridContainer = document.getElementById("image-grid-container");
const grid = document.getElementById("grid");
const image = document.querySelector("#image-grid-container>img");
const characters = ["Waldo", "Wilma", "Wizard", "Odlaw"];

const sizes = {
  "1": { width: 800, height: 500 },
  "2": { width: 1000, height: 630 },
  "3": { width: 1200, height: 750 },
};

const getLocations = async (character_id, exhibit_id, size_id) => {
  const request = new FetchRequest("get", "/locations", {
    contentType: "application/json",
    query: {
      character_id: character_id,
      exhibit_id: exhibit_id,
      size_id: size_id,
    },
    responseKind: "json",
  });
  const response = await request.perform();
  if (response.ok) {
    const locations = await response.text;
    console.log(locations);
  }
};

const sizeSelected = () => {
  if (document.getElementById("size_1").checked) {
    return "1";
  } else if (document.getElementById("size_3").cheked) {
    return "3";
  }
  return "2";
};

const getDimensions = () => {
  return sizes[sizeSelected()]
};

const sizeImage = () => {
  const size = getDimensions();
  image.style.width = size.width + "px";
  image.style.height = size.height + "px";
};

const sizeContainer = () => {
  const size = getDimensions();
  imageGridContainer.style.fontSize = "0px";
  imageGridContainer.style.width = size.width + "px";
  imageGridContainer.style.height = size.height + "px";
};

const sizeGrid = () => {
  const size = getDimensions();
  grid.style.fontSize = "0px";
  grid.style.width = size.width + "px";
  grid.style.height = size.height + "px";
  grid.style.position = "absolute";
};

const drawGrid = () => {
  const size = getDimensions();
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

  const label = document.createElement("option");
  label.text = "Select Character";
  select.appendChild(label);

  for (let i = 0; i < characters.length; i++) {
    let option = document.createElement("option");
    option.value = characters[i];
    option.text = characters[i];
    select.appendChild(option);
  }

  select.style.position = "absolute";
  select.style.zIndex = "10";
  select.style.transform = "translate(10px, -20px)";

  select.addEventListener("change", (event) => {
    const character_id = characters.indexOf(event.target.value) + 1;
    const exhibit_id = document.URL.slice(-1);
    const size_id = sizeSelected();
    getLocations(character_id, exhibit_id, size_id);
  });
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
});

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
