//declare a variable to a string
//define a function to reverse a string 
//inputs a string
//output reverse string 


function reverse(string) {

var output = " "
for (var i = string.length - 1; i >= 0; i--) {
	output += string[i]
}
return output 
}


// DRIVER CODE

reverse_string = reverse("Kosha")

  if (1==1 ) {
    console.log(reverse_string)
  }
  