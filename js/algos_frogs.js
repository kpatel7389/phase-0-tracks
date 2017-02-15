// Release 0:

// Create a function that takes an array as a parameter
// Set var to what will be returned
// Use for loop to through the array until it finds the longest phrase
// 	IF the current phrase in the array is longer than the next 
// 		then store the longest phrase in the array
// return the var where the longest phrase is stored
// call the function


array = ["long phrase","longest phrase","longer phrase"];

function longest_phrase(array){
	var lon_phrase = '';
	for(var i = 0; i < array.length; i++) {
		if(array[i].length > lon_phrase.length){
			long_phrase = array[i];
		}
	}
	return lon_phrase;
}

longest_phrase(array);

// Release 1:

// Create a function that takes two objects as a parameter
// Set var 1 equal to obj1
// Set var 2 equal to obj2
// Set var if match is false
// Use for loop to check a key in obj1
// 	Use another for loop to check key in obj2
// 		IF the key in obj1 and the key in obj 2 match
// 			return true
// Return if match is true or false
// Call the function

obj1 = {name: 'Kosha', age: 27};
obj2 = {name: 'Harshil', age:27};

function compare_obj(obj1, obj2){

var match = false;
for(var key1 in obj1){
	for(var key2 in obj2){
		if(key1 == key2 && obj1[key1] == obj2[key2]){
			match = true
		}
	}
}
return match

}

compare_obj(obj1, obj2)

// Release 2:

// Create a function that takes an integer for length
// Set variable to empty array
// Set variable to equal to a string of the alphabet to make words
// Use for loop to create x amount of strings of random lengths
// 	Set random number generator equal to a variable with max 10 letters
// 	Set an empty string variable
// 	Use for loop to randomly select letters 
// 		Set variable to store the random letters 
// 	push the letter into the empty array
// 	return array
// Use a loop to incoporate longest word method

function rand_words(int){
	var alphabet = 'abcdefghijklmnopqrstiuvxyz'
	var array = []
	for(var i = 0; i < int; i++){
		var letters = '';
		rand = Math.floor((Math.random()*10) +1);
		for(var j = 0; j< rand; j++){
			letters = letters + alphabet.charAt(Math.floor((Math.random()*26) +1));
		}
		array.push(letters);
	}
	console.log(array)
}

for(var i = 1; i <= 10; i++){
	longest_phrase(rand_words(3));
}













