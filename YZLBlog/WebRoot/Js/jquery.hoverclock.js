/*!
* HoverClock(jQuery Plugin)
* version: 1.0.0
* Copyright (c) 2016 HoverTree
* http://hovertree.com
* http://hovertree.com/texiao/hoverclock/
*/

(function ($) {
    $.fn.hoverclock = function (options) {

        var settings = $.extend({
            h_radius: "10%",
            h_borderColor: "transparent",
            h_backColor: "transparent",
            h_width: "200px",
            h_height: "200px",
            h_secondHandColor: "orangered",
            h_frontColor: "darkgreen",
            h_thinHandColor: "green",
            h_linkText: "YZLBlog",
            h_linkUrl: "http://localhost:8080/YZLBlog/",
            h_linkColor: "deeppink",
            h_linkSize:"16px"
        }, options);

        var h_hoverClock = $(this);


        h_hoverClock.css({ "width": settings.h_width, "height": settings.h_height, "position": "relative", "background-color": settings.h_backColor, "border-radius": settings.h_radius,"border":"solid 1px", "border-color": settings.h_borderColor })

        var h_hoverEntity = h_hoverClock.find(".hoverclockentity");

        if (h_hoverEntity.length < 1) {
            h_hoverClock.append('<div class="hoverclockfill"><div class="hoverclockreference"></div><div class="hoverclockentity"><div class="hoverclocktext" style=""><a href="http://hovertree.com/texiao/hoverclock/" target="_blank" id="hoverclocklink">HoverClock</a></div><div class="hoverclockcentre"><div class="hoverclockdynamic"></div><div class="hoverclockexpand hoverclockexpand hoverclockcircle-1"></div><div class="hoverclockanchor hoverclockhour"><div class="hoverclockelement hoverclockthin-hand"></div><div class="hoverclockelement hoverclockfat-hand"></div></div><div class="hoverclockanchor hoverclockminute"><div class="hoverclockelement hoverclockthin-hand"></div><div class="hoverclockelement hoverclockfat-hand hoverclockminute-hand"></div></div><div class="hoverclockanchor hoverclocksecond"><div class="hoverclockelement hoverclocksecond-hand"></div></div><div class="hoverclockexpand hoverclockexpand hoverclockcircle-2"></div><div class="hoverclockexpand hoverclockexpand hoverclockcircle-3"></div></div></div></div>')
            h_hoverEntity = h_hoverClock.find(".hoverclockentity");
        }

        var hoverEntityObj = h_hoverEntity[0]

        hoverClock(hoverEntityObj)

        //--------------------------
        h_hoverClock.find(".hoverclocksecond-hand").css({ "background-color": settings.h_secondHandColor })
        h_hoverClock.find(".hoverclockhour-text,.hoverclockminute-text").css({ "color": settings.h_frontColor })
        h_hoverClock.find(".hoverclockfat-hand,.hoverclockminute-line").css({ "background-color": settings.h_frontColor })
        h_hoverClock.find(".hoverclockthin-hand").css({ "background-color": settings.h_thinHandColor })
        h_hoverClock.find(".hoverclocktext").css({ "width": settings.h_width, "position": "absolute", "left": -h_hoverClock.width() / 2, "top": h_hoverClock.height() / 20 })
        var h_hoverClockLink = h_hoverClock.find("#hoverclocklink");
        h_hoverClockLink.text(settings.h_linkText);
        h_hoverClockLink.attr("href", settings.h_linkUrl);
        h_hoverClockLink.attr("title", settings.h_linkText);
        h_hoverClockLink.css({ "color": settings.h_linkColor,"font-size":settings.h_linkSize })

        //--------------------------

        var h_hoverClockSize = Math.min(h_hoverClock.width(), h_hoverClock.height());
        if (hoverEntityObj.parentNode.classList.contains('hoverclockfill')) autoResize(hoverEntityObj, h_hoverClockSize)

        function hoverClock(container) {
            var hoverclockdynamic = container.querySelector('.hoverclockdynamic')
            var hourElement = container.querySelector('.hoverclockhour')
            var minuteElement = container.querySelector('.hoverclockminute')
            var secondElement = container.querySelector('.hoverclocksecond')
            var minute = function (n) {
                return n % 5 == 0 ? minuteText(n) : minuteLine(n)
            }
            var minuteText = function (n) {
                var element = document.createElement('div')
                element.className = 'hoverclockminute-text'
                element.innerHTML = (n < 10 ? '0' : '') + n
                position(element, n / 60, 135)
                hoverclockdynamic.appendChild(element)
            }
            var minuteLine = function (n) {
                var hoverclockanchor = document.createElement('div')
                hoverclockanchor.className = 'hoverclockanchor'
                var element = document.createElement('div')
                element.className = 'hoverclockelement hoverclockminute-line'
                rotate(hoverclockanchor, n)
                hoverclockanchor.appendChild(element)
                hoverclockdynamic.appendChild(hoverclockanchor)
            }
            var hour = function (n) {
                var element = document.createElement('div')
                element.className = 'hoverclockhour-text hour-' + n
                element.innerHTML = n
                position(element, n / 12, 105)
                hoverclockdynamic.appendChild(element)
            }
            var position = function (element, phase, r) {
                var theta = phase * 2 * Math.PI
                element.style.top = (-r * Math.cos(theta)).toFixed(1) + 'px'
                element.style.left = (r * Math.sin(theta)).toFixed(1) + 'px'
            }
            var rotate = function (element, second) {
                element.style.transform = element.style.webkitTransform = 'rotate(' + (second * 6) + 'deg)'
            }
            var animate = function () {
                var now = new Date()
                var time = now.getHours() * 3600 +
                            now.getMinutes() * 60 +
                            now.getSeconds() * 1 +
                            now.getMilliseconds() / 1000
                rotate(secondElement, time)
                rotate(minuteElement, time / 60)
                rotate(hourElement, time / 60 / 12)
                requestAnimationFrame(animate)
            }
            for (var i = 1; i <= 60; i++) minute(i)
            for (var i = 1; i <= 12; i++) hour(i)
            animate()
        }

        function autoResize(element, nativeSize) {
            var update = function () {
                var h_scale = nativeSize / 296
                element.style.transform = element.style.webkitTransform = 'scale(' + h_scale.toFixed(3) + ')'
            }
            update()
        }

    }
}(jQuery));