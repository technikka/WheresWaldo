const exhibitLinks = document.querySelectorAll(".index-container>a");

const toggleInfo = () => {
  document.querySelector(".info").classList.add("show");
};

exhibitLinks.forEach((link) => {
  link.addEventListener("mouseover", () => {
    const infoDiv = document.querySelector(`.${link.className} .info`);
    infoDiv.classList.add("show");
  });
});

exhibitLinks.forEach((link) => {
  link.addEventListener("mouseout", () => {
    const infoDiv = document.querySelector(`.${link.className} .info`);
    infoDiv.classList.remove("show");
  });
});
