let list = document.querySelectorAll(".list");
let itemBox = document.querySelectorAll(".itembox");
// let boxFancy = document.querySelectorAll(".fancybox");



for (let i = 0; i < list.length; i++) {
  list[i].addEventListener("click", function () {
    for (let j = 0; j < list.length; j++) {
      list[j].classList.remove("active");
      
    }
    this.classList.add("active");

    let dataFilter = this.getAttribute("data-filter");

    for (let k = 0; k < itemBox.length; k++) {
      itemBox[k].classList.remove("active");
      itemBox[k].classList.add("hide");

      if (
        itemBox[k].getAttribute("data-item") == dataFilter 
        // dataFilter == "all"
      ) {
        itemBox[k].classList.remove("hide");
        itemBox[k].classList.add("active");
      }
    }
    for (let m = 0; m < boxFancy.length; m++) {
      boxFancy[m].classList.remove("active");
      // Fancybox.bind("[data-itembox].active", {
      //   groupAll: false
      // });
      if (
        boxFancy[m].getAttribute("data-item") == dataFilter 
        // dataFilter == "all"
      ) {
        boxFancy[m].classList.add("active");
        // Fancybox.bind("[data-itembox].active", {
        //   // groupAll: true
        // });
      }
    }
  });
}