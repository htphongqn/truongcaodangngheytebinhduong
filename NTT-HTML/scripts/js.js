$(function () {
    var pull = $('#pull');
    btnClose = $('#btnClose');
    menu = $('.navx > ul');
    navx = $('.navx');
    menuli = $('.navx > ul > li');
    menuli_ul = $('.navx > ul > li>ul');
	$(".closeIco").hide();
    menuHeight = menu.height();
	var btnOpenS = $('.openIco');
	var btnCloseS= $('.closeIco');

    $(btnOpenS).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
		btnCloseS.show();
		btnOpenS.hide();
 
    });
	$(btnCloseS).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
 		btnOpenS.show();
		btnCloseS.hide();
    });
    $(btnClose).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
    });
    var w1 = $(window).width();
    if (w1 < 768) {
        navx.addClass("navxMb");
        menuli_ul.addClass('dropdown');
        menuli.on('click', function () {
			
            if ($(this).find('ul.dropdown').is(':hidden')) {
                $(this).find('ul.dropdown').slideToggle();
                $(this).find('ul.dropdown').addClass('open');
				
            }
            else {
                $(this).find('ul.dropdown').slideToggle();
				$(".closeIco").hide();
				
                return;
            }

        });
    }

    $(window).resize(function () {
        var w = $(window).width();
        if (w < 768) {
        }

    });
	$( ".navx >ul>li" ).has( "ul" ).addClass("parent");
});

//$(function () {
//	$( ".navy > ul > li" ).has( "ul" ).addClass("parent");
//	$( ".navy >ul > li> a" ).append("<span class='caretL'></span>");
//});

$(function () {
$( ".other-news-dtl  ul  li" ).prepend("<i class='fa fa-angle-double-right'></i>");
$( ".link-news" ).prepend("<i class='fa fa-stop'></i>");
$( ".fa-lf > ul>li" ).prepend("<i class='fa fa-angle-double-right'></i>");
 
});