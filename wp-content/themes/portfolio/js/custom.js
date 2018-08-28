// tab
$(document).ready(function() {
    $('.tab-link').click(function() {
        var tabID = $(this).attr('data-tab');
        $(this).addClass('active').siblings().removeClass('active');
        $('#tab-' + tabID).addClass('active').siblings().removeClass('active');
    });
    // scroll top to bottom
    $(window).scroll(function() {
        if ($(this).scrollTop() > 50) {
            $('.scrolltop:hidden').stop(true, true).fadeIn();
        } else {
            $('.scrolltop').stop(true, true).fadeOut();
        }
    });
    $(function() {
        $(".scroll").click(function() {
            $("html,body").animate({
                scrollTop: $(".thetop").offset().top
            }, "1000");
            return false
        })
    });

    // active section
    var scroll = new SmoothScroll('a[href*="#"]', {
        // Speed & Easing
        speed: 1000, // Integer. How fast to complete the scroll in milliseconds
        offset: 0, // Integer or Function returning an integer. How far to offset the scrolling anchor location in pixels
        easing: 'easeInOutCubic', // Easing pattern to use
    });

    // active menu
    $('.navbar li a').click(function() {
        $('.navbar li a').removeClass("menu-active");
        $(this).addClass("menu-active");
    });

});
// print cv

function printContent(el){
  var restorepage = document.body.innerHTML;
  var printcontent = document.getElementById(el).innerHTML;
  document.body.innerHTML = printcontent;
  window.print();
  document.body.innerHTML = restorepage;
}
// counter
var a = 0;
$(window).scroll(function() {

    var oTop = $('.our-details').offset().top - window.innerHeight;
    if (a == 0 && $(window).scrollTop() > oTop) {

        // details counter js
        (function($) {
            $.fn.countTo = function(options) {
                options = options || {};

                return $(this).each(function() {
                    // set options for current element
                    var settings = $.extend({}, $.fn.countTo.defaults, {
                        from: $(this).data('from'),
                        to: $(this).data('to'),
                        speed: $(this).data('speed'),
                        refreshInterval: $(this).data('refresh-interval'),
                        decimals: $(this).data('decimals')
                    }, options);

                    // how many times to update the value, and how much to increment the value on each update
                    var loops = Math.ceil(settings.speed / settings.refreshInterval),
                        increment = (settings.to - settings.from) / loops;

                    // references & variables that will change with each update
                    var self = this,
                        $self = $(this),
                        loopCount = 0,
                        value = settings.from,
                        data = $self.data('countTo') || {};

                    $self.data('countTo', data);

                    // if an existing interval can be found, clear it first
                    if (data.interval) {
                        clearInterval(data.interval);
                    }
                    data.interval = setInterval(updateTimer, settings.refreshInterval);

                    // initialize the element with the starting value
                    render(value);

                    function updateTimer() {
                        value += increment;
                        loopCount++;

                        render(value);

                        if (typeof(settings.onUpdate) == 'function') {
                            settings.onUpdate.call(self, value);
                        }

                        if (loopCount >= loops) {
                            // remove the interval
                            $self.removeData('countTo');
                            clearInterval(data.interval);
                            value = settings.to;

                            if (typeof(settings.onComplete) == 'function') {
                                settings.onComplete.call(self, value);
                            }
                        }
                    }

                    function render(value) {
                        var formattedValue = settings.formatter.call(self, value, settings);
                        $self.html(formattedValue);
                    }
                });
            };

            $.fn.countTo.defaults = {
                from: 0, // the number the element should start at
                to: 0, // the number the element should end at
                speed: 2000, // how long it should take to count between the target numbers
                refreshInterval: 100, // how often the element should be updated
                decimals: 0, // the number of decimal places to show
                formatter: formatter, // handler for formatting the value before rendering
                onUpdate: null, // callback method for every time the element is updated
                onComplete: null // callback method for when the element finishes updating
            };

            function formatter(value, settings) {
                return value.toFixed(settings.decimals);
            }
        }(jQuery));

        jQuery(function($) {
            // custom formatting example
            $('.count-number').data('countToOptions', {
                formatter: function(value, options) {
                    return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
                }
            });

            // start all the timers
            $('.timer').each(count);

            function count(options) {
                var $this = $(this);
                options = $.extend({}, options || {}, $this.data('countToOptions') || {});
                $this.countTo(options);
            }
        });

        a = 1;
    }

});
// Gallery image hover
$(".img-wrapper").hover(
    function() {
        $(this).find(".img-overlay").animate({
            opacity: 1
        }, 600);
    },
    function() {
        $(this).find(".img-overlay").animate({
            opacity: 0
        }, 600);
    }
);

// Lightbox
var $overlay = $('<div id="overlay"></div>');
var $image = $("<img>");
var $prevButton = $('<div id="prevButton"><i class="fa fa-chevron-left"></i></div>');
var $nextButton = $('<div id="nextButton"><i class="fa fa-chevron-right"></i></div>');
var $exitButton = $('<div id="exitButton"><i class="fa fa-times"></i></div>');

// Add overlay
$overlay.append($image).prepend($prevButton).append($nextButton).append($exitButton);
$("#gallery").append($overlay);

// Hide overlay on default
$overlay.hide();

// When an image is clicked
$(".img-overlay").click(function(event) {
    // Prevents default behavior
    event.preventDefault();
    // Adds href attribute to variable
    var imageLocation = $(this).prev().attr("href");
    // Add the image src to $image
    $image.attr("src", imageLocation);
    // Fade in the overlay
    $overlay.fadeIn("slow");
});

// When the overlay is clicked
$overlay.click(function() {
    // Fade out the overlay
    $(this).fadeOut("slow");
});

// When next button is clicked
$nextButton.click(function(event) {
    // Hide the current image
    $("#overlay img").hide();
    // Overlay image location
    var $currentImgSrc = $("#overlay img").attr("src");
    // Image with matching location of the overlay image
    var $currentImg = $('#image-gallery img[src="' + $currentImgSrc + '"]');
    // Finds the next image
    var $nextImg = $($currentImg.closest(".image").next().find("img"));
    // All of the images in the gallery
    var $images = $("#image-gallery img");
    // If there is a next image
    if ($nextImg.length > 0) {
        // Fade in the next image
        $("#overlay img").attr("src", $nextImg.attr("src")).fadeIn(800);
    } else {
        // Otherwise fade in the first image
        $("#overlay img").attr("src", $($images[0]).attr("src")).fadeIn(800);
    }
    // Prevents overlay from being hidden
    event.stopPropagation();
});

// When previous button is clicked
$prevButton.click(function(event) {
    // Hide the current image
    $("#overlay img").hide();
    // Overlay image location
    var $currentImgSrc = $("#overlay img").attr("src");
    // Image with matching location of the overlay image
    var $currentImg = $('#image-gallery img[src="' + $currentImgSrc + '"]');
    // Finds the next image
    var $nextImg = $($currentImg.closest(".image").prev().find("img"));
    // Fade in the next image
    $("#overlay img").attr("src", $nextImg.attr("src")).fadeIn(800);
    // Prevents overlay from being hidden
    event.stopPropagation();
});

// When the exit button is clicked
$exitButton.click(function() {
    // Fade out the overlay
    $("#overlay").fadeOut("slow");
});



$(document).ready(function() {

    var rightCardsNotInPlace = 0;
    var leftCardsNotInPlace = 0;
    var classes = ["l1", "l2", "l3", "l4"];
    var cards = $('.card').toArray();
    var activeIndx = Math.floor($(cards).length / 2);

    $('.left-arrow').on('click', function() {
        if (activeIndx < $(cards).length - 1) {
            active = $(cards[activeIndx]);
            if (activeIndx < Math.floor($(cards).length / 2)) {
                var leftCards = $('.left').toArray();
                leftCards.reverse();
                for (var i = 0; i < leftCards.length; i++) {
                    $(leftCards[i]).removeClass("l" + (i + 1)).addClass("l" + (i + 2));
                }
            }
            active.addClass('slideLeft').addClass('left').addClass('l1');
            active.removeClass('slideLeft');
            next = $(cards[activeIndx + 1]);
            next.removeClass('right').removeClass('l1');
            if (activeIndx >= Math.floor($(cards).length / 2)) {
                var rightCards = $('.right').toArray();
                for (var i = 0; i < rightCards.length; i++) {
                    $(rightCards[i]).removeClass("l" + (i + 2)).addClass("l" + (i + 1));
                }
            }
            active.removeClass('active');
            next.addClass('active');
            activeIndx++;
        }
    });

    $('.right-arrow').on('click', function() {
        if (activeIndx > 0) {
            active = $(cards[activeIndx]);
            if (activeIndx > Math.floor($(cards).length / 2)) {
                var rightCards = $('.right').toArray();
                for (var i = 0; i < rightCards.length; i++) {
                    $(rightCards[i]).removeClass("l" + (i + 1)).addClass("l" + (i + 2));
                }
            }
            active.addClass('slideRight').addClass('right').addClass('l1');
            active.removeClass('slideRight');
            next = $(cards[activeIndx - 1]);
            next.removeClass('left').removeClass('l1');
            if (activeIndx <= Math.floor($(cards).length / 2)) {
                var leftCards = $('.left').toArray();
                leftCards.reverse();
                for (var i = 0; i < leftCards.length; i++) {
                    $(leftCards[i]).removeClass("l" + (i + 2)).addClass("l" + (i + 1));
                }
            }
            active.removeClass('active');
            next.addClass('active');
            activeIndx--;
        }
    });


    // handling chat contacts

    var chatContacts = $('.contact').toArray();
    var chatActiveIndx = Math.floor($(chatContacts).length / 2);

    $('.chat-top-arrow').on('click', function() {
        if (chatActiveIndx < $(chatContacts).length - 1) {
            active = $(chatContacts[chatActiveIndx]);
            if (chatActiveIndx < Math.floor($(chatContacts).length / 2)) {
                var topCards = $('.top').toArray();
                topCards.reverse();
                for (var i = 0; i < topCards.length; i++) {
                    $(topCards[i]).removeClass("l" + (i + 1)).addClass("l" + (i + 2));
                }

                var sss = $('.contact.bottom.l1.base' + (3 - chatActiveIndx)).removeClass('faded');
            }
            if (chatActiveIndx >= Math.floor($(chatContacts).length / 2)) {
                $('.contact.top.l1').addClass('faded');
            }
            active.addClass('slideTop').addClass('top').addClass('l1').addClass('base' + (chatActiveIndx - 1));
            active.removeClass('slideTop');

            next = $(chatContacts[chatActiveIndx + 1]);
            next.removeClass('bottom').removeClass('l1');
            if (chatActiveIndx >= Math.floor($(chatContacts).length / 2)) {
                var bottomCards = $('.bottom').toArray();
                for (var i = 0; i < bottomCards.length; i++) {
                    $(bottomCards[i]).removeClass("l" + (i + 2)).addClass("l" + (i + 1));
                }
            }
            active.removeClass('active');
            next.addClass('active');
            chatActiveIndx++;
        }
    });

    $('.chat-bottom-arrow').on('click', function() {
        if (chatActiveIndx > 0) {
            active = $(chatContacts[chatActiveIndx]);
            if (chatActiveIndx > Math.floor($(chatContacts).length / 2)) {
                var bottomCards = $('.bottom').toArray();
                for (var i = 0; i < bottomCards.length; i++) {
                    $(bottomCards[i]).removeClass("l" + (i + 1)).addClass("l" + (i + 2));
                }
                var sss = $('.contact.top.l1.base' + (chatActiveIndx - 3)).removeClass('faded');
            }

            if (chatActiveIndx <= Math.floor($(chatContacts).length / 2)) {
                $('.contact.bottom.l1').addClass('faded');
            }
            active.addClass('slideBottom').addClass('bottom').addClass('l1').addClass('base' + (5 - chatActiveIndx));
            active.removeClass('slideBottom');
            next = $(chatContacts[chatActiveIndx - 1]);
            next.removeClass('top').removeClass('l1');
            if (chatActiveIndx <= Math.floor($(chatContacts).length / 2)) {
                var topCards = $('.top').toArray();
                topCards.reverse();
                for (var i = 0; i < topCards.length; i++) {
                    $(topCards[i]).removeClass("l" + (i + 2)).addClass("l" + (i + 1));
                }
            }
            active.removeClass('active');
            next.addClass('active');
            chatActiveIndx--;
        }
    });
});