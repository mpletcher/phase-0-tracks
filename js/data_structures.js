/*
Release 0: Work with Arrays
*/

// set an array of colors
var colors = ["blue", "pink", "mauve", "tourquoise"]

// set and array of four names
var names = ["Usagi", "Ami", "Rei", "Makoto"]

// Write additional code that adds another color to the colors array, 
// and another horse name to the horses array
colors.push("Cerulean")

names.push("Tuxedo Mask")

/*
Release 1: Build an Object
*/
// declare an empty object
var horseInformation = {};
// assign colors to horses

	// create a for loop that starts counting a temporary variable from 0, iterates over the the length of names
	// keys need to be names and values colors
	for (var x = 0; x < names.length; x++) { 
    console.log(horseInformation[names[x]] = colors[x]);
	}

/*
Release 2: Build Many Objects Using a Constructor
*/

// Declare a constructor function for our car
function Car(type, yearModel, colorModel) {
	console.log("I want to buy this", this);

		this.type = type;
		this.yearModel = yearModel;
		this.colorModel = colorModel;

		console.log("Item: | Details:");

}
// 


// Drive code
console.log(colors);
console.log(names);
console.log(horseInformation);

// objects values  can be accessed with brackets or dot notation
var tesla = new Car("Tesla Model 3", 2016, "black");
console.log(tesla);


