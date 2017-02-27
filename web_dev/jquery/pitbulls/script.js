$(document).ready(function() {
	$('#info').mouseenter(function() {
		$(this).animate({
			height: '+=10px'
		});
	});

	$('#history').mouseenter(funtion() {
		$(this).css('background-color', "pink");
	});

	$('#info').mouseleave(function() {
    $(this).animate({
      height: '-=10px',
    });  

    $('#history').mouseleave(function() {
    $(this).fadeTo('fast', 1);
  });

    $('#highlights')..click(function() {
       $(this).toggle(1000);
   }); 
})