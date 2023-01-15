import { FetchRequest } from "@rails/request.js";

const sizeForm = document.getElementById("image-size");
const imageGridContainer = document.getElementById("image-grid-container");
const grid = document.getElementById("grid");
const image = document.querySelector("#image-grid-container>img");
const exhibit_id = document.URL.slice(-1);

let previousClick;

const sizes = {
  "1": { width: 800, height: 500 },
  "2": { width: 1000, height: 630 },
  "3": { width: 1200, height: 750 },
};

const sizeSelected = () => {
  if (document.getElementById("size_1").checked) {
    return "1";
  } else if (document.getElementById("size_3").checked) {
    return "3";
  }
  return "2";
};

const size_id = sizeSelected();

const characters = ["Waldo", "Wilma", "Wizard", "Odlaw"];
let charactersToFind = ["Waldo", "Wilma", "Wizard", "Odlaw"];
let charactersAreFound = [];

const getCharacterNameFromId = (id) => {
  return characters[parseInt(id) - 1]
}

const getCharacterLocation = async (character_id) => {
  const request = new FetchRequest("get", "/get_location", {
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
    const divs = await response.text;
    return Object.values(JSON.parse(divs))
  }
}

const removeCharacterFromSelectables = async (character_id) => {
  if (charactersAreFound.includes(getCharacterNameFromId(character_id))) {
    const divIds = await getCharacterLocation(character_id);
    for (let i = 0; i < divIds.length; i++) {
      document.getElementById(divIds[i]).classList.remove("selectable");
    }
  }
}

const characterFound = (div_id, character_id) => {
  const div = document.getElementById(div_id);
  div.style.border = "1px solid #14D245";
  const selectDiv = document.querySelector("select").parentElement;
  selectDiv.innerHTML = "";

  const character = getCharacterNameFromId(character_id);
  charactersAreFound.push(character);
  const index = characters.indexOf(character);
  charactersToFind.splice(index, 1);
  removeCharacterFromSelectables(character_id);

  const charImg = document.querySelector(`.${character.toLowerCase()}>img`);
  charImg.style.opacity = "0.5";
  const charCheck = document.querySelector(`.${character.toLowerCase()}>i`);
  charCheck.classList.add('show');
}

const displayMsg = (parent, character_id) => {
  const msg = document.createElement("p");
  msg.id = "selectFailMsg";
  msg.textContent = `That's not ${getCharacterNameFromId(character_id)}`;
  msg.style.position = "absolute";
  msg.style.zIndex = "10";
  msg.style.fontSize = "16px";
  msg.style.padding = "10px";
  msg.style.backgroundColor = "red";
  msg.style.color = "white";
  msg.style.borderRadius = "8px";
  msg.style.transform = "translate(30px, -20px)";
  parent.appendChild(msg);
}

const characterNotFound = (div_id, character_id) => {
  const div = document.getElementById(div_id);
  div.style.border = "1px solid red";
  const selectDiv = document.querySelector("select").parentElement;
  selectDiv.innerHTML = "";
  displayMsg(selectDiv, character_id);
}

const validateCharacterFound = async (character_id, div_id) => {
  const request = new FetchRequest("get", "/validate_location", {
    contentType: "application/json",
    query: {
      character_id: character_id,
      exhibit_id: exhibit_id,
      size_id: size_id,
      location_id: div_id
    },
    responseKind: "json",
  });
  const response = await request.perform();
  if (response.ok) {
    const found = await response.text;
    if (found === "true") {
      characterFound(div_id, character_id);
    } else {
      characterNotFound(div_id, character_id);
    }
  }
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
      newDiv.className += "selectable";
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

const displaySelect = (clickEvent) => {
  const select = document.createElement("select");
  // need to associate id with parent.previousSibling
  clickEvent.target.nextSibling.appendChild(select);

  const label = document.createElement("option");
  label.text = "Select Character";
  select.appendChild(label);

  for (let i = 0; i < charactersToFind.length; i++) {
    let option = document.createElement("option");
    option.value = charactersToFind[i];
    option.text = charactersToFind[i];
    select.appendChild(option);
  }

  select.style.position = "absolute";
  select.style.zIndex = "10";
  select.style.transform = "translate(10px, -20px)";

  select.addEventListener("change", (event) => {
    const character_id = characters.indexOf(event.target.value) + 1;
    const div_id = clickEvent.target.id;
    validateCharacterFound(character_id, div_id);
  });
};

const clearPrevClick = () => {
  if (previousClick) {
    if (previousClick.style.borderColor !== "rgb(20, 210, 69)") {
      previousClick.style.border = "none";
    }
    const select = document.querySelector("select")
    if (select) {
      select.parentElement.innerHTML = "";
    }
    const msg = document.getElementById("selectFailMsg");
    if (msg) {
      msg.parentElement.textContent = "";
    }
  }
}

grid.addEventListener("click", (event) => {
  if (event.target.classList.contains("selectable")) {
    clearPrevClick();
    previousClick = event.target;
    event.target.style.border = "1px solid orange";
    event.target.style.borderRadius = "7px";
    event.target.style.scale = "4";

    displaySelect(event);
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
