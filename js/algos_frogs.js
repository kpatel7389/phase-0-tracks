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




