/*
7.1 Syntax
Author: Marcos Pletcher
*/

// Pseudocode
// define a function 
// this function takes one parameter (string) and reverse it
// loop over the variable counting its length
// create a new empty variable
// for each letter in the string, shovel content into empty variable
// print the reversed string
// IF hello is different that reversed string, say something

function reverseString(string) {

    var reversed_string = '';

    for (var string_length = string.length - 1; string_length >= 0; string_length -= 1) {
        reversed_string += string[string_length];
    }

    console.log(reversed_string);
    
    if (reversed_string == 'socraM si eman yM') {
      console.log("\nCorrect!");
    }
    else {
      console.log("\nFalse!"); 
    }
}


// Driver code
//reverseString('My name is Marcos');  -- output: "socraM si eman yM"
reverseString('Marcos')