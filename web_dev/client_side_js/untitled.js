var myBorder = document.getElementsByTagName("h3");
var newBorder = myBorder[0];

function addRadiosProperty() {
    newBorder.style.border = "2px solid #ccc";

}

newBorder.addEventListener("click", addRadiosProperty);


