
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

var data1 = {name: 'Steven', age: 54};
var data2 = {name: 'Tamir', age:54};

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




