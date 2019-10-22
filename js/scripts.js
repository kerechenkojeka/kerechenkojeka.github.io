/**
 * Основные скрипты сайта. Не имеет зависимостей (возможна подгрузка файла с аттрибутом async или defer)
 */

var _nClosables = []; // масив объектов с информацией о скрываемых элементах при клике вне их области
var _nTouchDelta = 0;
var _nPrevTouchDelta = 0;
var _nMenuContent;
var _nMenuOverlay;
var _nCssProperties = {
    'transform': ['transform', 'msTransform', 'MozTransform', 'WebkitTransform', 'OTransform'],
    'transition': ['transition', 'msTransition', 'MozTransition', 'WebkitTransition', 'OTransition']
};

// инициализация
init();

/**
 * Инициализатор js-функционала
 *
 * @return {undefined}
 */
function init() {
    if (!window.engine) { window.engine = {}; }
    // вызов основных методов
    var functions = [
        _nCookieReset,          // удаление cookie при загрузке страницы
        _nStickyHeader,         // меняет положение шапки сайта при прокрутке
        _nMobileMenu,           // поведение мобильного меню
        _nMiniProfile,          // поведение мини-профиля
        _nTabs,                 // переключатели блоков под шапкой сайта (РЕКОМЕНДУЕМ:)
        _nAccordion,            // accordion-поведение (классы у кнопки js_accordion-trigger js_accordion-trigger_модификатор, у контейнера js_accordion-container js_accordion-container_модификатор)
        _nPopups,               // желательно держать внизу, т.к. в скриптах выше могут добавляться Popup'ы, как в _nAnotherQuality
    ];
    for (var i = 0; i < functions.length; i++) {
        try {
            functions[i]();
        } catch (exception) {
            console.dir(exception);
        }
    }
    document.onclick = _nDocumentClickFn;
    // инициализация поведения, делегированная другими скриптами,
    // например, chat.js просит прятать .chat__settings-block при клике вне блока или кнопки открытия
    // запись в _nDelegatedInit осуществляется если chat.js был загружен ранее scripts.js
    if ('_nDelegatedInit' in window) {
        for (var func in _nDelegatedInit) {
            if (!_nDelegatedInit.hasOwnProperty(func)) {
                continue;
            }
            if (_nDelegatedInit[func] && _nDelegatedInit[func].length) {
                for (var l = 0; l < _nDelegatedInit[func].length; l++) {
                    window[func].apply(this, _nDelegatedInit[func][l]);
                }
            }
        }
    }
}

/**
 * Прикрепляет шапку к верху страницы
 *
 * @return {undefined}
 */
function _nStickyHeader() {
    var scrolled = 0;
    var moderPanel = document.querySelector('#puzadpn');
    var pageWrapper = document.querySelector('.page-wrapper');
    var header = document.querySelector('.header');
    var menu = document.querySelector('.header__menu');
    var wrapper = document.querySelector('.header__bar-wrapper');
    var button = document.querySelector('.scroll-top'); // действие по клику в scripts.jquery.js
    var menuHeight = 46; // фиксированное значение, мерить menu.offsetHeight нет смысла т.к. оно при прокрутке становится вертикальным
    var offset = menuHeight;
    if (moderPanel) {
        offset -= moderPanel.clientHeight;
    }
    var now = Date.now();
    var sticky = false;
    if (!header || !menu || !wrapper) {
        return;
    }
    window.addEventListener('scroll', handle);

    function handle() {
        if (Date.now() - now >= 1000) // пересчёт позиции относительно документа не при каждом событии прокрутки, а при прокрутке и не чаще 1 раза в секунду
        {
            offset = _nCoordinates(pageWrapper).top + menuHeight;
            if (moderPanel) {
                offset -= moderPanel.clientHeight;
            }
            now = Date.now();
        }
        scrolled = window.pageYOffset || (document.documentElement && document.documentElement.scrollTop);
        if (!sticky && scrolled >= offset) {
            header.classList.add('sticky-background');
            wrapper.classList.add('sticky');
            menu.parentNode.classList.add('dropdown');
            if (button) {
                button.classList.add('visible');
            }
            sticky = true;
        } else if (sticky && scrolled < offset) {
            header.classList.remove('sticky-background');
            wrapper.classList.remove('sticky');
            menu.parentNode.classList.remove('dropdown');
            if (button) {
                button.classList.remove('visible');
            }
            sticky = false;
        }
    }
}

/**
 * Открытие и закрытие модальных окон
 *
 * @return {undefined}
 */
function _nPopups() {
    var popups = document.querySelectorAll('.popup');
    if (!popups || popups && !popups.length) {
        return;
    }
    // клик по окну вне области контента и контроль прокрутки
    for (var i = 0; i < popups.length; i++) {
        _nPopupBehavior(popups[i]);
    }
    // кнопки открытия окон
    var buttons = document.querySelectorAll('.popup-open');
    if (!buttons || buttons && !buttons.length) {
        return;
    }
    for (i = 0; i < buttons.length; i++) {
        _nPopupBindOpen(buttons[i]);
    }
}

/**
 * Задает обработчик открытия popup-окна по клику на кнопку button
 *
 * @param {HTMLElement} button - dom-объект
 * @param {Function} callback
 * @return {undefined}
 */
function _nPopupBindOpen(button, callback) {
    var popup;
    var match = button.className.match(/popup[-]open_([\w\d-]+)/);
    if (match && match.length) {
        popup = document.querySelector('.popup_' + match[1]);
    }
    button.addEventListener('click', function(event) {
        event = event || window.event;
        event.preventDefault();
        if (popup) {
            popup.classList.add('visible');
            if (typeof callback !== 'function') {
                return;
            }
            callback();
        }
    });
}

/**
 * Активирует функционал закрытия и прокрутки popup окна
 *
 * @param {HTMLElement} popup - popup-окно
 * @return {undefined}
 */
function _nPopupBehavior(popup) {
    _nControlScroll(popup);
    popup.addEventListener('click', function(e) {
        var event = e || window.event;
        var target = event.target || event.srcElement;
        if (target.classList.contains('popup')) { // клик вне области контента, а по темному фону
            this.classList.remove('visible');
        }
    });
    var close = popup.querySelector('.popup__close');
    if (close) {
        close.addEventListener('click', function() {
            if (popup.classList.contains('popup')) {
                popup.classList.remove('visible');
            }
        });
    }
}

/**
 * Функционал бокового меню на смартфонах и планшетах
 *
 * @return {undefined}
 */
function _nMobileMenu() {
    var menu = document.querySelector('.nav-drawer');
    _nMenuOverlay = document.querySelector('.nav-overlay');
    _nMenuContent = document.querySelector('.nav-drawer__content');
    var button = document.querySelector('.header-bar__menu-button');
    if (!menu || !_nMenuOverlay || !_nMenuContent || !button) {
        return;
    }
    // запрещаем прокрутку перекрывающего элемента
    _nDenyScroll(_nMenuOverlay);
    // контролируем прокрутку содержимого
    _nControlScroll(_nMenuContent);
    var startX, startY, menuWidth = menu.offsetWidth;
    var opened = false;
    var swipeArea = 96;
    var moveTime;

    button.addEventListener('click', open);
    _nMenuOverlay.addEventListener('click', function (e) {
        var event = e || window.event;
        var path = _nGetEventPath(event);
        for (var i = 0; i < path.length; i++) {
            if (path[i] === menu) {
                return;
            }
        }
        close();
    });

    window.addEventListener('touchstart', function (e) {
        var event = e || window.event;
        startX = event.touches[0].clientX;
        startY = event.touches[0].clientY;
        moveTime = (new Date()).getTime();
    });

    window.addEventListener('touchmove', function (e) {
        var event = e || window.event;
        var path = _nGetEventPath(event);
        for (var i = 0; i < path.length; i++) {
            if (path[i].className && path[i].className.indexOf('owl-carousel') !== -1) {
                return;
            }
        }
        // если меню закрыто, и мы выполняем жест открытия вне прослушиваемой области
        if (!opened && startX > swipeArea) {
            return;
        }
        // если делаем свайп влево и меню открыто, но палец движется вверх более, чем на 50px, то завешаем event
        if (Math.abs(event.changedTouches[0].clientY - startY) > 50 && opened) {
            return;
        }
        var diff = event.changedTouches[0].clientX - startX;
        var moveSpeed = Math.abs(((new Date()).getTime() - moveTime) / diff);
        if (moveSpeed > 5) {
            return;
        }
        if (opened) {
            diff > -menuWidth / 3 ? open() : close();
        } else {
            diff > menuWidth / 3 ? open() : close();
        }
        event.preventDefault();
    });

    /**
     * Открывает меню
     *
     * @return {Boolean}
     */
    function open() {
        menu.classList.add('visible');
        _nMenuOverlay.classList.add('visible');
        opened = true;

        return false;
    }

    /**
     * Закрывает меню
     *
     * @return {Boolean}
     */
    function close() {
        menu.classList.remove('visible');
        _nMenuOverlay.classList.remove('visible');
        opened = false;

        return false;
    }
}

/**
 * Выпадающее меню мини-профиля
 *
 * @return {undefined}
 */
function _nMiniProfile() {
    var buttons = document.querySelectorAll('.header-bar__profile-name');
    var menus = document.querySelectorAll('.header-bar__profile-menu');
    if (!buttons || !menus || buttons && !buttons.length || menus && !menus.length) {
        return;
    }
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener('click', function() {
            var menu = this.nextElementSibling;
            if (!menu) {
                return;
            }
            if (this.classList.contains('opened')) {
                this.classList.remove('opened');
                menu.classList.remove('visible');
            } else {
                this.classList.add('opened');
                menu.classList.add('visible');
            }
            _nRegisterAsCloseable(menu, this, 'visible', 'opened');
        });
    }
}

/**
 * Табулятор под шапкой
 * Для первого контейнера с материалами поддерживается аттрибут data-cookie-mode, служащий уникальным ключом,
 * благодаря которому можно запоминать последнюю открытую вкладку в разных разделах сайта
 *
 * @return {undefined}
 */
function _nTabs() {
    var wrappers = document.querySelectorAll('.tabs');
    if (!wrappers || wrappers && !wrappers.length) {
        return;
    }
    for (var t = 0; t < wrappers.length; t++) {
        (function(wrapper) {
            var buttons = wrapper.querySelectorAll('.tab-switch');
            var blocks = wrapper.querySelectorAll('.tab-content');
            if (!buttons || buttons && !buttons.length) {
                console.error('_nTabs: missing switchers');
                return;
            }
            if (!blocks || blocks && !blocks.length) {
                console.error('_nTabs: missing containers');
                return;
            }
            var cookieMode = mode(wrapper);
            if (cookieMode && Cookies.get(cookieMode)) {
                var selected = parseInt(Cookies.get(cookieMode));
                if (selected > buttons.length - 1 || selected < 0) {
                    selected = 0;
                }
                if (selected > 0) {
                    buttons[0].classList.remove('active');
                    blocks[0].classList.remove('visible');
                    buttons[selected].classList.add('active');
                    if (blocks[selected]) {
                        blocks[selected].classList.add('visible');
                    }
                }
            }
            for (var i = 0; i < buttons.length; i++) {
                buttons[i].addEventListener('click', function() {
                    if (this.classList.contains('active')) {
                        return;
                    }
                    var index = 0;
                    for (var j = 0; j < buttons.length; j++) {
                        if (this == buttons[j]) {
                            index = parseInt(j);
                        }
                        buttons[j].classList.remove('active');
                    }
                    for (var j = 0; j < blocks.length; j++) {
                        blocks[j].classList.remove('visible');
                    }
                    buttons[index].classList.add('active');
                    if (blocks.length > index) {
                        blocks[index].classList.add('visible');
                    }
                    if (cookieMode) {
                        Cookies.set(cookieMode, index, {path: '/', expires: 2592000});
                    }
                });
            }
        })(wrappers[t]);
    }

    /**
     * Получает строковый идентификатор режима вкладок, который используется для запоминания активной вкладки
     *
     * @param {HTMLElement} wrapper - обертка табулятора (блок с классом tabs)
     * @return {String}
     */
    function mode(wrapper) {
        if (wrapper.hasAttribute('data-cookie')) {
            return '_nTab_' + wrapper.getAttribute('data-cookie');
        }

        return null;
    }

}

/**
 * Accordion-поведение
 *
 * @return {undefined}
 */
function _nAccordion() {
    var triggers = document.querySelectorAll('.js_accordion-trigger');
    if (!triggers || triggers && !triggers.length) {
        return;
    }
    for (var i = 0; i < triggers.length; i++) {
        behavior(triggers[i]);
    }

    /**
     * Активирует accordion-поведение
     *
     * @param {HTMLElement} trigger - активатор
     * @return {undefined}
     */
    function behavior(trigger) {
        if (!trigger) {
            return;
        }
        var match = trigger.className.match(/js_accordion[-]trigger_([\w\d\_-]+)/i);
        var container;
        var ready = true;
        var property = _nGetVendorPrefix('transition');
        if (!match || match && match.length < 2) {
            return;
        } else {
            container = document.querySelector('.js_accordion-container_' + match[1]);
        }
        trigger.addEventListener('click', function(event) {
            event = event || window.event;
            event.preventDefault();
            if (!container || !ready) {
                return;
            }
            ready = false;
            // если не поддерживается transition, то просто переключаем класс
            if (!property) {
                container.classList.toggle('expanded');
                ready = true;
            } else {
                if (container.classList.contains('expanded')) {
                    container.setAttribute('style', 'height: ' + height(container.children[0]) + 'px;');
                    container.classList.remove('expanded');
                    setTimeout(function() {
                        container.setAttribute('style', 'height: 0;');
                    }, 50);
                    setTimeout(function() {
                        container.removeAttribute('style');
                        ready = true;
                    }, 350);
                } else {
                    container.setAttribute('style', 'height: 0;');
                    container.classList.add('expanded');
                    setTimeout(function() {
                        container.setAttribute('style', 'height: ' + height(container.children[0]) + 'px;');
                        ready = true;
                    }, 50);
                    setTimeout(function() {
                        container.removeAttribute('style');
                        ready = true;
                    }, 350);
                }
            }
        });
    }

    /**
     * Высчитывает высоту с учетом обводки
     *
     * @param {HTMLElement} element - элемент страницы
     * @return {Object}
     */
    function height(element) {
        var height = element.clientHeight;
        height += parseInt(_nComputedStyle(element, 'border-top-width'));
        height += parseInt(_nComputedStyle(element, 'border-bottom-width'));

        return height;
    }
}

/**
 * Учитывает скрытие элементов при клике вне их области
 *
 * @param {HTMLElement} targetElem - скрываемый элемент
 * @param {HTMLElement} triggerElem - элемент, при клике на который не скрывать элемент
 * @param {String} elementRemoveClass - класс, который необходимо удалить для скрытия элемента
 * @param {String} triggerRemoveClass - класс, который необходимо удалить для triggerElem
 * @return {undefined}
 */
function _nRegisterAsCloseable(targetElem, triggerElem, elementRemoveClass, triggerRemoveClass) {
    _nClosables.push({
        element: targetElem,
        trigger: triggerElem,
        elementClass: elementRemoveClass,
        triggerClass: triggerRemoveClass,
        found: false // флаг, указывающий после перебора, что элемент был найден/не найден в цепочке
    });
}

/**
 * Начинает контролировать прокрутку элемента: прокручивает прокручиваемую область и запрещает прокрутку окна
 *
 * @param {HTMLElement} element - непрокручиваемый элемент
 * @return {undefined}
 */
function _nControlScroll(element) {
    if ('onwheel' in document) {
        element.addEventListener('wheel', _nElementScroll);
    } else if ('MozMousePixelScroll' in document) {
        element.addEventListener('MozMousePixelScroll', _nElementScroll);
    } else {
        element.addEventListener('mousewheel', _nElementScroll);
    }
    element.addEventListener('touchstart', _nElementScroll);
    element.addEventListener('touchmove', _nElementScroll);
}

/**
 * Запрещает всякую прокрутку
 *
 * @param {HTMLElement} element - непрокручиваемый элемент
 * @return {undefined}
 */
function _nDenyScroll(element) {
    if ('onwheel' in document) {
        element.addEventListener('wheel', _nPreventScroll);
    } else if ('MozMousePixelScroll' in document) {
        element.addEventListener('MozMousePixelScroll', _nPreventScroll);
    } else {
        element.addEventListener('mousewheel', _nPreventScroll);
    }
    element.addEventListener('touchmove', _nPreventScroll);
}

/**
 * Контролирует прокрутку элемента и запрещает прокрутку окна
 *
 * @param {Object} event - событие
 * @return {undefined}
 */
function _nElementScroll(event) {
    // не контролируем прокрутку бокового меню, когда оно полностью видимо
    if (this == _nMenuContent && window.outerWidth >= 1024) {
        return;
    }
    event = event || window.event;
    _nTouchDelta = 0;
    if (event.type == 'touchstart')
    {
        if (event.touches) {
            _nPrevTouchDelta = event.touches[0].clientY;
        } else if (event.originalEvent && event.originalEvent.touches) {
            _nPrevTouchDelta = event.originalEvent.touches[0].clientY;
        }
    }
    if (event.touches) {
        _nTouchDelta = event.touches[0].clientY - _nPrevTouchDelta;
    } else if (event.originalEvent && event.originalEvent.touches) {
        _nTouchDelta = event.originalEvent.touches[0].clientY - _nPrevTouchDelta;
    }
    var delta = event.wheelDelta || (event.originalEvent && event.originalEvent.wheelDelta) || -event.detail || _nTouchDelta;
    var bottomOverflow = this.scrollTop + this.offsetHeight - this.scrollHeight >= 0;
    var topOverflow = this.scrollTop <= 0;
    if (((delta < 0 && bottomOverflow) || (delta > 0 && topOverflow)) && event.type != 'touchstart') {
        event.preventDefault();
    }
    if (event.originalEvent && event.originalEvent.changedTouches) {
        _nPrevTouchDelta = event.originalEvent.changedTouches[0].clientY;
    }
    if (event.changedTouches) {
        _nPrevTouchDelta = event.changedTouches[0].clientY;
    }
}

/**
 * Предотвращает прокрутку элемента  и окна
 *
 * @param {Object} event - событие
 * @return {undefined}
 */
function _nPreventScroll(event) {
    event = event || window.event;
    if (this == _nMenuOverlay && window.outerWidth >= 1024) {
        return;
    }
    event.preventDefault();
}

/**
 * Обработка событий при клике в любой области документа
 *
 * @param {Object} e - событие при клике
 * @return {undefined}
 */
function _nDocumentClickFn(e) {
    var event = e || window.event;
    var path = _nGetEventPath(event);
    // поиск элементов из списка закрываемых при клике вне их области
    for (var j = 0; j < _nClosables.length; j++) {
        _nClosables[j].found = false;
        for (var i = 0; i < path.length; i++) {
            if (_nClosables[j].trigger && _nClosables[j].trigger == path[i] || path[i].className && path[i].className == _nClosables[j].element.className) {
                _nClosables[j].found = true;

                continue;
            }
        }
    }
    // скрытие элементов при клике вне их области
    for (j = 0; j < _nClosables.length; j++) {
        if (_nClosables[j].found) {
            continue;
        }
        _nClosables[j].element.classList.remove(_nClosables[j].elementClass);
        if (_nClosables[j].trigger) {
            _nClosables[j].trigger.classList.remove(_nClosables[j].triggerClass);
        }
    }
}

/**
 * Получает из события цепочку элементов
 *
 * @param {Object} event - событие при клике
 * @return {undefined}
 */
function _nGetEventPath(event) {
    var target = event.target || event.srcElement;

    return event.path || (event.composedPath && event.composedPath()) || _nComposedPath(target);
}

/**
 * Получает из события цепочку элементов (для браузеров, не поддерживающих данную возможность по умолчанию)
 *
 * @param {HTMLElement} element - событие при клике
 * @return {Array}
 */
function _nComposedPath(element) {
    var path = [];
    while (element) {
        path.push(element);
        if (element.tagName === 'HTML') {
            path.push(document);
            path.push(window);

            return path;
        }
        element = element.parentElement;
    }
}

/**
 * Возвращает координаты элемента относительно всего документа
 *
 * @param {HTMLElement} elem - элемент, координаты которого нужно получить относительно документа
 * @return {Object}
 */
function _nCoordinates(elem) {
    var box = elem.getBoundingClientRect();
    var body = document.body;
    var docEl = document.documentElement;
    var scrollTop = window.pageYOffset || docEl.scrollTop || body.scrollTop;
    var scrollLeft = window.pageXOffset || docEl.scrollLeft || body.scrollLeft;
    var clientTop = docEl.clientTop || body.clientTop || 0;
    var clientLeft = docEl.clientLeft || body.clientLeft || 0;
    var top = box.top + scrollTop - clientTop;
    var left = box.left + scrollLeft - clientLeft;

    return {
        top: top,
        left: left
    };
}

/**
 * Выбирает из массива поддерживаемое css свойство
 * http://www.developerdrive.com/2012/03/coding-vendor-prefixes-with-javascript/
 *
 * @param {String} property - css-свойство
 * @return {String}
 */
function _nGetVendorPrefix(property) {
    if (!property || property && !_nCssProperties[property]) {
        return null;
    }
    var properties = _nCssProperties[property];
    var tmp = document.createElement('div');
    var result = null;
    for (var i = 0; i < properties.length; ++i) {
        if (typeof tmp.style[properties[i]] !== 'undefined') {
            return properties[i];
        }
    }

    return result;
}

/**
 * Получает вычисленное значение css-свойства
 *
 * @param {HTMLElement} element - dom-элемент
 * @param {String} property - css-свойство
 * @return {Boolean}
 */
function _nComputedStyle(element, property) {
    if (typeof getComputedStyle !== 'undefined') {
        return getComputedStyle(element, null).getPropertyValue(property);
    } else {
        return element.currentStyle[property];
    }
}

/**
 * Возвращает ширину scrollbar'а в пикселях
 *
 * @return {Number}
 */
function _nScrollbarWidth() {
    
}

/**
 * Удаляет cookie сторонних скриптов при загрузке страницы
 *
 * @return {undefined}
 */
function _nCookieReset() {
    // удаление cookie скрипта bookmarks.js
    if (!window.engine.USER_ID)
    {
        Cookies.expire('bookmarks_hash');
        Cookies.expire('bookmarks_ids');
    }
}