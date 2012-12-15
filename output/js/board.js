$(document).ready(function() {
	$("img").each(function(){
		$(this).append('Text');
		console.log("Done");
		($(this).position);
		($(this).attr("tile_score"));
	});
});

