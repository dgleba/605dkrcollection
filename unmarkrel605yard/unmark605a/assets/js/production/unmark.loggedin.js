/*! unmark - https://unmark.it - 2020-11-23 - https://unmark.it/ */

if (void 0 === unmark) var unmark = {};

if (unmark.template = unmark.template || {}, unmark.template.sidebar = '<header class="sidebar-action"><h4 class="sidebar-heading">Edit Mark</h4><a class="close-sidebar action" data-action="sidebar_collapse" href="#"><i class="icon-heading_close"></i></a></header><main><section class="mark-title"><h4>TITLE</h4><div class="input-field"><input data-id="{{mark_id}}" id="input-title" type="text" value="{{mark_title}}"></div></section><section class="mark-url"><h4>URL</h4><div class="button-field"><input type="text" value="{{url}}" readonly="readonly"><a href="#" class="copy-link"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 34"><rect x="13" y="14" width="7" height="9"/><polygon points="11 12 15 12 15 9 8 9 8 18 11 18 11 12"/></svg></a></div></section><div class="sidebar-label label-{{label_id}}"><span id="label-chosen"></span><a class="action" data-action="marks_addLabel" href="#" data-id="{{mark_id}}">{{label_name}}</a><ul class="sidebar-label-list" data-id="{{mark_id}}"></ul></div><div class="sidebar-info-panel">{{#embed}}<h4 class="prev-coll">Preview <i class="icon-up"></i></h4><section class="sidebar-info-preview">{{{embed}}}</section>{{/embed}}<h4>Tags</h4><section id="tags-{{mark_id}}"><input data-mark-id="{{mark_id}}" type="text" id="input-tags" class="selectize" placeholder="e.g. work, technology, interview" value="{{tags_string}}"></section><h4>Notes</h4><textarea id="input-notes" data-id="{{mark_id}}" placeholder="Type note text here..." class="sidebar-info-notes">{{{notes}}}</textarea></div><button data-id="{{mark_id}}" data-view="sidebar" data-action="delete_mark">Delete Link</button></main>', 
unmark.template.marks = '<div id="mark-{{mark_id}}" class="mark label-{{label_id}}"> <h2 class="hideoutline"><a target="_blank" rel="noopener noreferrer" href="{{url}}">{{title}}</a></h2> <div class="mark-meta"> <span class="mark-date">{{nice_time}}</span> <span class="mark-sep">\u2022</span> <span class="mark-link"><a target="_blank" rel="noopener noreferrer" href="{{url}}">{{prettyurl}}</a></span> </div> <div class="archive-target"> {{#archived_on}} <a title="Unarchive Mark" class="action mark-archive" data-action="mark_restore" href="#" data-id="{{mark_id}}"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48"><rect x="6" y="28" width="2" height="20"/><rect x="38" y="28" width="2" height="20"/><rect x="29.74" y="-2.79" width="2.06" height="24" transform="translate(2.5 24.45) rotate(-45)"/><rect x="14.18" y="-2.68" width="2.36" height="24" transform="translate(19.63 26.77) rotate(-135)"/><line x1="23.01" x2="39.98" y2="16.97"/><rect x="22" y="3" width="2" height="33"/><rect x="6" y="46" width="34" height="2"/></svg> </a> {{/archived_on}} {{^archived_on}} <a title="Archive Mark" class="action mark-archive" data-action="mark_archive" href="#" data-id="{{mark_id}}"> <i> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48"><rect x="25.8" y="6.95" width="4" height="30.5" transform="translate(23.84 -13.16) rotate(45)"/><rect x="12.16" y="22.45" width="4" height="13.43" transform="translate(-16.47 18.56) rotate(-45)"/></svg> </i> </a> {{/archived_on}} </div> <div class="mark-actions"> <a title="View Mark Info" class="action mark-info" href="#" data-nofade="true" data-action="show_mark_info" data-mark="mark-data-{{mark_id}}"> <i> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 8"><circle cx="18" cy="4" r="4"/><circle cx="32" cy="4" r="4"/><circle cx="4" cy="4" r="4"/></svg> </i> </a> </div> <div class="note-placeholder"></div> <script id="mark-data-{{mark_id}}" type="application/json">{"mark_id":"{{mark_id}}","label_id":"{{label_id}}","label_name":"{{label_name}}","notes":"{{notes}}","archived":{{active}}}<\/script> </div>', 
void 0 === unmark) var unmark = {};

!function(l) {
    unmark.ajax = function(r, i, s, o, a, e) {
        e = void 0 === e || e;
        var n = "csrf_token=" + unmark.urlEncode(unmark.vars.csrf_token) + "&content_type=" + (a = void 0 !== a ? a : "json");
        s = unmark.empty(s) ? n : s + "&" + n, l.ajax({
            dataType: a,
            cache: !1,
            url: r,
            type: i.toUpperCase(),
            data: s,
            async: e,
            success: function(a) {
                l.isFunction(o) && o(a);
            },
            error: function(a, e, n) {
                var t = {
                    error: n,
                    status: e,
                    request: a,
                    url: r,
                    type: i.toUpperCase(),
                    data: s
                };
                l.isFunction(o) && o(t);
            }
        });
    }, unmark.readQuery = function(a) {
        for (var e = window.location.search.substring(1).split("&"), n = 0; n < e.length; n++) {
            var t = e[n].split("=");
            if (t[0] == a) return t[1];
        }
        return !1;
    }, unmark.swapClass = function(a, e, n) {
        var t = a;
        if (-1 === e.indexOf("*")) return t.removeClass(e), n ? t.addClass(n) : t;
        var r = new RegExp("\\s" + e.replace(/\*/g, "[A-Za-z0-9-_]+").split(" ").join("\\s|\\s") + "\\s", "g");
        return t.each(function(a, e) {
            for (var n = " " + e.className + " "; r.test(n); ) n = n.replace(r, " ");
            e.className = l.trim(n);
        }), n ? t.addClass(n) : t;
    }, unmark.replaceSpecial = function(a) {
        if (null != a) {
            var e = null;
            for (var n in unmark.special_chars) e = new RegExp(n, "gi"), a = a.replace(e, unmark.special_chars[n]);
        }
        return a;
    }, unmark.urlEncode = function(a) {
        return a = unmark.replaceSpecial(a), encodeURIComponent(a);
    }, unmark.empty = function(a) {
        var e = null != a ? a.length : 0;
        return !1 === a || "" === a || null === a || 0 === a || void 0 === a || e < 1;
    }, unmark.createCookie = function(a, e, n) {
        if (n) {
            var t = new Date();
            t.setTime(t.getTime() + 24 * n * 60 * 60 * 1e3);
            var r = "; expires=" + t.toGMTString();
        } else r = "";
        document.cookie = a + "=" + e + r + "; path=/";
    }, unmark.readCookie = function(a) {
        for (var e = a + "=", n = document.cookie.split(";"), t = 0; t < n.length; t++) {
            for (var r = n[t]; " " == r.charAt(0); ) r = r.substring(1, r.length);
            if (0 == r.indexOf(e)) return r.substring(e.length, r.length);
        }
        return null;
    }, unmark.prettyLink = function(a) {
        return "/" === (a = a.replace(/https?:\/\/(www.)?/, "")).substr(-1) && (a = a.substr(0, a.length - 1)), 
        a;
    }, unmark.read_query_str = function(a) {
        a = a.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var e = new RegExp("[\\?&]" + a + "=([^&#]*)").exec(location.search);
        return null == e ? "" : decodeURIComponent(e[1].replace(/\+/g, " "));
    }, unmark.extendFunction = function(a, e) {
        var n, t, r;
        this[a] = (t = (n = this)[a], r = e, function() {
            var a = t.apply(n, arguments), e = r.apply(n, arguments);
            return null !== e ? e : a;
        });
    };
}(window.jQuery), function(d) {
    unmark.updateDom = function() {
        var a = d("div.marks").data("label-class");
        d("body").removeClass().addClass(a), unmark.page_setup(d("body").height());
    }, unmark.sidebar_collapse = function() {
        d(".mark").removeClass("view-inactive").removeClass("view-active"), Modernizr.mq("only screen and (max-width: 768px)") ? (d(".sidebar-content").removeClass("active"), 
        d("#unmark-wrapper").removeClass("sidebar-active"), d(".mobile-header").removeClass("shift-left")) : d(".sidebar-content").removeClass("active");
    }, unmark.sidebar_expand = function(a) {
        var e = unmark.sidebar_content.find('a[data-action="sidebar_expand"] i');
        if (!0 === a) return unmark.sidebar_content.animate({
            width: "340px"
        }, 300, function() {
            e.removeClass("icon-heading_collapse").addClass("icon-heading_expand"), unmark.sidebar_content.removeClass("wide");
        });
        e.hasClass("icon-heading_collapse") ? unmark.sidebar_content.animate({
            width: "340px"
        }, 300, function() {
            e.removeClass("icon-heading_collapse").addClass("icon-heading_expand"), unmark.sidebar_content.removeClass("wide");
        }) : unmark.sidebar_content.animate({
            width: "340px"
        }, 300, function() {
            e.removeClass("icon-heading_expand").addClass("icon-heading_collapse"), unmark.sidebar_content.addClass("wide");
        });
    }, unmark.interact_nav = function(a, e) {
        a.preventDefault(), unmark.sidebar_collapse();
        var n = e.data("panel") ? e.data("panel") : "", t = "" !== n ? n.replace(/^#/, "") : "", r = -1 !== t.indexOf("label"), i = -1 !== e.attr("href").indexOf("label"), s = -1 !== t.indexOf("tags"), o = -1 !== e.attr("href").indexOf("tag"), l = -1 !== t.indexOf("archive"), u = !1;
        return (r || i) && (n = "#" + (t = "panel-label"), u = !0), (s || o) && (n = "#" + (t = "panel-tags"), 
        !s && o ? u = !0 : s && !o && (u = !1)), l && (u = !0), d(".menu-item").removeClass("active-menu"), 
        d(".navigation-content").find("[data-menu='" + t + "']").addClass("active-menu"), 
        "#panel-settings" !== n && d.pjax({
            url: e.attr("href"),
            container: ".main-content",
            timeout: 6e3
        }), d(".nav-panel").not(n).hide(), d(n).show(), Modernizr.mq("only screen and (max-width: 767px)") && u && unmark.mobile_nav(!0), 
        !1;
    }, unmark.scrollPaginate = function(a) {
        var e, n, t, r, i = "", s = !1, o = window.unmark_current_page + 1, l = window.unmark_total_pages;
        1 != pages_already_loaded[o] && a.scrollTop() + a.innerHeight() >= a[0].scrollHeight && !0 !== s && o <= l && !0 !== pages_already_loaded[o] && !0 !== s && (s = !0, 
        t = Hogan.compile(unmark.template.marks), e = window.location.pathname, pages_already_loaded[o] = !0, 
        unmark.ajax(e + "/" + o, "post", "", function(a) {
            if (a.marks) {
                for (r = Object.keys(a.marks).length, n = 1; n < r; n++) a.marks[n].prettyurl = unmark.prettyLink(a.marks[n].url), 
                i += t.render(a.marks[n]);
                unmark.main_content.find(".marks_list").append(i), window.unmark_current_page = o, 
                s = !1;
            }
        }));
    }, unmark.updateCounts = function() {
        unmark.getData("stats", function(a) {
            var e = a.stats.archived, n = (a.stats.saved, a.stats.marks);
            d(".na-today").text(e.today), d(".ns-year").text(n["ages ago"]);
        });
    }, unmark.getData = function(a, e) {
        unmark.ajax("/marks/get/" + a, "post", "", e);
    }, unmark.close_window = function(a) {
        if (a) return window.close();
        var e = d(".mark-added-note").find("textarea").val(), n = d(".mark-added-note").find("textarea").data("id");
        unmark.saveNotes(n, e), window.close();
    }, unmark.dismiss_this = function(a) {
        a.parent().parent().fadeOut();
    }, unmark.page_setup = function(a) {
        unmark.main_content.height(a), unmark.sidebar_content.height(a), d(".nav-panel").height(a), 
        d("body").height(a);
    }, unmark.overlay = function(a) {
        !0 === a ? (unmark.mainpanels.addClass("blurme"), d('<div id="unmark-overlay"></div>').appendTo(document.body), 
        d("#unmark-overlay").fadeIn(200)) : (unmark.mainpanels.removeClass("blurme"), d("#unmark-overlay").fadeOut(400), 
        d(".hiddenform").fadeOut(300), setTimeout(function() {
            d("#unmark-overlay").remove(), d(".hiddenform").hide();
        }, 500), d("#helperforms input").val(""));
    };
}(window.jQuery), function(k) {
    var p = 0;
    unmark.show_mark_info = function(a) {
        var e, n = a.data("mark"), t = k("#" + n).html(), r = jQuery.parseJSON(t), s = n.replace("mark-data-", ""), o = k("#mark-" + s).find(".note-placeholder").text(), l = (a.data("nofade"), 
        null != r.mark_title ? r.mark_title : r.title);
        r.mark_title = l;
        var u = "", d = Object.keys(r.tags).length, c = 1;
        for (var m in r.tags) void 0 !== m && (u += c == d ? m.toString() : m.toString() + ",", 
        c++);
        r.tags_string = u, Modernizr.mq("only screen and (min-width: 768px)") && (k(".mark").removeClass("view-inactive").removeClass("view-active"), 
        k(".mark").not("#mark-" + s).addClass("view-inactive"), k("#mark-" + s).addClass("view-active")), 
        k(".sidebar-content").addClass("active"), "" !== o && (r.notes = o), e = Hogan.compile(unmark.template.sidebar).render(r), 
        Modernizr.mq("only screen and (max-width: 767px)") && k("#mobile-sidebar-show").trigger("click"), 
        unmark.sidebar_mark_info.html(e), function a() {
            p = arguments[0] || p, isNaN(p) ? k("ul.sidebar-label-list").prepend(unmark.label_list(p)) : unmark.getData("labels", a), 
            unmark.marks_addLabel();
        }(), unmark.sidebar_mark_info.fadeIn(400, function() {
            var e = k("#input-title"), n = k("#input-tags"), t = k("#input-notes");
            intervalSaveTitle = setInterval(function() {
                e.hasClass("contentsChanged") && (unmark.saveTitle(s, e.val()), k("#mark-" + s + " h2 a").html(e.val()), 
                e.removeClass("contentsChanged"));
            }, 1e3), intervalSaveNotes = setInterval(function() {
                t.hasClass("contentsChanged") && (unmark.saveNotes(s, t.val()), t.removeClass("contentsChanged"));
            }, 1e3), e.on("keyup", function(a) {
                e.hasClass("contentsChanged") || e.addClass("contentsChanged");
            }), t.on("keyup", function(a) {
                t.hasClass("contentsChanged") || t.addClass("contentsChanged");
            }), unmark.ajax("/tags/getAutocomplete", "get", "", function(a) {
                if (tagList = [], a.error && console.log(a.error), !1 !== a.tags) for (i = 0; i < Object.keys(a.tags).length; i++) tagList.push({
                    text: a.tags[i].name
                });
                for (mark_added_tags_value = u.split(","), i = 0; i < mark_added_tags_value.length; i++) tagList.push({
                    text: mark_added_tags_value[i]
                });
                var e;
                ajax_loading = !1, e = tagList, n.selectize({
                    plugins: [ "remove_button", "restore_on_backspace" ],
                    delimiter: ",",
                    openOnFocus: !1,
                    persist: !1,
                    createOnBlur: !0,
                    closeAfterSelect: !0,
                    labelField: "text",
                    valueField: "text",
                    searchField: "text",
                    options: e,
                    create: function(a) {
                        return {
                            value: a,
                            text: a
                        };
                    },
                    onChange: function(a) {
                        unmark.saveTags(s, a), setTimeout(unmark.update_tag_count, 1e3);
                    }
                });
            });
        });
    }, unmark.update_label_count = function() {
        var r = k("ul.label-list");
        unmark.getData("labels", function(a) {
            var e, n, t = a.labels;
            for (e in t) n = t[e].total_active_marks, r.find(".label-" + t[e].label_id + " span").text(n);
        });
    }, unmark.update_tag_count = function() {
        var r = k("ul.tag-list");
        unmark.getData("tags", function(a) {
            var e, n = a.tags.popular, t = "";
            for (e in n) t += '<li class="tag-' + n[e].tag_id + '"><a href="/marks/tag/' + n[e].slug + '">#' + n[e].name + "</a><span>" + n[e].total + "</span></li>";
            r.html(t);
        });
    }, unmark.mark_archive = function(a) {
        var e = a.data("id");
        unmark.ajax("/mark/archive/" + e, "post", "", function(a) {
            null !== a.mark.archived_on ? (k("#mark-" + e).fadeOut(), unmark.sidebar_collapse(), 
            unmark.update_label_count()) : alert("Sorry, We could not archive this mark at this time.");
        });
    }, unmark.mark_restore = function(a) {
        var e = a.data("id");
        unmark.ajax("/mark/restore/" + e, "post", "", function(a) {
            null === a.mark.archived_on ? (k("#mark-" + e).fadeOut(), unmark.sidebar_collapse(), 
            unmark.update_label_count()) : alert("Sorry, We could not restore this mark at this time.");
        });
    }, unmark.archive_all = function() {
        unmark.ajax("/marks/archive/old", "post", "", function(a) {
            !0 === a.archived ? window.location = "/marks" : alert("Sorry, We could not archive the links at this time. Please try again.");
        });
    }, unmark.marks_editMarkInfo = function(a) {
        var i, s = a.next(), o = k(s).data("id");
        s.on("keydown", function(a) {
            k(this).addClass("contentsChanged");
        }), s.on("blur", function(a) {
            var e, n, t, r;
            a.preventDefault(), 13 !== a.which && "blur" !== a.type || (s.hasClass("contentsChanged") || editable_mark_title.hasClass("contentsChanged")) && (e = editable_mark_title.text(), 
            n = s.text(), t = o, "" !== e && (i = "title=" + unmark.urlEncode(e) + "&notes=" + unmark.urlEncode(n) + "&tags=" + unmark.urlEncode(t), 
            unmark.ajax("/mark/edit/" + r, "post", i, function(a) {
                k("#mark-" + r).find(".note-placeholder").text(n);
            })), s.removeClass("contentsChanged"));
        });
    }, unmark.saveTitle = function(e, a) {
        if ("" != a) {
            var n = "title=" + unmark.urlEncode(a);
            unmark.ajax("/mark/edit/" + e, "post", n, function(a) {
                unmark.update_mark_info(a, e);
            });
        }
    }, unmark.saveNotes = function(e, a) {
        var n = "notes=" + unmark.urlEncode(a);
        unmark.ajax("/mark/edit/" + e, "post", n, function(a) {
            unmark.update_mark_info(a, e);
        });
    }, unmark.saveTags = function(e, a) {
        "" == a && (a = "unmark:removeAllTags");
        var n = "tags=" + unmark.urlEncode(a);
        unmark.ajax("/mark/edit/" + e, "post", n, function(a) {
            unmark.update_mark_info(a, e);
        });
    }, unmark.marks_addLabel = function() {
        var e, n, t, r, i, s, o, l = k(".sidebar-label-list"), u = k("#label-chosen"), d = k(".sidebar-label"), c = !1;
        l.length < 1 && (l = k(".label-choices"), d = k(".mark-added-label"), c = !0), l.find("a").unbind(), 
        l.find("a").on("click", function(a) {
            a.preventDefault(), e = l.data("id"), n = k(this).attr("rel"), r = k(this).text(), 
            i = k("body").attr("class"), s = new RegExp("label"), t = "label_id=" + n, o = k('.action[data-id="' + e + '"][data-action="marks_addLabel"]'), 
            unmark.ajax("/mark/edit/" + e, "post", t, function(a) {
                u.text(r), c ? (k("#currLabel").text(r), unmark.swapClass(k("#currLabel"), "label-*", "label-" + n), 
                unmark.swapClass(d, "label-*", "label-" + n)) : (o.text(r), unmark.swapClass(o, "label-*", "label-" + n), 
                unmark.swapClass(d, "label-*", "label-" + n), unmark.swapClass(k("#mark-" + e), "label-*", "label-" + n)), 
                unmark.update_label_count(), unmark.update_mark_info(a, e), s.test(i) && i !== "label-" + n && (k("#mark-" + e).fadeOut(), 
                unmark.sidebar_collapse());
            });
        });
    }, unmark.update_mark_info = function(a, e) {
        var n = a.mark;
        n = JSON.stringify(n), k("#mark-data-" + e).html(n);
    }, unmark.label_list = function(a) {
        var e, n, t = a.labels, r = "";
        for (e in t) r += '<li class="label-' + (n = t[e]).label_id + '"><a href="#" rel="' + n.label_id + '"><span>' + n.name + "</span></a></li>";
        return r;
    }, unmark.delete_mark = function(a) {
        var e = a.data("id"), n = a.data("view");
        unmark.ajax("/mark/delete/" + e, "post", "", function(a) {
            "0" === a.mark.active ? "bookmarklet" === n ? unmark.close_window(!0) : (unmark.sidebar_collapse(), 
            k("#mark-" + e).fadeOut()) : alert("This mark could not be deleted, please try again laster.");
        });
    };
}(window.jQuery), function(o) {
    function l(a, e, n) {
        var t = e ? "error" : "";
        a.parent().find(".response-message").removeClass("error").addClass(t).text(n).fadeIn();
    }
    function u(a, e) {
        var n = a.find(".login-submit i");
        e ? n.removeClass("icon-go").addClass("icon-spinner") : n.removeClass("icon-spinner").addClass("icon-go");
    }
    unmark.logout = function() {
        window.location = "/logout";
    }, unmark.change_password = function() {
        unmark.overlay(!0), o("#resetPasswordForm").fadeIn(400);
    }, unmark.change_email = function() {
        unmark.overlay(!0), o("#changePasswordForm").fadeIn(400);
    }, unmark.import_export = function() {
        unmark.overlay(!0), o("#importExportForm").fadeIn(400);
    }, unmark.send_password_change = function(e) {
        var a, n = o("#pass1, #pass2"), t = o("#oldpass"), r = o("#oldpass").val(), i = o("#pass1").val(), s = o("#pass2").val();
        if (u(e, !0), i !== s) return n.val(""), u(e, !1), l(e, !0, "New Passwords do not match");
        a = "password=" + unmark.urlEncode(i) + "&current_password=" + unmark.urlEncode(r), 
        unmark.ajax("/user/update/password", "post", a, function(a) {
            a.success ? l(e, !1, "Your password has been changed.") : l(e, !0, a.message), u(e, !1), 
            n.val(""), t.val("");
        });
    }, unmark.send_email_change = function(e) {
        var a, n = o("#emailupdate"), t = n.val();
        if (u(e, !0), "" === t) return n.val(""), u(e, !1), l(e, !0, "Please enter something!");
        a = "email=" + unmark.urlEncode(t), unmark.ajax("/user/update/email", "post", a, function(a) {
            a.success ? (l(e, !1, "Your email has been changed."), o("#user-email").empty().text("[ " + t + " ]")) : l(e, !0, a.message), 
            u(e, !1), n.val("");
        });
    }, unmark.export_data = function() {
        return window.location.href = "/export";
    }, unmark.export_data_html = function() {
        return window.location.href = "/export/html";
    }, unmark.import_data = function() {
        return o("#importerUnmark").trigger("click");
    }, unmark.import_data_html = function() {
        return o("#importerHTML").trigger("click");
    }, unmark.import_data_readability = function() {
        return o("#importerReadability").trigger("click");
    };
}(window.jQuery), function($) {
    unmark.init = function() {
        this.nav_panel = $(".navigation-pane"), this.main_panel = $(".main-wrapper"), this.main_content = $(".main-content"), 
        this.sidebar_content = $(".sidebar-content"), this.main_panel_width = unmark.main_panel.width(), 
        this.sidebar_default = $(".sidebar-default"), this.sidebar_mark_info = $(".sidebar-mark-info"), 
        this.body_height = $(window).outerHeight(!0), this.special_chars = {
            "\\+": "&#43;"
        }, this.mainpanels = $("#unmark-wrapper"), this.hamburger = $(".mobile-header .menu-activator"), 
        this.mobile_header = $(".mobile-header");
        var load = unmark.readQuery("load");
        !1 !== load && (unmark.overlay(!0), $("#" + load).show().animate({
            top: 0
        }, 1e3)), window.unmark_current_page = 1, Modernizr.mq("only screen and (min-width: 768px)") && $("body").animate({
            opacity: 1
        }, 1e3), $(".navigation-content a, .navigation-pane-links a, .label-list a, .tag-list a").on("click", function(a) {
            return unmark.interact_nav(a, $(this)), !1;
        }), $(document).on("click", "button[data-action], .action", function(e) {
            e.preventDefault(), e.stopPropagation();
            var action = $(this).data("action"), funct;
            funct = eval("unmark." + action), funct($(this));
        }), $(document).on("click", ".sidebar-info-panel h4.prev-coll", function(a) {
            a.preventDefault();
            var e = $(this).next("section"), n = $(this).find("i");
            e.is(":visible") ? (n.removeClass("icon-up"), n.addClass("icon-down"), e.slideUp()) : (n.removeClass("icon-down"), 
            n.addClass("icon-up"), e.slideDown());
        }), 0 < $("#unmark").length && ($(document).on("submit", "#search-form", function(a) {
            $.pjax.submit(a, ".main-content");
        }), $(document).on("pjax:complete", function() {
            window.unmark_current_page = 1, unmark.main_content.scrollTop(0), unmark.main_content.find(".marks").hide().fadeIn(), 
            unmark.updateDom();
        })), $("form.ajaxsbmt").on("submit", function(e) {
            e.preventDefault();
            var form = $(this), formid = form.attr("id");
            funct = eval("unmark." + formid), funct(form, e);
        }), $("#helperforms input.field-input").on("keydown change", function() {
            $(this).parent().parent().find(".response-message").hide();
        }), $(document).on("click", "#unmarkModalClose", function(a) {
            return a.preventDefault(), unmark.overlay(!1);
        }), $(document).on("click", "#unmark-overlay", function(a) {
            return a.preventDefault(), unmark.overlay(!1);
        }), $(document).on("mouseenter", ".label-choices li, .sidebar-label-list li", function(a) {
            var e = $(this), n = e.find("span").text(), t = e.attr("class");
            $("#label-chosen").show().text(n).removeClass().addClass(t);
        }), $(document).on("mouseleave", ".label-choices li, .sidebar-label-list li", function(a) {
            $("#label-chosen").show().hide();
        }), pages_already_loaded = [], unmark.main_content.on("scroll", function(a) {
            unmark.scrollPaginate($(this));
        }), $("#importerUnmark").change(function(a) {
            return $("#importForm").submit();
        }), $("#importerHTML").change(function(a) {
            return $("#importFormHTML").submit();
        }), $("#importerReadability").change(function(a) {
            return $("#importFormReadability").submit();
        }), $(unmark.hamburger).on("click", function(a) {
            return a.preventDefault(), $(unmark.hamburger).toggleClass("active"), $(unmark.mainpanels).removeClass("sidebar-active"), 
            $(unmark.mainpanels).toggleClass("nav-active"), $(unmark.mobile_header).toggleClass("shift-right"), 
            !1;
        }), $("#navigation-close-overlay").on("click", function(a) {
            return a.preventDefault(), $(unmark.hamburger).removeClass("active"), $(unmark.mainpanels).removeClass("nav-active"), 
            $(unmark.mobile_header).removeClass("shift-right"), !1;
        }), $(".mobile-header #mobile-sidebar-show").on("click", function(a) {
            return a.preventDefault(), $("#unmark-wrapper").removeClass(), $("#unmark-wrapper").addClass("sidebar-active"), 
            $(".mobile-header .menu-activator").removeClass("active"), $(unmark.mobile_header).addClass("shift-left"), 
            $(this).toggleClass("active"), !1;
        }), $("#sidebar-close-overlay").on("click", function(a) {
            return a.preventDefault(), $("#unmark-wrapper").removeClass("sidebar-active"), $(unmark.mobile_header).removeClass("shift-left"), 
            $(".mobile-header #mobile-sidebar-show").removeClass("active"), !1;
        }), $(document).on("click", ".marks-heading-bar .search-button", function(a) {
            return a.preventDefault(), $(".search-bar").fadeIn(300, function(a) {
                setTimeout("$('#search-input').focus();", 0);
            }), !1;
        }), $(document).on("click", ".marks-heading-bar .search-bar .close-button", function(a) {
            return a.preventDefault(), $(this).closest(".search-bar").fadeOut(300), !1;
        }), $(document).on("click", ".marks-heading-bar .add-mark-button", function(a) {
            a.preventDefault(), $(".add-mark-bar").fadeIn(300, function(a) {
                setTimeout("$('#add-mark-input').focus();", 0);
            });
        }), $(document).on("click", ".marks-heading-bar .add-mark-bar .close-button", function(a) {
            a.preventDefault(), $(this).closest(".add-mark-bar").fadeOut(300);
        });
    }, $(document).ready(function() {
        unmark.init();
    });
}(window.jQuery), function(e) {
    e(document).ready(function() {
        unmark.mobile_nav = function(a) {
            return a ? (unmark.mainpanels.removeClass("nav-active"), unmark.hamburger.removeClass("active"), 
            unmark.mobile_header.removeClass("shift-right")) : (e(".main-wrapper").animate({
                left: 65
            }, 400), e(".navigation-content").animate({
                left: 0
            }, 400), e(".navigation-content .menu-activator").animate({
                left: 0
            }, 400), unmark.mobile_sidebar(!0)), !1;
        }, unmark.mobile_sidebar = function(a) {
            return a ? e(".sidebar-content").show().animate({
                right: "-85%"
            }, 600, function() {
                e(this).hide(), e("a#mobile-sidebar-show i").removeClass("icon-heading_close").addClass("icon-ellipsis");
            }) : (e("a#mobile-sidebar-show i").removeClass(".icon-ellipsis").addClass("icon-heading_close"), 
            unmark.mobile_nav(!0)), !1;
        }, Modernizr.mq("only screen and (max-width: 767px)") && (e(".menu-activator a").off().on("click", function(a) {
            return a.preventDefault(), "65px" === e(".main-wrapper").css("left") ? unmark.mobile_nav(!0) : unmark.mobile_nav(), 
            !1;
        }), e("#mobile-sidebar-show").on("click", function(a) {
            return a.preventDefault(), e("#unmark-wrapper").hasClass("sidebar-active") ? unmark.mobile_sidebar(!0) : unmark.mobile_sidebar(), 
            !1;
        }), e(".menu-upgrade a, .menu-settings a, .menu-search a").attr("rel", "250"));
    });
}(window.jQuery), "serviceWorker" in navigator && window.addEventListener("load", function() {
    navigator.serviceWorker.register("/service-worker.js").then(function(a) {
        console.log("ServiceWorker registration successful with scope: ", a.scope);
    }).catch(function(a) {});
});