var els = document.getElementsByTagName("h3");
var el = els[0];

function addRadiosProperty() {
    el.style.border = "2px solid #ccc";

}

el.addEventListener("hover", addRadiosProperty);
