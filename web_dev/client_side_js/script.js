// Release 1 
var els = document.getElementsByTagName("h3");
var el = els[0];

// Release 2
function addRadiosProperty() {
    el.style.border = "2px solid #ccc";
    console.log("Testing my JS!");

}

el.addEventListener("click", addRadiosProperty);

