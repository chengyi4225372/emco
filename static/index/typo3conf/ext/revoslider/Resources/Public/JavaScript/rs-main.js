(function($) {
	$(document).ready(function() {

		if (typeof rsConfiguration != 'undefined') {
			if (jQuery().revolution) {
				var revapi;
				revapi = jQuery('.tp-banner, .fullscreenbanner').revolution(rsConfiguration);
			} else {
				console.log('Please include the revoslider-library');
			}
		}
	});
}(jQuery));

