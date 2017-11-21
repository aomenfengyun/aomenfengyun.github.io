!function(urls,ver){
    window.CTRL_VER = ver;
    for (var i = 0; i < urls.length; i++){
        var s = document.createElement('script');
        s.src = urls[i] + '?ver=' + ver;
        s.async = false;
        document.head.appendChild(s)
    }
}(['bin.js'],1510638094917);