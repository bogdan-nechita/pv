$( document ).ready(function() {
	getDadaSaying();	

	$("#originalSayingsContainer").css("top", function(){
		return $("#dadaSaying").offset().top - 100;
	}); 

	$("#dadaSaying").hover(
		function(){
			$("#originalSayingsContainer").show();
		},
		function(){
			$("#originalSayingsContainer").hide();
		});
	
	$("#nextSaying").click(function(){
		getDadaSaying();
	});

	$("#about").click(function(){
		if (this.innerText == "Despre") {
			this.innerText = "Înapoi";
			$("#sayingsContainer").hide();
			$("#aboutContainer").show();
		}
		else{
			this.innerText = "Despre";
			$("#sayingsContainer").show();
			$("#aboutContainer").hide();
		}
	});
});

function getDadaSaying(){
	$.ajax({
		url: "http://188.166.21.170/sayings/dada_saying",
		jsonp: "callback",
		dataType: "jsonp",
		success: function( response ) {
			$("#dadaSaying").html(response.dada_saying);	
			var first_saying = response.first_saying.part1 + (response.first_saying.separator == ',' ? '' : ' ') + response.first_saying.separator + ' ' + response.first_saying.part2;
			var second_saying = response.second_saying.part1 + (response.second_saying.separator == ',' ? '' : ' ') + response.second_saying.separator + ' ' + response.second_saying.part2;		
			$("#oSaying1").html(first_saying);
			$("#oSaying2").html(second_saying);
		}
	});
}

