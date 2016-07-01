
(function (document, $, undefined) {
    var loadBar;
    $(document).ajaxSend(function (event, xhr, settings) {
        var obj = jQuery.parseJSON(settings.data);
        loadBar = obj.loadingBar;
        $(loadBar).show();
        delete obj.loadingBar;
        settings.data = JSON.stringify(obj);
    });
    $(document).ajaxComplete(function (event, xhr, settings) {
        $(loadBar).hide();
    });

})(document, jQuery)