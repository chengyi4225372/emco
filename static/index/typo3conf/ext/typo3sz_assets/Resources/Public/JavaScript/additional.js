jQuery(window).load(function(){
    initFixedScrollBlock();

    if (window.location.hash && $(window.location.hash).length) {
        $('html, body').animate({
            scrollTop: ($(window.location.hash).offset().top - 100)
        },50);
    }
});

(function($) {
	$(document).ready(function() {
        /*initSocialNav();*/
        newsletterRedirect.init();
		initFancybox();
		initDivisions();
        initSitemap();
        initSearchbox();
        initAnchorLinks();
        initSmoothScrollingAnchorLinks();
        initRegion();
        initLazyLoad();
        initSzLikesMe();
        initSzComments();
        initPopover();
        initPowermailPrefillValues();
        initSvgImages();
		initYoutubeApi();
        initGoogleTagManager();
		initSubnavigationHeight();
		initLayerScroll();
	});

    $(window).load(function() {
        initIsotope();
    });

}(jQuery));

function initLayerScroll() {
	$(window).bind('mousewheel wheel', function(e) {
		if (e.target.className.indexOf("jcf-option") >= 0) {
			$(window).scrollTop($(window).scrollTop() + (e.originalEvent.deltaY));
		}
	});
}

function initSubnavigationHeight() {
	var initSubnavigationHeight = false;

	$('.navbar-nav .dropdown > a').click(function() {
		if (!initSubnavigationHeight) {
			initSubnavigationHeight = true;
			window.setTimeout(function() {
				jQuery('.sub-menu').sameHeight({
					elements: 'li > a',
					flexible: true,
					multiLine: true,
					useMinHeight: true
				});
			}, 50);
		}
	});
}

function initYoutubeApi() {
	var tag = document.createElement('script');

	tag.src = "https://www.youtube.com/iframe_api";
	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
}

function onYouTubeIframeAPIReady() {
    $('.tx-sz-comdbproducts .video-holder iframe').each(function() {
        var $this = $(this);
        var player = new YT.Player($this.attr('id'), {
          events: {
			  'onStateChange': function(event) {
				  if (event.data == YT.PlayerState.PLAYING) {
				  	dataLayer.push({
						  'event': 'video',
						  'eventName': 'play',
						  'videoLink': $this.data('src').split('/').pop()
					  });
				  }
              }
          }
		});
    });
}

function initGoogleTagManager() {

	if (typeof FB !== 'undefined'){
		FB.Event.subscribe('message.send',
            function(href) {
				dataLayer.push({
					'event': 'share',
					'content': href,
					'network': 'facebook'
				});
            }
        );
		FB.Event.subscribe('edge.create',
			function(href) {
				dataLayer.push({
					'event': 'share',
					'content': href,
					'network': 'facebook'
				});
			}
		);
	}

	if ($('#tx-indexedsearch-searchbox-sword').length && $('#tx-indexedsearch-searchbox-sword').val() != '') {
		dataLayer.push({
			'event':'search',
			'searchTerm': $('#tx-indexedsearch-searchbox-sword').val()
		});
    }

    $("a[data-gtm-event]").click(function() {
        fireTagManagerEvent(this);
    });

	$("a.t3colorbox-youtube").click(function() {
	    var $iframe = $($(this).attr('href')).find('iframe');
		dataLayer.push({
			'event': 'video',
			'eventName': 'play',
			'videoLink': $iframe.attr('src').split('/').pop()
		});
	});
}

function fireTagManagerEvent(elem) {
	var $elem = $(elem);
	var event = $elem.data('gtm-event');
	var eventName = $elem.data('gtm-event-name');

	if (event === 'share') {
		var content = $elem.data('gtm-content') ? $elem.data('gtm-content') : window.location.href;
	    dataLayer.push({'event': event, 'content': content, 'network': eventName});
    } else if (event === 'download') {
		var fileName = $elem.data('gtm-file-name').split('/').pop();
		if (eventName) {
			dataLayer.push({'event': event,	'eventName': eventName,	'fileName': fileName});
        } else {
			dataLayer.push({'event': event,	'fileName': fileName});
        }
    } else {
		dataLayer.push({'event': event, 'eventName': eventName});
    }
}

function initSvgImages() {
    jQuery('img.svg').each(function(){
        var $img = jQuery(this);
        var imgID = $img.attr('id');
        var imgClass = $img.attr('class');
        var imgURL = $img.attr('src');

        jQuery.get(imgURL, function(data) {
            var $svg = jQuery(data).find('svg');

            if(typeof imgID !== 'undefined') {
                $svg = $svg.attr('id', imgID);
            }

            if(typeof imgClass !== 'undefined') {
                $svg = $svg.attr('class', imgClass+' replaced-svg');
            }

            $svg = $svg.removeAttr('xmlns:a');

            if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
                $svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'));
            }

            $svg.removeAttr('width');
            $svg.removeAttr('height');
            $svg.attr('preserveAspectRatio', 'xMidYMid meet');

            $img.replaceWith($svg);

        }, 'xml');

    });
}

function initPowermailPrefillValues() {
    $('input[name="tx_powermail_pi1[field][url]"]').val(window.location.href);
}

function initPopover() {
    $('.szShare').popover({
        container: 'body',
        html: true
    });

    $('.szShare').click(function(e) {
        e.preventDefault();
    });

    jQuery("body").on("click touchstart", '.szShare', function() {
        $(this).popover("show");
        $('.szShare').not(this).popover("hide"); // hide other popovers
        return false;
    });

    jQuery("body").on("click touchstart", function() {
        $('.szShare').popover("hide"); // hide all popovers when clicked on body
    });
}

// mobile menu init
function initSocialNav() {
    var button = jQuery('.contact-popup.social .szLikesMe');
    var dataHolder = jQuery('.news-single .events-posts.magazin');
    button.attr('data-uid', dataHolder.data('uid'));
    button.attr('data-pid', dataHolder.data('pid'));

    jQuery('body').mobileNav({
        hideOnClickOutside: false,
        menuActiveClass: 'nav-active',
        menuOpener: '.social-opener',
        menuDrop: '.popup-content'
    });
}

function initAnchorLinks() {
    $("a[href*=#]").click(function(e) {
        if ($(this).hasClass('contact-opener') || $(this).hasClass('social-opener')) {
            e.preventDefault();
            return 0;
        }
        var element = $(this).attr('href').substring($(this).attr('href').lastIndexOf('#'));
        if ($(element).length) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: ($(element).offset().top - 96)
            },50);
        }
    });
}

function initLazyLoad() {
    $("img.lazy").lazyload();
}

function initIsotope() {

    if ($('.isotopenews').length) {

        $grid = $('.grid').isotope({
            // set itemSelector so .grid-sizer is not used in layout
            itemSelector: '.grid-item',
            percentPosition: true,
            layoutMode: 'packery',
            packery: {
                columnWidth: '.grid-sizer',
                horizontal: false
            }
        });
/*
        $grid.imagesLoaded().progress( function() {
            $grid.isotope('layout');
        });
*/
        $('.select-isotope').change(function() {
            var element = '';
            $('.select-isotope').each(function() {
                element+= '.' + $(this).val();
            });

            $('.grid').isotope({ filter: element });
        });

        $('.btn-isotope').click(function() {
            $('.btn-isotope').removeClass('active');
            $(this).addClass('active');
            $('.grid').isotope({ filter: '.' + $(this).data('isotope') });
        });

        $('.btn-isotope').removeAttr('disabled');

        var isotopeIas = jQuery.ias({
            container:  '.isotopenews .grid',
            item:       '.grid-item',
            pagination: '.pagination-holder',
            next:       '.next a'
        });

        isotopeIas.extension(new IASSpinnerExtension({
            src: '/typo3conf/ext/sz_comdbproducts/Resources/Public/Icons/loader.gif'
        }));

        isotopeIas.on('rendered', function(items) {
            $('.grid').isotope('insert', $(items));
            /*
            $('.grid').imagesLoaded().progress( function() {
                $('.grid').isotope('layout');
            });
            */

            initSzLikesMe();
            initSzComments();
        });
    }
}

function initSzLikesMe() {

    jQuery('.szLikesMe').not('.loaded').each(function() {
        var uid = jQuery(this).data('uid');
        var pid = jQuery(this).data('pid');
        var identifier = jQuery(this).data('identifier');
        var container = jQuery(this);

        if (container.find('a > span').length) {
            var request = {
                no_cache: 1,
                mvc: {
                    vendor: 'Sunzinet',
                    extensionName: 'SzLikesMe',
                    pluginName: 'pi2',
                    controller: 'Vote',
                    action: 'show',
                    format: 'html'
                },
                arguments: {
                    entryUid: uid,
                    pid: pid,
                    identifier: identifier
                }
            };
/*
            jQuery.ajax({
                url: 'index.php',
                type: 'GET',
                dataType: 'html',
                data: {
                    id: jQuery('body').data('pid'),
                    L: jQuery('body').data('languid'),
                    eID: 'ajaxDispatcher',
                    no_cache: 1,
                    request: request
                },
                success: function (result) {
                    container.html('');
                    $(result).find('.likeButton').appendTo(container);
                }
            });
*/
			jQuery.ajax({
				url: 'index.php',
				type: 'GET',
				dataType: 'html',
				data: {
					id: $('body').data('pid'),
					L: $('body').data('languid'),
					no_cache: 1,
					type: 1499873845,
					tx_szlikesme_pi1: {
						pluginName: 'pi2',
						controller: 'Vote',
						action: 'show',
						entryUid: uid,
						pid: pid,
						identifier: identifier
					}
				},
				success: function (result) {
					container.html('');
					$(result).appendTo(container);
				}
			});
        }
    });

    initSzLikesMeLike();
}

function initSzLikesMeLike() {
    jQuery('.szLikesMe').unbind('click');
    jQuery('.szLikesMe').click(function(e) {

        e.preventDefault();

        var container = jQuery(this).closest('.szLikesMe');
        var uid = container.data('uid');
        var pid = container.data('pid');
        var identifier = container.data('identifier');

        var request = {
            mvc: {
                vendor: 'Sunzinet',
                extensionName: 'SzLikesMe',
                pluginName: 'pi2',
                controller: 'Vote',
                action: 'upvote',
                format: 'html'
            },
            arguments: {
                entryUid: uid,
                pid: pid,
                identifier: identifier
            }
        };
/*
        jQuery.ajax({
            url: 'index.php',
            type: 'GET',
            dataType: 'html',
            data: {
                id: jQuery('body').data('pid'),
                L: jQuery('body').data('languid'),
                no_cache: 1,
                eID: 'ajaxDispatcher',
                request: request,
            },
            success: function (result) {
                if (container.find('a > span').length) {
                    container.html('');
                    $(result).find('.likeButton').appendTo(container);
                } else {
                    $('.socialInteraction .resultsLikes').html($(result).find('.results').html());
                }
            }
        });
*/
		jQuery.ajax({
			url: 'index.php',
			type: 'GET',
			dataType: 'html',
			data: {
				id: $('body').data('pid'),
				L: $('body').data('languid'),
				no_cache: 1,
				type: 1499873845,
				tx_szlikesme_pi1: {
					pluginName: 'pi2',
					controller: 'Vote',
					action: 'upvote',
					entryUid: uid,
					pid: pid,
					identifier: identifier
				}
			},
			success: function (result) {
				container.html('');
				$(result).appendTo(container);
				/*if (container.find('a > span').length) {
					container.html('');
					$(result).find('.likeButton').appendTo(container);
				} else {
					$('.socialInteraction .resultsLikes').html($(result).find('.results').html());
				}*/
			}
		});
    });

    jQuery('.szLikesMe').addClass('loaded');
}

function initSzComments() {

    if($('.comment-holder').length) {
        if($('.comment-holder').data('uri')) {
            $('.comment-holder').load(
                $('.comment-holder').data('uri') + '?type=1442921067',
                function() {
                    initSzCommentForms();

                    $('.comment-holder .upvote').click(function(e) {
                        e.preventDefault();

                        jQuery.ajax({
                            url: $(this).attr('href') + '&type=1442921067',
                            type: 'GET',
                            dataType: 'html',
                            success: function (result) {
                                $('.comment-holder').html(result);
                                initSzCommentForms();
                            }
                        });
                    });
                }
            );
        } else {
            initSzCommentForms();
        }
    }

    jQuery('.szComments').not('.loaded').each(function() {
        var uid = jQuery(this).data('uid');
        var pid = jQuery(this).data('pid');
        var container = jQuery(this).parents('.socialInteraction').find('.resultsComments');

        jQuery.ajax({
            url: 'index.html',
            type: 'GET',
            dataType: 'html',
            data: {
                type: '1461233580',
                L: jQuery('body').data('languid'),
                news: uid,
                pid: pid,
                no_cache: 1
            },
            success: function (result) {
                if (parseInt($(result).find('.counter').text()) > 0) {
                    container.html($(result).html());
                    if (!container.parents('.socialInteraction').hasClass('active')) {
                        container.parents('.socialInteraction').addClass('active');
                    }
                }
            }
        });
    });
    jQuery('.szComments').addClass('loaded');
}

function initSzCommentForms() {

    /* init onFocus handling */
    jQuery('.comment-control').focus(function() {
        var element = $(this).parents('form').find('.fields-holder');
        if (element.hasClass('closed')) {
            element.removeClass('closed').slideDown('slow');
        }
    });


    $('.comment_answer a').click(function(e) {
        e.preventDefault();

        if ($('.comment_body .commentform-holder').length) {
            var removeForm = $('.comment_body .commentform-holder');
            removeForm.find('.comment-control').unbind('focus');
            removeForm.find('.comment-control').parsley().destroy();
            removeForm.remove();
        }

        var element = $(this).parents('.comment_body');
        jQuery.ajax({
            url: $(this).attr('href'),
            type: 'GET',
            dataType: 'html',
            data: {
                type: '1461233581',
            },
            success: function (result) {
                $(result).appendTo(element);

                /* init validation */
                element.find('form').parsley();

                element.find('.comment-control').focus(function() {
                    var element = $(this).parents('form').find('.fields-holder');
                    if (element.hasClass('closed')) {
                        element.removeClass('closed').slideDown('slow');
                    }
                });
            }
        });
    });
}

// open-close init
function initRegion() {
    jQuery('.top-bar').openClose({
        hideOnClickOutside: true,
        activeClass: 'active',
        opener: '.btn-region',
        slider: '.slide',
        animSpeed: 400,
        effect: 'slide',
        onInit: function() {
            if (this.isFirstTime) {

            }
            this.isFirstTime = true;
        },
        animStart: function() {
            if (this.isFirstTime) {
                this.isFirstTime = false;
                szContactFinderTriggerInitGeocheck();
            }
        }
    });
}

function initFancybox() {
    $(".t3colorbox-youtube").colorbox({
        inline:true,
        innerWidth:640,
        innerHeight:390
    });
    $('.t3colorbox-content:not([target="_blank"])').colorbox();
}

function initDivisions() {

    /* Divisions */
    var transformed = false;
    var body = $("body");

    function transform() {
        if($(document).scrollTop() >= 0){
            $(document).scrollTop(0);
        }
        if(transformed == false) {
            setTransformation();
        }
        else {
            resetTransformation();
        }
    }

    function setTransformation() {
        transformed = true;
        if ($(".top-fold").hasClass('transformation')) {
            body.addClass('transform');
            $("#wrapper").addClass('animate');
            $(".top-fold").show();
            $("#overlay").show();
        } else {
            $(".top-fold").slideDown(function(){
                initFixedScrollBlock();
            });
        }
    }

    function resetTransformation() {
        transformed = false;
        if ($(".top-fold").hasClass('transformation')) {
            $("#wrapper").removeClass('animate');
            window.setTimeout(function () {
                body.removeClass("transform");
                $(".top-fold").hide();
                $("#overlay").hide();
            }, 1000);
        } else {
            $(".top-fold").slideUp(function(){
                initFixedScrollBlock();
            });
            if (!$.cookie('companyChanger')) {
                $.cookie('companyChanger', 1, {path: '/'});
            }
        }
    }

    $("#overlay").click(function() {
        if(transformed == true) {
            $('.toggle-company').toggleClass('opened');
            transform();
        }
    });
    $(".toggle-company, .top-fold .division-close").click(function(e) {
        e.preventDefault();
        $('.toggle-company').toggleClass('opened');
        transform();
    });

    $(window).scroll(function() {
        if (body.hasClass("transform")) {
            $('.toggle-company').toggleClass('opened');
            resetTransformation();
        }
    });

    $('.top-fold .divisions-container a').click(function(e) {

        var $companyChanger = $("#companyChanger");
        var $pageId = $(this).data("pageid");
        var $title = $(this).find("span").html();
        var $link = $(this).attr('href');
        if ($pageId) {
            e.preventDefault();
            $companyChanger.find('.modal-content .img-text').load(getUrlPrefix() + 'page='+$pageId+'&type=1443801668&no_cache=1', function() {
                $companyChanger.modal('show');
            });
            return false;
        }
    });
}
function initSitemap() {
    $('ul.sitemap span').click(function() {
        var $elem = $(this).parent('li');
        if($elem.hasClass('opened')) {
            $elem.find('ul').slideUp();
            $elem.removeClass('opened').addClass('closed');
            $elem.find('li.opened').removeClass('opened').addClass('closed');
        } else if($elem.hasClass('closed')) {
            $elem.find('>ul').slideDown();
            $elem.removeClass('closed').addClass('opened');
        }
    });
}

function initSearchbox() {
    $('.navbar-form .opener').on('click', function() {
        $('.tx-indexedsearch-searchbox-sword').focus();
        return false;
    });
}

// align blocks height
function initSameHeight() {
    jQuery('.categories-holder, .region .geocheck').sameHeight({
        elements: '.same-height-holder',
        flexible: true,
        multiLine: true,
        biggestHeight: true
    });
}
function initSmoothScrollingAnchorLinks() {
    $('a.contact-opener, a.social-opener').click(function(){
        if ($(window).width() < 768) {
            $('html, body').animate({
                scrollTop: $($(this).attr('href')).offset().top
            }, 500);
            return false;
        }
    });
}

function getUrlPrefix() {
	if(window.location.href.indexOf('?') < 0) {
		return window.location.href + '?';
	} else {
		return filterCHash();
	}
}

function filterCHash() {
	var href = window.location.href;
	if(href.indexOf('cHash') > 0) {
		href = href.substring(0,href.indexOf("cHash"));
	}
	return href + '&';
}

/*Newsletter popup*/

var newsletterRedirect = {

	teaserForm: $("form.teaserForm"),
	footerForm: $("form.footerForm"),
	redirect: $("#newsletterRedirect"),
	form: "",
	mailRex: new RegExp('^.+@.+\..+$', 'g'),

	init:function(){
		this.teaserForm.submit(function(event) {
			newsletterRedirect.form = "teaserForm";
			if(newsletterRedirect.teaserForm.find('.required-field.error').length) {
				return false;
			} else {
				return newsletterRedirect.isTrigger(event);
			}
		});
		this.footerForm.submit(function(event) {
			newsletterRedirect.form = "footerForm";
			return newsletterRedirect.emailValidator(event);
		});
		this.redirect.find(".submit").click(function(){
			newsletterRedirect.submitForm();
		});
	},

	emailValidator:function(event){

        $(this.footerForm).parsley().validate();
        if ($(this.footerForm).parsley().isValid()) {
            return newsletterRedirect.isTrigger(event);
        } else {
            return false;
        }
	},

	isTrigger:function(event){
		if (event.isTrigger != 3) {
			if (this.redirect.length > 0) {
				this.redirect.modal('show');
				var timer = setTimeout(function () {
					newsletterRedirect.submitForm();
				}, 5000);
				this.redirect.find(".cancel").click(function () {
					clearTimeout(timer);
				});
				return false;
			}
		}
		return true;
	},

	submitForm:function(){
		if (newsletterRedirect.form == "teaserForm") {
			newsletterRedirect.teaserForm.submit();
		}
		if (newsletterRedirect.form == "footerForm") {
			newsletterRedirect.footerForm.submit();
		}
	}
};

/*
 * jQuery SameHeight plugin
 */
;(function($){
    $.fn.sameHeight = function(opt) {
        var options = $.extend({
            skipClass: 'same-height-ignore',
            leftEdgeClass: 'same-height-left',
            rightEdgeClass: 'same-height-right',
            elements: '>*',
            flexible: false,
            multiLine: false,
            useMinHeight: false,
            biggestHeight: false
        },opt);
        return this.each(function(){
            var holder = $(this), postResizeTimer, ignoreResize;
            var elements = holder.find(options.elements).not('.' + options.skipClass);
            if(!elements.length) return;

            // resize handler
            function doResize() {
                elements.css(options.useMinHeight && supportMinHeight ? 'minHeight' : 'height', '');
                if(options.multiLine) {
                    // resize elements row by row
                    resizeElementsByRows(elements, options);
                } else {
                    // resize elements by holder
                    resizeElements(elements, holder, options);
                }
            }
            doResize();

            // handle flexible layout / font resize
            var delayedResizeHandler = function() {
                if(!ignoreResize) {
                    ignoreResize = true;
                    doResize();
                    clearTimeout(postResizeTimer);
                    postResizeTimer = setTimeout(function() {
                        doResize();
                        setTimeout(function(){
                            ignoreResize = false;
                        }, 10);
                    }, 100);
                }
            };

            // handle flexible/responsive layout
            if(options.flexible) {
                $(window).bind('resize orientationchange fontresize', delayedResizeHandler);
            }

            // handle complete page load including images and fonts
            $(window).bind('load', delayedResizeHandler);
        });
    };

    // detect css min-height support
    var supportMinHeight = typeof document.documentElement.style.maxHeight !== 'undefined';

    // get elements by rows
    function resizeElementsByRows(boxes, options) {
        var currentRow = $(), maxHeight, maxCalcHeight = 0, firstOffset = boxes.eq(0).offset().top;
        boxes.each(function(ind){
            var curItem = $(this);
            if(curItem.offset().top === firstOffset) {
                currentRow = currentRow.add(this);
            } else {
                maxHeight = getMaxHeight(currentRow);
                maxCalcHeight = Math.max(maxCalcHeight, resizeElements(currentRow, maxHeight, options));
                currentRow = curItem;
                firstOffset = curItem.offset().top;
            }
        });
        if(currentRow.length) {
            maxHeight = getMaxHeight(currentRow);
            maxCalcHeight = Math.max(maxCalcHeight, resizeElements(currentRow, maxHeight, options));
        }
        if(options.biggestHeight) {
            boxes.css(options.useMinHeight && supportMinHeight ? 'minHeight' : 'height', maxCalcHeight);
        }
    }

    // calculate max element height
    function getMaxHeight(boxes) {
        var maxHeight = 0;
        boxes.each(function(){
            maxHeight = Math.max(maxHeight, $(this).outerHeight());
        });
        return maxHeight;
    }

    // resize helper function
    function resizeElements(boxes, parent, options) {
        var calcHeight;
        var parentHeight = typeof parent === 'number' ? parent : parent.height();
        boxes.removeClass(options.leftEdgeClass).removeClass(options.rightEdgeClass).each(function(i){
            var element = $(this);
            var depthDiffHeight = 0;
            var isBorderBox = element.css('boxSizing') === 'border-box' || element.css('-moz-box-sizing') === 'border-box' || element.css('-webkit-box-sizing') === 'border-box';

            if(typeof parent !== 'number') {
                element.parents().each(function(){
                    var tmpParent = $(this);
                    if(parent.is(this)) {
                        return false;
                    } else {
                        depthDiffHeight += tmpParent.outerHeight() - tmpParent.height();
                    }
                });
            }
            calcHeight = parentHeight - depthDiffHeight;
            calcHeight -= isBorderBox ? 0 : element.outerHeight() - element.height();

            if(calcHeight > 0) {
                element.css(options.useMinHeight && supportMinHeight ? 'minHeight' : 'height', calcHeight);
            }
        });
        boxes.filter(':first').addClass(options.leftEdgeClass);
        boxes.filter(':last').addClass(options.rightEdgeClass);
        return calcHeight;
    }
}(jQuery));
