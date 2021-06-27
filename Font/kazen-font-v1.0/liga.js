/* A polyfill for browsers that don't support ligatures. */
/* The script tag referring to this file must be placed before the ending body tag. */

/* To provide support for elements dynamically added, this script adds
   method 'icomoonLiga' to the window object. You can pass element references to this method.
*/
(function () {
    'use strict';
    function supportsProperty(p) {
        var prefixes = ['Webkit', 'Moz', 'O', 'ms'],
            i,
            div = document.createElement('div'),
            ret = p in div.style;
        if (!ret) {
            p = p.charAt(0).toUpperCase() + p.substr(1);
            for (i = 0; i < prefixes.length; i += 1) {
                ret = prefixes[i] + p in div.style;
                if (ret) {
                    break;
                }
            }
        }
        return ret;
    }
    var icons;
    if (!supportsProperty('fontFeatureSettings')) {
        icons = {
            'angle-left': '&#xe900;',
            'angle-right': '&#xe901;',
            'angle-down': '&#xe902;',
            'angle-up': '&#xe903;',
            'arrow-double-left': '&#xe904;',
            'arrow-double-right': '&#xe905;',
            'long-arrow-left': '&#xe972;',
            'long-arrow-right': '&#xe906;',
            'up-top': '&#xe94f;',
            'next-arrow': '&#xe907;',
            'swap-horizontal': '&#xe908;',
            'enlarge': '&#xe950;',
            'angle-down-small': '&#xe909;',
            'unfold-more': '&#xe90a;',
            'close-o': '&#xe90b;',
            'close': '&#xe90c;',
            'check-square': '&#xe90d;',
            'check-o': '&#xe90e;',
            'ban': '&#xe90f;',
            'check': '&#xe910;',
            'square': '&#xe911;',
            'plus': '&#xe912;',
            'minus': '&#xe96e;',
            'plus-square': '&#xe913;',
            'minu-square': '&#xe914;',
            'update-refresh': '&#xe915;',
            'refresh': '&#xe951;',
            'area': '&#xe916;',
            'shower': '&#xe917;',
            'bed': '&#xe918;',
            'garage': '&#xe919;',
            'car-parking': '&#xe91a;',
            'grid-two': '&#xe91b;',
            'squares': '&#xe91c;',
            'grid-three': '&#xe91d;',
            'list': '&#xe91e;',
            'add-list': '&#xe91f;',
            'attached': '&#xe920;',
            'chat': '&#xe921;',
            'user': '&#xe922;',
            'phone': '&#xe923;',
            'phone-end': '&#xe924;',
            'mobile': '&#xe925;',
            'email': '&#xe926;',
            'share': '&#xe927;',
            'skype': '&#xe928;',
            'star-line': '&#xe929;',
            'star-line-half': '&#xe970;',
            'star-fill': '&#xe96f;',
            'star-fill-half': '&#xe971;',
            'search-space': '&#xe92a;',
            'search': '&#xe92b;',
            'cart': '&#xe952;',
            'bag': '&#xe953;',
            'send': '&#xe92c;',
            'bar-code': '&#xe92d;',
            'bolt-fill': '&#xe92e;',
            'bolt-line': '&#xe92f;',
            'calendar': '&#xe930;',
            'camera': '&#xe931;',
            'chart': '&#xe932;',
            'earth': '&#xe933;',
            'map': '&#xe934;',
            'location': '&#xe935;',
            'pin': '&#xe936;',
            'target': '&#xe937;',
            'pic': '&#xe938;',
            'print': '&#xe939;',
            'link': '&#xe93a;',
            'eye': '&#xe93b;',
            'fire': '&#xe93c;',
            'number-one': '&#xe954;',
            'few': '&#xe955;',
            'folder-left': '&#xe93d;',
            'folder': '&#xe93e;',
            'heart': '&#xe93f;',
            'heart-fill': '&#xe958;',
            'info-round': '&#xe940;',
            'key': '&#xe941;',
            'lock': '&#xe956;',
            'log-out': '&#xe942;',
            'setting': '&#xe943;',
            'filter': '&#xe957;',
            'trash': '&#xe944;',
            'video': '&#xe945;',
            'card': '&#xe946;',
            'car': '&#xe947;',
            'schedule': '&#xe948;',
            'linkedin': '&#xe949;',
            'twitter': '&#xe94a;',
            'pinterest': '&#xe94b;',
            'google-plus': '&#xe94c;',
            'instagram': '&#xe94d;',
            'facebook': '&#xe94e;',
          '0': 0
        };
        delete icons['0'];
        window.icomoonLiga = function (els) {
            var classes,
                el,
                i,
                innerHTML,
                key;
            els = els || document.getElementsByTagName('*');
            if (!els.length) {
                els = [els];
            }
            for (i = 0; ; i += 1) {
                el = els[i];
                if (!el) {
                    break;
                }
                classes = el.className;
                if (/kz-/.test(classes)) {
                    innerHTML = el.innerHTML;
                    if (innerHTML && innerHTML.length > 1) {
                        for (key in icons) {
                            if (icons.hasOwnProperty(key)) {
                                innerHTML = innerHTML.replace(new RegExp(key, 'g'), icons[key]);
                            }
                        }
                        el.innerHTML = innerHTML;
                    }
                }
            }
        };
        window.icomoonLiga();
    }
}());
