

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2021-12-26[Dec-Sun]17-00PM 


i edited the shaarli bookmarklet..

works.



javascript: (function() {    var url = location.href;    var title = document.title || url;    var desc = document.getSelection().toString();    
if (desc.length > 4000) {        desc = desc.substr(0, 4000) + '...';        
alert('The selected text is too long, it will be truncated.');    }    
window.open('https://php.198.23.238.244.nip.io/nrollr/load.php?url=%27  
+        encodeURIComponent(url) 
+        %27 & title = %27 
+ encodeURIComponent(title) 
+        %27 & source = bookmarklet %27, %27_blank%27, %27 height = 800, width = 600, scrollbars = yes, status = no, dialog = 1 %27    );})();



=================================================

i edited the shaarli bookmarklet..

works.


javascript: (function() {
    var url = location.href;
    var title = document.title || url;
    var desc = document.getSelection().toString();
    if (desc.length > 4000) {
        desc = desc.substr(0, 4000) + '...';
        alert('The selected text is too long, it will be truncated.');
    }
    window.open('https://php.198.23.238.244.nip.io/nrollr/load.php?url=%27  +
        encodeURIComponent(url) +
        %27 & title = %27 + encodeURIComponent(title) +
          %27 & source = bookmarklet %27, %27_ blank %27, %27 menubar = no, height = 800, width = 600, toolbar = no, scrollbars = yes, status = no, dialog = 1 %27
    );
})();



=================================================


		<a class="section" href="javascript:window.location=%22https://php.198.23.238.244.nip.io/nrollr/load.php?url=%22+
		encodeURIComponent(document.location)+%22&title=%22+encodeURIComponent(document.title)+%27 _ blank %27">



, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400"


orig:
		<a class="section" href="javascript:window.location=%22https://php.198.23.238.244.nip.io/nrollr/load.php?url=%22+encodeURIComponent(document.location)+%22&title=%22+encodeURIComponent(document.title)">
	

		<a class="section" href="javascript:window.open=
		%22https://php.198.23.238.244.nip.io/nrollr/load.php
		?url=
		%22+encodeURIComponent(document.location)+%22&title=%22+encodeURIComponent(document.title) +
		%27 _ blank %27
		">



    window.open('https://shar.d.jgleba.com/admin/shaare?post='  +
        encodeURIComponent(url) +
        ' & title = ' + encodeURIComponent(title) +
        ' & description = ' +
        encodeURIComponent(desc) +
        ' & source = bookmarklet ', '_blank', ' menubar = no, height = 800, width = 600, toolbar = no, scrollbars = yes, status = no, dialog = 1 '
    );
})();


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