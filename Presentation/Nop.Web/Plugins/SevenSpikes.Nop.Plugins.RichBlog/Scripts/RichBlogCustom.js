// SS AW - Custom js code for richblog, carousel
$(document).ready(function () {
    var t = $(".jCarouselMainWrapper");
    0 !== t.length && t.each(function () {
        var e = $(this),
            r = $(this).find(".slick-carousel"),
            o = $(this).attr("id"),
            i = r.attr("data-numberOfVisibleItems");
        r.on("init", function () {
            $.event.trigger({
                type: "newProductsAddedToPageEvent"
            }), $.event.trigger({
                type: "jCarouselProductsAddedToPageEvent"
            }), $(".carousel-title").show(), e.find(".loading-overlay").hide()
        });
        $("#" + o + " img").each(function () {
            var t = $(this);
            t.attr("data-lazyloadsrc") && (t.attr("data-lazy", t.attr("data-lazyloadsrc")), t.removeAttr("data-lazyloadsrc"))
        });
        var n, d;

        function t() {
            var t, a;
            sevenSpikesCore.isInViewPort(e) && (d || (r.slick({}), a = (t = r.slick("getSlick")).slideCount, i < a && t.options.arrows && $("#" + o + " .carousel-title").addClass("has-navigation"), d = !0), n.off("scroll." + o))
        }
        n = $(window), d = !1, t(), n.on("scroll." + o, t), $(document).on("AnywhereSliderLoaded", t)
    })
});