console.log("hello world");

function addBorder(event) {
	// console.log('mouseover happened');
	// console.log(event);
	event.target.style.border= '2px solid pink';
}

var title = document.getElementById('title');

title.onclick = function() {
	console.log('clicked');
};

title.addEventListener("mouseover", addBorder);



