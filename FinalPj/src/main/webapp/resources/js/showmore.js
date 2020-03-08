(function($) {
    "use strict";
	$('#container').showmore({
		closedHeight: 200,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('#container1').showmore({
		closedHeight: 350,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('#container2').showmore({
		closedHeight: 280,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('.hide-details').showmore({
		closedHeight: 115,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button1',
		animationSpeed: 0.5
	});
	if (document.documentElement.clientWidth < 900) {
		$('#container1').showmore({
			closedHeight: 450,
			buttonTextMore: 'Show more',
			buttonTextLess: 'Close',
			buttonCssClass: 'showmore-button',
			animationSpeed: 0.5
		});
	}
	$( "#mySlider" ).slider({
		range: true,
		step: 100000, //슬라이더 간격
		min: 0, //슬라이더 최소 값
		max: 10000000, //슬라이더 최대 값
		values: [ 0, 10000000], //슬라이더 디폴트 값
		slide: function( event, ui ) {
			$( "#price" ).val( " ￦" + ui.values[ 0 ] + " - ￦" + ui.values[ 1 ] );
		}
	});

	$( "#price" ).val( "￦" + $( "#mySlider" ).slider( "values", 0 ) +
			   " - ￦" + $( "#mySlider" ).slider( "values", 1 ) );
})(jQuery);