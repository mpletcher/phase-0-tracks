/*
7.3 Solo Challenge: Algorithm Practice
Author: Marcos Pletcher
*/

/*
------------------------------------------
Release 0: Find the Longest Phrase
------------------------------------------
Write a function that takes an array fo strings and returns the longest value.
Iterate over each items in the array and find its length
Store the lengths of each items to use for comparison
return the highest value
 */
function bigString(array) {
    var longestThing = "";

    for (var x = 0; x < array.length; x++ ) {
        if (array[x].length > longestThing.length) {
            longestThing = array[x];
        }
    }
    return longestThing;
}

/*
------------------------------------------
Release 1: Find a Key-Value Match
------------------------------------------
Write a function that takes to objects / "hashe-like" set of data 
	IF these "hashe-like" objects have ate least one pair that matches, return tru
	OTHERWISE, return false
 */

var objectOne = {
	name: "Mark", 
	age: 28
};

var objectTwo = {
	name: "James", 
	age: 28
};

function compareValues(objectOne, objectTwo) {

	//hasOwnProperty: method returns a boolean indicating whether the object has the specified property as own (not inherited) property.
	for (var key in objectOne) {
		if (objectTwo.hasOwnProperty(key)) {
			if (objectOne[key] == objectTwo[key])
				return true;
		}
	}
	return false
}

/*
------------------------------------------
Release 2: Generate Random Test Data
------------------------------------------
Write a function that takes an integer for length
Declare a list of letters that can be accessed to generate words
Build an array of strings 
 */

function wordCreator(length) {
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var myArray = [];

    for (var i = 0; i < length; i++) {
    	var randomNumber = Math.round((Math.random() * 10) + 1);
    	var word = "";
    	for (var n = 0; n < randomNumber; n++) {
    		word += alphabet[i + Math.round((Math.random() * 10) + 1 )];
   		}

    myArray.push(word);
	}

  return myArray;
}



// Driver code
console.log("Release 0:");
console.log(bigString(["Honda", "Yuki", "Kyou", "Shigure", "Hatsuharu", "Akito", "Akio", "Hatori", "Ayame", "Fruits Basket"]))

console.log("\n\nRelease 1:");
console.log(compareValues(objectOne, objectTwo));

console.log("\n\nRelease 2 - Part 1:");
console.log(wordCreator(5));
console.log(wordCreator(3));

console.log("\n\nRelease 2 - Part 2:");
// Add driver code that does the following 10 times: 
// generates an array, prints the array, feeds the array to your "longest word" function, and prints the result

for (var w = 0; w < 10; w++) {
    var lastArray = wordCreator(5);
    console.log(lastArray)
    console.log(bigString(lastArray));
}





