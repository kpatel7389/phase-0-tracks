//Assign each horse in the array as a key,
//Assign each color in the array as a value.
	//First run conditional for if colors.length = horse.length
		//Establish empty object
		//For loop to go through each index of horse and color arrays.
			//In the for loop, push key and value into empty object. 
				//key = horse[i], value = 'colors'[i]




var colors = ["blue", "red", "orange", "purple"]
var horse = ["Rocky", "Fin", "Ed", "Martha"]

colors.push("green")
horse.push("Hass")
console.log(colors)
console.log(horse)

//Curly brackets = ruby end. 
//Curly brackets encompass that which is being done in the loop. 
var horseColors = {}
function horseObject() {
	if (colors.length == horse.length){
		for (var index = 0; index < colors.length; index +=1){
		horseColors[horse[index]] = colors[index] 
		}
	return horseColors
	}	
}
console.log(horseObject(horseColors))

function Car(make, model, mpg) {
	console.log("This is our new car...")
	this.make = make;
	this.model = model;
	this.mpg = mpg;	

	this.engine = function() {console.log("Vroom!") }; 

	console.log("CAR INITIALIZATION COMPLETE");	
}

console.log("Let's buy a car ...");
var anotherCar = new Car("Hyundai", "Azera", 28);
console.log(anotherCar)
console.log("Our car can rev!")
anotherCar.engine()

console.log("Let's buy a car ...");
var carTwo = new Car("Ford", "Focus Electric", "NA");
console.log(carTwo)
console.log("Our car can rev!")
carTwo.engine()

console.log("Let's buy a car ...");
var carThree = new Car("Smart", "ForTwo", "40");
console.log(carThree)
console.log("Our car can rev!")
carThree.engine()