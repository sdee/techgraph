$(document).ready(function() {
	$(".carousel").PikaChoose({carousel:true, autoPlay:false,carouselOptions:{wrap:'circular'}});
	//tutorial link
	$('.toggleTutorial').click(function(){
		var id = $(this).attr('id');
		console.log(id);
		var idnum = /[a-zA-Z]*(\d*)/.exec(id)[1];
		console.log(idnum);
	 	$('#technique'.concat(idnum)).toggle('slow');
		var text = $(this).text();
		$(this).text(
		        text == "Hide" ? "Remind me how" : "Hide Technique");
	});

});

