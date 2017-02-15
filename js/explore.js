// Create a function that takes a string as a parameter
	//set string to an empty string
	//set index equal to length of string -1
	//use for loop
		// index is equal to length of string -1
		// decrement and until index is greater than 0
	// return output
// call the function reverse with a string 

function reverse(str) {

var string = " "
var index = str.length -1
for (var i = index; i >= 0; i--) {
	string += str[i]
}

return string
}

reverse("hello")


