'use strict';

$(document).ready(function() {
    function getParameterByName(name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    }

    (function () {
        var url = getParameterByName('url');
        var host = getParameterByName('host');
        $('.external-link-url').text(url).attr('href', url);
        $('.external-link-host').attr('href', host);
        window.setTimeout(function() {
          // location.href = url;
        }, 3000);
    })();
});
