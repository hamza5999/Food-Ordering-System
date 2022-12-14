!(function (s, e, o) {
  var i,
    n = s([]),
    h = (s.resize = s.extend(s.resize, {})),
    a = "setTimeout",
    r = "resize",
    u = r + "-special-event",
    d = "delay",
    c = "throttleWindow";
  (h[d] = 250),
    (h[c] = !0),
    (s.event.special[r] = {
      setup: function () {
        if (!h[c] && this[a]) return !1;
        var t = s(this);
        (n = n.add(t)),
          s.data(this, u, { w: t.width(), h: t.height() }),
          1 === n.length &&
            (function t() {
              i = e[a] = (function () {
                n.each(function () {
                  var t = s(this),
                    e = t.width(),
                    i = t.height(),
                    n = s.data(this, u);
                  (e === n.w && i === n.h) ||
                    t.trigger(r, [(n.w = e), (n.h = i)]);
                }),
                  t();
              }, h[d]);
            })();
      },
      teardown: function () {
        if (!h[c] && this[a]) return !1;
        var t = s(this);
        (n = n.not(t)), t.removeData(u), n.length || clearTimeout(i);
      },
      add: function (t) {
        if (!h[c] && this[a]) return !1;
        var r;
        function e(t, e, i) {
          var n = s(this),
            h = s.data(this, u);
          (h.w = e !== o ? e : n.width()),
            (h.h = i !== o ? i : n.height()),
            r.apply(this, arguments);
        }
        if (s.isFunction(t)) return (r = t), e;
        (r = t.handler), (t.handler = e);
      },
    });
})(jQuery, this),
  jQuery.plot.plugins.push({
    init: function (e) {
      function i() {
        var t = e.getPlaceholder();
        0 != t.width() &&
          0 != t.height() &&
          (e.resize(), e.setupGrid(), e.draw());
      }
      e.hooks.bindEvents.push(function (t, e) {
        t.getPlaceholder().resize(i);
      }),
        e.hooks.shutdown.push(function (t, e) {
          t.getPlaceholder().unbind("resize", i);
        });
    },
    options: {},
    name: "resize",
    version: "1.0",
  });
