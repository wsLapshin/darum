(function (factory) {
    'use strict';
    if (typeof define === 'function' && define.amd) {
        // AMD
        define(['jquery'], factory);
    } else if (typeof exports !== 'undefined') {
        // CommonJS
        module.exports = factory(require('jquery'));
    } else {
        // Global
        factory(jQuery);
    }
}(function ($) {
    'use strict';

    //global scope
    var $scrollContainer = $('.page'),
            scrollContainer = $scrollContainer.get(0),
            $viewport = $('.page__viewport'),
            viewport = $viewport.get(0),
            $slideNav = $('.slide__nav'),
            slideNav = $slideNav.get(0),
            scrollMenu = true,
            startViewportTop = 0,
            $slides = $('.page__slide'),
            $background = $('.page__opacity'),
            opacityStart = 1,
            opacityEnd = 0.3,
            containerHeight,
            minHeight,
            breakPoints,
            currentIndex = 0,
            namespace = 'DarumPager',
            $win = $(window),
            resizeID;

    var DarumPager = function () {
        /**private properties*/
        var self = this,
                position; //private position mehtod

        /**public properties*/
        self.initialized = false;

        /**public method init*/
        function init()
        {
            if (self.initialized) {
                return;
            }

            $scrollContainer.removeClass('page_fixed');
            
            var viewportPos = position(viewport, window);
            startViewportTop = viewportPos.top;
            $viewport.css('top', startViewportTop);

            var navHeight = $slideNav.height(); 
            
            $scrollContainer.addClass('page_fixed');
            
            containerHeight = 0;
            minHeight = $(window).outerHeight(true);
            breakPoints = [];

            breakPoints.push(0);

            var slidesLength = $slides.length,
                    zi = slidesLength;
            $($slides.get(0)).addClass('page__slide_top');
            $slides.each(function (index) {
                $(this).css('minHeight', minHeight);
                var slideHeight = $(this).outerHeight(true);

                containerHeight += slideHeight;
                breakPoints.push(containerHeight);
                
                $(this).css('paddingTop', navHeight);
                $(this).css('z-index', zi);
                zi--;
            });

            //background init
            if (slidesLength > 1) {
                $background.css('z-index', 2);
                $background.css('opacity', opacityStart);
            } else {
                $background.css('display', 'none');
            }

            //console.log(breakPoints);

            $scrollContainer.height(containerHeight);

            // Bind all events
            $win.off('resize');
            $win.off('scroll');
            
            $win.on('resize', resizeHandler);
            $win.on('scroll', scrollHandler);
            self.initialized = true;

            // Trigger :initialized event
            $scrollContainer.trigger('dpager_initialized');

            return self;
        }
        self.init = init;

        /**private event handlers*/
        function resizeHandler()
        {
            if (resizeID) {
                resizeID = clearTimeout(resizeID);
            }

            resizeID = setTimeout(function () {
                self.initialized = false;
                init();
                console.log('resized');
            }, 1);

        }

        function scrollHandler()
        {

            var pos = position(scrollContainer, window),
                    offset = pos.top * -1,
                    $mainSlider = $('.page__slide_top'),
                    slideHeight = $mainSlider.outerHeight(),
                    currentBreakpoint = breakPoints[currentIndex],
                    nextBreakpoint = breakPoints[currentIndex + 1],
                    margin,
                    opacity = opacityStart;

            //сдвигаем viewport наверх
             
            var currentViewportTop = parseInt($viewport.css('top').replace(/px/, ''));
            if (offset >= 0 && offset < startViewportTop) {
                $viewport.css('top', startViewportTop - offset);
                scrollMenu = true;
                $slideNav.removeClass('mainnav_collapsed');
            } else {
                $viewport.css('top', 0);
                scrollMenu = false;
                $slideNav.addClass('mainnav_collapsed');
            }

            if (scrollMenu === true) {
                margin = 0;
            } else {
                //если breakPoint вперед преодолен
                while (offset >= nextBreakpoint) {
                    //текущий слайд фиксируем на его высоте
                    $mainSlider.css('marginTop', -1 * slideHeight);

                    //переключаемся на новый слайд
                    currentIndex++;
                    $mainSlider.removeClass('page__slide_top');
                    $mainSlider = $($slides[currentIndex]);
                    $mainSlider.addClass('page__slide_top');
                    currentBreakpoint = breakPoints[currentIndex];
                    nextBreakpoint = breakPoints[currentIndex + 1];

                    //манипуляции с background
                    $background.css('z-index', parseInt($mainSlider.css('z-index')) - 1);
                }

                //если breakPoint назад преодолен
                while (offset < currentBreakpoint) {
                    //текущий слайд фиксируем
                    $mainSlider.css('marginTop', 0);
                    //манипуляции с background
                    $background.css('z-index', parseInt($mainSlider.css('z-index')));

                    //переключаемся на предыдущий слайд
                    currentIndex--;
                    $mainSlider.removeClass('page__slide_top');
                    $mainSlider = $($slides[currentIndex]);
                    $mainSlider.addClass('page__slide_top');
                    currentBreakpoint = breakPoints[currentIndex];
                    nextBreakpoint = breakPoints[currentIndex + 1];
                }

                //расчитываем отступ для текущего слайда
                margin = currentBreakpoint - offset;// + startViewportTop;

                //расчитываем прозрачность фона
                var mainSliderHeight = $mainSlider.outerHeight(),
                        winHeight = $viewport.outerHeight(true),
                        opacityStartMargin = -1 * mainSliderHeight + winHeight,
                        opacityEndMargin = -1 * mainSliderHeight,
                        koef = 1;

                if (margin >= opacityEndMargin && margin <= opacityStartMargin) {
                    koef = (margin - opacityEndMargin) / winHeight;
                }
                opacity = (opacityStart - opacityEnd) * koef + opacityEnd;
            }

            $mainSlider.css('marginTop', margin);
            $scrollContainer.trigger('scrolled');

            $background.css('opacity', opacity);

            return this;
        }

        /**private method position*/
        // Returns element's position object relative to document, window, or other elements.
        (function () {
            var k, doc, docEl, win, winTop, winLeft, box, relBox;
            /**
             * Poor man's shallow object extend;
             *
             * @param  {Object} a
             * @param  {Object} b
             * @return {Object}
             */
            function extend(a, b) {
                for (k in b)
                    a[k] = b[k];
                return a;
            }

            /**
             * Returns element's position object with `left`, `top`, `bottom`, `right`,
             * `width`, and `height` properties indicating the position and dimensions
             * of element on a page, or relative to other element.
             *
             * @param {Element} element
             * @param {Element} [relativeTo] Defaults to `document.documentElement`.
             *
             * @return {Object|null}
             */
            position = function (element, relativeTo) {
                doc = element.ownerDocument || element;
                docEl = doc.documentElement;
                win = isWindow(relativeTo) ? relativeTo : doc.defaultView || window;

                // normalize arguments
                relativeTo = !relativeTo || relativeTo === doc ? docEl : relativeTo;

                winTop = (win.pageYOffset || docEl.scrollTop) - docEl.clientTop;
                winLeft = (win.pageXOffset || docEl.scrollLeft) - docEl.clientLeft;
                box = {top: 0, left: 0};

                if (element && element.getBoundingClientRect) {
                    // new object needed because DOMRect properties are read-only
                    box = extend({}, element.getBoundingClientRect());
                    // width & height don't exist in <IE9
                    box.width = box.right - box.left;
                    box.height = box.bottom - box.top;
                } else {
                    return null;
                }

                // current box is already relative to window
                if (relativeTo === win)
                    return box;

                // add window offsets, making the box relative to documentElement
                box.top += winTop;
                box.left += winLeft;
                box.right += winLeft;
                box.bottom += winTop;

                // current box is already relative to documentElement
                if (relativeTo === docEl)
                    return box;

                // subtract position of other element
                relBox = position(relativeTo);
                box.left -= relBox.left;
                box.right -= relBox.left;
                box.top -= relBox.top;
                box.bottom -= relBox.top;

                return box;
            };
        }());
    };

    /**
     * Check whether value is a window object.
     *
     * Uses duck typing to determine window. Without IE8 all we need is:
     *
     *   var type = Object.prototype.toString.call(val);
     *   return type === '[object global]' || type === '[object Window]' || type === '[object DOMWindow]';
     *
     * @param  {Mixed} val
     * @return {Boolean}
     */
    function isWindow(val) {
        /* jshint eqeqeq:false */
        var doc, docWin;
        return !!(
                val
                && typeof val === 'object'
                && typeof val.window === 'object'
                && val.window == val
                && val.setTimeout
                && val.alert
                && (doc = val.document)
                && typeof doc === 'object'
                && (docWin = doc.defaultView || doc.parentWindow)
                && typeof docWin === 'object'
                && docWin == val
                );
    }
    ;

    window[namespace] = DarumPager;
}));

