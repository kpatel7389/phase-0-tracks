
//Write a function that will take the array as its argument
//Then set a var that the output will be stored to
//	-Using .length, loop through the array to find the longest phrase. 
// 	- the loop will take the current phrase and see if it is longer than the next phrase
//	- if it is then it will store it in the longest phrase var or else move on to the next phrase
//Return the longest phrase



var arr = ["long phrase","longest phrase","longer phrase"];


function longestPhrase(arr){
  var longest_phrase = '';
  for(var i = 0; i < arr.length; i++){
    if(arr[i].length > longest_phrase.length){
      longest_phrase = arr[i];
    }
  }
  return longest_phrase;
}


console.log(longestPhrase(arr));


//Write a function that will compare 2 objects 
	// -set 2 objects to data1 and data2
	// -set a var equal to false 
	// -create a for loop to see if any of the keys in the 2 objects match
	// -if key1 and key2 match in data1 and data2 then the output should be true 

//var data1 = {name: 'Steven', age: 54};
var data2 = {name: 'Tamir', age:54};
var data1 = {name: 'Steven', age:53};


function compareObjects(data1, data2) {
	var match = false;
	for(var key1 in data1){
		for(var key2 in data2){
			if (key1 == key2 && data1[key1] == data2[key2]){
				match = true;
			}
		}
	}
	return match;
}

console.log(compareObjects(data1, data2));


// Write a function that takes a number for length
// 	-set an empty array
// 	-set var equal to a string of alphabet
// 	-Generate num amount of strings of random length
// 		-set var to access letters
// 		-use Math.random function to access the number of letters 1-10
// 		-push the strings into the empty array
// 	Output should be array of the number of length (1-10) we called

function generateRandom(num){
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var arr = [];
    for(var i = 0; i < num; i++){
	    var letters = '';
      rand = Math.floor((Math.random() * 10) + 1);
 	      for(var j = 0; j < rand; j++){
 	        letters = letters + alphabet.charAt(Math.floor((Math.random() * 26) + 1));
 	      }
 	  arr.push(letters);
    }
  console.log(arr);
  return arr;
}

 for(var i = 1; i <= 10; i++){
	longestPhrase(generateRandom(6));
  }




