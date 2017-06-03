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


// Driver code
//console.log(bigString(["Honda", "Yuki", "Kyou", "Shigure", "Hatsuharu", "Akito", "Akio", "Hatori", "Ayame", "Fruits Basket"]))