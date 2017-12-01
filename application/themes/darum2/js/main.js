/*Добавить в избранное*/
function addFav() {
    var title = document.title,
            url = document.location,
            UA = navigator.userAgent.toLowerCase(),
            isFF = UA.indexOf('firefox') != -1,
            isMac = UA.indexOf('mac') != -1,
            isWebkit = UA.indexOf('webkit') != -1,
            isIE = UA.indexOf('.net') != -1;

    if ((isIE || isFF) && window.external) { // IE, Firefox
        window.external.AddFavorite(url, title);
        return false;
    }

    if (isMac || isWebkit) { // Webkit (Chrome, Opera), Mac
        document.getElementById('AddFavViaSheens').innerHTML = '<p>Нажмите "' + (isMac ? 'Command/Cmd' : 'Ctrl') + ' + D" для добавления страницы в закладки</p>';
        $("#AddFavViaSheens").dialog({
            title: "Добавление в избранное",
            draggable: false,
            modal: true,
            buttons: [
                {
                    text: "Ok",
                    icon: "ui-icon-heart",
                    click: function () {
                        $(this).dialog("close");
                    }
                }
            ]
        });
        return false;
    }
}

$(window).on('load', function () {

    /*Скачать приложение*/
    $('#downloadmobile').on('click', function () {
        $(function () {
            $("#dialog").dialog({
                title: "Дарум",
            });
        });
    });
    $('.addFav').on('click', addFav);

    /*Слайдер иконочного меню (под главным)*/
    var slickMenu = $('.slick-menu');
    slickMenu.on('init',function(event, slick, direction){
       slickMenu.css('visibility', 'visible');
    }); 
    slickMenu.slick({
        slidesToShow: 4,
        swipeToSlide: true,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 2000,
        responsive: [
            {
                breakpoint:  875,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 620,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1
                }
            }
        ]
    });

    /*Слайдер превью статей*/
    var slickPreview = $('.slick-preview');
    slickPreview.on('init',function(event, slick, direction){
       slickPreview.css('visibility', 'visible');
    }); 
    slickPreview.slick({
      dots: false,
      infinite: true,
      speed: 1500,
      fade: true,
      cssEase: 'linear',
      swipeToSlide: true,
      arrows: false,
      autoplay: true
    }); 

    /*Слайдер правая колонка превьюшек*/
    var asideList = $('.aside-list__content');
    asideList.on('init',function(event, slick, direction){
       asideList.css('visibility', 'visible');
    }); 
    asideList.slick({
      infinite: true,
      speed: 1000,
      swipeToSlide: true,
      arrows: false,
      autoplay: true,
      vertical: true,
      slidesToShow: 4,
      responsive: [
           {
               breakpoint: 960,
               settings: {
                    slidesToShow: 5
                }
            },
            {
                breakpoint: 800,
                    settings: {
                        slidesToShow: 4
                    }
            },
            {
               breakpoint: 700,
               settings: {
                    vertical: false,
                    slidesToShow: 3 
                }
            },
            {
               breakpoint: 545,
               settings: {
                    vertical: false,
                    slidesToShow: 2 
                }
            },
            {
               breakpoint: 480,
               settings: {
                    vertical: false,
                    slidesToShow: 1 
                }
            },
      ]
    });

    /*Всплывающее меню по таппингу*/
    $('.hoverup').on('tap', function(e){
        if( $(this).hasClass('active') ) {
            $(this).removeClass('active');
        } else {
            $('.hoverup').removeClass('active');
            $(this).addClass('active');
        }
    });

    /*Слайдер страниц разобрать*/
    var darumPager = new window.DarumPager();
    $('.page').on('dpager_initialized', function(){console.log('page slider inited');});
    
    //darumPager.init();
    
});


/*TODO разобрать - для лэндинга*/
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
	

	/*$(".carousel").flipster({
        itemContainer: "ul.carousel__ul",
        itemSelector: "li.carousel__ul_li",
        style: 'carousel',
        spacing: 0,
        buttons:   true,
        scrollwheel: false,
        nav: false,
        loop: true,
        touch: true,
    });*/

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
	/*try {
		$.browserSelector();
		if($("html").hasClass("chrome")) {
			$.smoothScroll();
		}
	} catch(err) {

	};*/

	$("img, a").on("dragstart", function(event) { event.preventDefault(); });

});
