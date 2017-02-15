var colors = ['blue', 'pink', 'red', 'green'];
var horse_name = ['Ed', 'Lightening', 'Ajax', 'Big Brown'];

colors.push('yellow');
horse_name.push('Racer');

var horse_obj = {};

if (colors.length == horse_name.length) {

	for (var i = 0; i < colors.length; i++) {
		horse_obj[horse_name[i]] = colors[i];
	}
}

console.log(horse_obj);


function Car(color, model, make) {
	this.color = color;
	this.model = model;
	this.make = make;
	this.engine = function(){console.log('vrooom!!!')}

	console.log("Car initialization complete!")
}

var car1 = new Car('black', 'Rogue', 'Nissan');
console.log(car1);
console.log('Our car can rev');
car1.engine();

var car2 = new Car('blue', 'Camry', 'Toyota');
console.log(car2);
console.log('This car can rev too!');
car2.engine();