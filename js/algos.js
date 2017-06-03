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

 */


// Driver code
//console.log(bigString(["Honda", "Yuki", "Kyou", "Shigure", "Hatsuharu", "Akito", "Akio", "Hatori", "Ayame", "Fruits Basket"]))
console.log(compareValues(objectOne, objectTwo));