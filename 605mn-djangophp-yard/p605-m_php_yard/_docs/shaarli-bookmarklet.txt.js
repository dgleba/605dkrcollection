
javascript: (function() {
    var url = location.href;
    var title = document.title || url;
    var desc = document.getSelection().toString();
    if (desc.length > 4000) {
        desc = desc.substr(0, 4000) + '...';
        alert('The selected text is too long, it will be truncated.');
    }
    window.open('https://shar.d.jgleba.com/admin/shaare?post=%27  +
        encodeURIComponent(url) +
        %27 & title = %27 + encodeURIComponent(title) +
        %27 & description = %27 +
        encodeURIComponent(desc) +
        %27 & source = bookmarklet %27, %27_ blank %27, %27 menubar = no, height = 800, width = 600, toolbar = no, scrollbars = yes, status = no, dialog = 1 %27
    );
})();




