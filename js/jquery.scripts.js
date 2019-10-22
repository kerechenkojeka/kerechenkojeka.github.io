if (!window.engine) {
    window.engine = {};
}
jQuery(function() {
    $window = $(window);
    _nDropdownMenu();
    _nMenuAccordeon();
    _nCarousel();
    _nScrollTo();
    _nScrollTop();

    /**
     * Выпадающее меню при наведении на логотип
     *
     * @return {undefined}
     */
    function _nDropdownMenu() {
        var $menu = $('.header__nav');
        var $logo = $('.header-bar__logo');
        if (!$menu || !$logo) {
            return;
        }
        var hoverIn = function() {
            $menu.addClass('visible');
        };
        var hoverOut = function() {
            $menu.removeClass('visible');
        };
        $logo.hover(hoverIn, hoverOut);
        $menu.hover(hoverIn, hoverOut);
    }

    /**
     * Аккордеон-меню в блоке "Каталог"
     *
     * @return {undefined}
     */
    function _nMenuAccordeon() {
        var categories = $('.block_categories .block__menu');
        var buttons = $('.block_categories .block__menu-expand');
        var selected = Cookies.get('_nAccordeonOpened');
        if (!categories) {
            return;
        }
        if (selected) {
            categories.children().each(function() {
                var li = $(this);
                var link = li.children('a');
                var id = link.attr('id');
                if (id == selected) {
                    li.addClass('opened');
                    link.addClass('opened');
                    var subMenu = li.children('ul');
                    if (subMenu && subMenu.length) {
                        subMenu.show();
                    }

                    return false;
                }
            });
        }
        categories.on('click', '.block__menu-expand', function() {
            var button = $(this);
            if (button.prev().hasClass('opened')) {
                close(button);
                Cookies.expire('_nAccordeonOpened');
            } else {
                buttons.each(function(i, element) {
                    element = $(element);
                    if (element.prev().attr('id') === button.prev().attr('id')) {
                        return;
                    }
                    if (element.next('ul').is(':visible')) {
                        close(element);
                    }
                });
                open(button);
                Cookies.set('_nAccordeonOpened', button.prev().attr('id'), { path: '/', expires: 2592000 });
            }
        });

        function close(element) {
            element.prev().removeClass('opened').parent().removeClass('opened');
            element.next('ul').show().stop().slideToggle(300);
        }

        function open(element) {
            element.prev().addClass('opened').parent().addClass('opened');
            element.next('ul').hide().stop().slideToggle(300);
        }

    }

    /**
     * Инициализирует плагин "карусели"
     *
     * @return {undefined}
     */
    function _nCarousel() {
        // добавляем jQuery.fn.addBack если не поддерживается
        if (!jQuery.fn.addBack) {
            jQuery.fn.addBack = jQuery.fn.andSelf;
        }
        $('.recommend__items').addClass('owl-carousel').owlCarousel({
            responsive: {
                0: {
                    items: 2,
                    loop: true
                },
                480: {
                    items: 3,
                    loop: true
                },
                640: {
                    items: 4,
                    loop: true
                },
                768: {
                    items: 5,
                    loop: true
                },
                960: {
                    items: 6,
                    loop: true
                },
                1024: {
                    items: 7,
                    loop: true,
                    mouseDrag: false
                },
                1260: {
                    items: 8,
                    loop: false,
                    mouseDrag: false
                }
            },
			loop:true,
			rewind:true,
            nav: true,
			navText: ['', ''],
			dots:false,
			autoplay:true,
            margin: 26
        });
        var $owlTopGames = $('.top-game__carousel').addClass('owl-carousel').owlCarousel({
            autoHeight: true,
            items: 1,
            loop: true,
            mouseDrag: false,
            nav: true,
            navText: ['', '']
        });
        $('.top-games__nav .owl-prev').click(function () {
            $owlTopGames.trigger('prev.owl.carousel');
        });
        $('.top-games__nav .owl-next').click(function () {
            $owlTopGames.trigger('next.owl.carousel');
        });
        $('.related > div, .related > ul').addClass('owl-carousel').owlCarousel({
            loop:true,
			rewind:true,
            nav: true,
			navText: ['', ''],
			dots:false,
			autoplay:true,
			responsive: {
                0: {
                    items: 2,
                    loop: true
                },
                480: {
                    items: 3,
                    loop: true
                },
                640: {
                    items: 4,
                    loop: true
                },
                768: {
                    items: 5,
                    loop: false
                },
                1024: {
                    items: 4,
                    loop: true,
                    mouseDrag: true
                },
                1260: {
                    items: 5,
                    loop: false,
                    mouseDrag: false
                }
            },
            margin: 20
        });
    }

    /**
     * Выполняет плавную прокрутку к блоку по ссылке-якорю
     *
     * @return {undefined}
     */
    function _nScrollTo() {
        var links = $('a[href^="#"]');
        if (!links || links && !links.length) {
            return;
        }
        var header = $('.header__bar-wrapper');
        var moderpanel = $('#puzadpn');
        var root = $('html, body');
        header = header && header.length ? header : null;
        moderpanel = moderpanel && moderpanel.length ? moderpanel : null;
        links.each(function() {
            var self = $(this);
            var block = $(self.attr('href'));
            if (!block || block && !block.length) {
                return;
            }
            self.click(function(event) {
                event = event || window.event;
                event.preventDefault();
                root.stop().animate({
                    scrollTop: block.offset().top - (header ? header.outerHeight() : 0) - (moderpanel ? moderpanel.outerHeight() : 0) - 10
                }, 350);
            });
        });
    }

    /**
     * Выполняет прокрутку к верху страницы по клику на кнопку
     *
     * @return {undefined}
     */
    function _nScrollTop() {
        var button = $('.scroll-top');
        if (!button || button && !button.length) {
            return;
        }
        button.click(function() {
            $('html, body').animate({ scrollTop: 0 }, 500);
        });
    }

});

/*
     * Cookies.js - 1.2.3
     * https://github.com/ScottHamper/Cookies
     *
     * This is free and unencumbered software released into the public domain.
     */
    (function (global, undefined) {
        'use strict';

        var factory = function (window) {
            if (typeof window.document !== 'object') {
                throw new Error('Cookies.js requires a `window` with a `document` object');
            }

            var Cookies = function (key, value, options) {
                return arguments.length === 1 ?
                    Cookies.get(key) : Cookies.set(key, value, options);
            };

            // Allows for setter injection in unit tests
            Cookies._document = window.document;

            // Used to ensure cookie keys do not collide with
            // built-in `Object` properties
            Cookies._cacheKeyPrefix = 'cookey.'; // Hurr hurr, :)

            Cookies._maxExpireDate = new Date('Fri, 31 Dec 9999 23:59:59 UTC');

            Cookies.defaults = {
                path: '/',
                secure: false
            };

            Cookies.get = function (key) {
                if (Cookies._cachedDocumentCookie !== Cookies._document.cookie) {
                    Cookies._renewCache();
                }

                var value = Cookies._cache[Cookies._cacheKeyPrefix + key];

                return value === undefined ? undefined : decodeURIComponent(value);
            };

            Cookies.set = function (key, value, options) {
                options = Cookies._getExtendedOptions(options);
                options.expires = Cookies._getExpiresDate(value === undefined ? -1 : options.expires);

                Cookies._document.cookie = Cookies._generateCookieString(key, value, options);

                return Cookies;
            };

            Cookies.expire = function (key, options) {
                return Cookies.set(key, undefined, options);
            };

            Cookies._getExtendedOptions = function (options) {
                return {
                    path: options && options.path || Cookies.defaults.path,
                    domain: options && options.domain || Cookies.defaults.domain,
                    expires: options && options.expires || Cookies.defaults.expires,
                    secure: options && options.secure !== undefined ?  options.secure : Cookies.defaults.secure
                };
            };

            Cookies._isValidDate = function (date) {
                return Object.prototype.toString.call(date) === '[object Date]' && !isNaN(date.getTime());
            };

            Cookies._getExpiresDate = function (expires, now) {
                now = now || new Date();

                if (typeof expires === 'number') {
                    expires = expires === Infinity ?
                        Cookies._maxExpireDate : new Date(now.getTime() + expires * 1000);
                } else if (typeof expires === 'string') {
                    expires = new Date(expires);
                }

                if (expires && !Cookies._isValidDate(expires)) {
                    throw new Error('`expires` parameter cannot be converted to a valid Date instance');
                }

                return expires;
            };

            Cookies._generateCookieString = function (key, value, options) {
                key = key.replace(/[^#$&+\^`|]/g, encodeURIComponent);
                key = key.replace(/\(/g, '%28').replace(/\)/g, '%29');
                value = (value + '').replace(/[^!#$&-+\--:<-\[\]-~]/g, encodeURIComponent);
                options = options || {};

                var cookieString = key + '=' + value;
                cookieString += options.path ? ';path=' + options.path : '';
                cookieString += options.domain ? ';domain=' + options.domain : '';
                cookieString += options.expires ? ';expires=' + options.expires.toUTCString() : '';
                cookieString += options.secure ? ';secure' : '';

                return cookieString;
            };

            Cookies._getCacheFromString = function (documentCookie) {
                var cookieCache = {};
                var cookiesArray = documentCookie ? documentCookie.split('; ') : [];

                for (var i = 0; i < cookiesArray.length; i++) {
                    var cookieKvp = Cookies._getKeyValuePairFromCookieString(cookiesArray[i]);

                    if (cookieCache[Cookies._cacheKeyPrefix + cookieKvp.key] === undefined) {
                        cookieCache[Cookies._cacheKeyPrefix + cookieKvp.key] = cookieKvp.value;
                    }
                }

                return cookieCache;
            };

            Cookies._getKeyValuePairFromCookieString = function (cookieString) {
                // "=" is a valid character in a cookie value according to RFC6265, so cannot `split('=')`
                var separatorIndex = cookieString.indexOf('=');

                // IE omits the "=" when the cookie value is an empty string
                separatorIndex = separatorIndex < 0 ? cookieString.length : separatorIndex;

                var key = cookieString.substr(0, separatorIndex);
                var decodedKey;
                try {
                    decodedKey = decodeURIComponent(key);
                } catch (e) {
                    if (console && typeof console.error === 'function') {
                        console.error('Could not decode cookie with key "' + key + '"', e);
                    }
                }

                return {
                    key: decodedKey,
                    value: cookieString.substr(separatorIndex + 1) // Defer decoding value until accessed
                };
            };

            Cookies._renewCache = function () {
                Cookies._cache = Cookies._getCacheFromString(Cookies._document.cookie);
                Cookies._cachedDocumentCookie = Cookies._document.cookie;
            };

            Cookies._areEnabled = function () {
                var testKey = 'cookies.js';
                var areEnabled = Cookies.set(testKey, 1).get(testKey) === '1';
                Cookies.expire(testKey);
                return areEnabled;
            };

            Cookies.enabled = Cookies._areEnabled();

            return Cookies;
        };
        var cookiesExport = (global && typeof global.document === 'object') ? factory(global) : factory;

        // AMD support
        if (typeof define === 'function' && define.amd) {
            define(function () { return cookiesExport; });
            // CommonJS/Node.js support
        } else if (typeof exports === 'object') {
            // Support Node.js specific `module.exports` (which can be a function)
            if (typeof module === 'object' && typeof module.exports === 'object') {
                exports = module.exports = cookiesExport;
            }
            // But always support CommonJS module 1.1.1 spec (`exports` cannot be a function)
            exports.Cookies = cookiesExport;
        } else {
            global.Cookies = cookiesExport;
        }
    })(typeof window === 'undefined' ? this : window);
	
$(document).ready(function(){
	
	 	$('body').on('click','#nav-load a',function(){
		var urlNext = $(this).attr('href');
		var scrollNext = $(this).offset().top - 200;
        if (urlNext !== undefined) {
			$.ajax({
				url: urlNext,
				beforeSend: function() {
					ShowLoading('');
				},			 
                success: function(data) {
                    $('#bottom-nav').remove();
                    $('#dle-content').append($('#dle-content', data).html());
                    $('#dle-content').after($('#bottom-nav'));
					window.history.pushState("", "", urlNext);
					$('html, body').animate({scrollTop:scrollNext}, 800);	
					HideLoading('');
                },
				  error: function() {				
					HideLoading('');
					alert('что-то пошло не так');
				  }
			});
		};
		return false;
	});
	
});
$("body").addClass("js");
$('.tabs-box').each(function(){
	$(this).find('.tabs-sel span:first').addClass('current');
	$(this).find('.tabs-b:first').addClass('visible');
});
$('.tabs-sel').delegate('span:not(.current)', 'click', function() {
	$(this).addClass('current').siblings().removeClass('current')
    .parents('.tabs-box').find('.tabs-b').hide().eq($(this).index()).fadeIn(400);
});
$('body').on('click','.trailer-btn',function(){
	metaT = $('#trailer-box').attr('title');
	$('body').append('<div id="trailer-popup" class="video-box" title="'+metaT+'"></div>');
	$("#trailer-popup").append($('#trailer-box').html()).dialog({
		modal: true,
		show: 'fade',
		hide: 'fade',
		width: 800,
		close: function( event, ui ) {$(this).dialog('destroy').remove()}
	});	
	return false;
});