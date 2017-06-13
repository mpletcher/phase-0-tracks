$(document). ready(function() {
	$('#open'). click(function() {
		$('#login form'). slideToggle(300);
		$(this). toggleClass('close');
		
	}); // click end
}); // end ready