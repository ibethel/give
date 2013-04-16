$(document).ready(function() {
	// popover
	$(".badge").popover({
	trigger: "click",
	delay: 0
	});

  var hash = window.location.hash.replace('#', '');
  $('#us-link').attr('href','http://bcrr.us/usa/' + hash);
  $('#intl-link').attr('href','http://bcrr.us/intl/' + hash);


});

