(function ( $ ){
	wp.customize('header_bg_color', function(value){
		value.bind(function(newval){
			$('.topbar').css('background-color', newval);
		});
	});
})(jQuery);