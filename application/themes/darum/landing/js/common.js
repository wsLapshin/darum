$(function() {

	$('.headers').slick({
		dots: true,
		arrows: false,
		pauseOnHover: false,
		slidesToShow: 1,
		slidesToScroll: 1,
		speed: 1000,
		// autoplay: true,
		autoplaySpeed: 3000,
		fade: true
	});
	

	$(".carousel").flipster({
        style: 'carousel',
        spacing: 0,
        buttons:   true,
        scrollwheel: false,
        nav: false,
        loop: true,
        touch: true,
    });

	//SVG Fallback
	if(!Modernizr.svg) {
		$("img[src*='svg']").attr("src", function() {
			return $(this).attr("src").replace(".svg", ".png");
		});
	};

	//E-mail Ajax Send
	$("form").submit(function() { //Change
		var th = $(this);
		$.ajax({
			type: "POST",
			url: "mail.php", //Change
			data: th.serialize()
		}).done(function() {
			alert("Thank you!");
			setTimeout(function() {
				// Done Functions
				th.trigger("reset");
				$.magnificPopup.close();
				
			}, 1000);
		});
		return false;
	});

	//Chrome Smooth Scroll
	try {
		$.browserSelector();
		if($("html").hasClass("chrome")) {
			$.smoothScroll();
		}
	} catch(err) {

	};

	$("img, a").on("dragstart", function(event) { event.preventDefault(); });

});
