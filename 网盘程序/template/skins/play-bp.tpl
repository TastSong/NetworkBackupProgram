<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title><?=$title?></title>
    <link rel="stylesheet" href="//cdn.bootcss.com/dplayer/1.22.2/DPlayer.min.css">
    <style type="text/css">.dplayer,body,html{overflow:hidden;margin:0;padding:0;width:100%;height:100%}.dplayer-danmaku .dplayer-danmaku-item{display:inline-block;text-shadow:.5px .5px .5px rgba(0,0,0,.5);white-space:nowrap;letter-spacing:1px;font-weight:bolder;font-family:Microsoft YaHei,Arial,Helvetica,sans-serif;cursor:default;pointer-events:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.dplayer-controller .dplayer-icons .dplayer-full .dplayer-full-in-icon,.dplayer-menu{display:none!important}.dplayer-controller .dplayer-bar-wrap{width:100%!important}.dplayer-controller{padding:0}.dplayer-controller .dplayer-icons .dplayer-icon.dplayer-comment-icon{-webkit-animation:bounce-down 1s linear infinite;animation:bounce-down 1s linear infinite}@-webkit-keyframes bounce-down{25%{-webkit-transform:translateY(-5px)}50%,to{-webkit-transform:translateY(0)}75%{-webkit-transform:translateY(5px)}}@keyframes bounce-down{25%{transform:translateY(-5px)}50%,to{transform:translateY(0)}75%{transform:translateY(5px)}}</style>
</head>
<body>
    <div id="dplayer" class="dplayer"></div>
    <script src="//cdn.bootcss.com/hls.js/0.9.1/hls.min.js"></script>
    <script src="//cdn.bootcss.com/dplayer/1.22.2/DPlayer.min.js"></script>
    <script type="text/javascript">
    var url ="<?=$m3u8url?>";
    var pic ="<?=$picurl?>";
    var ios = navigator.userAgent.match(/iPad|iPhone|Linux|iPod/i) != null;
    var andr = navigator.userAgent.match(/Android/i) != null;
    if (ios) {
        document.getElementById('dplayer').innerHTML = '<video controls="controls" autoplay="autoplay" width="100%" height="100%" poster="' + pic + '"><source type="application/vnd.apple.mpegurl" src="' + url + '"><source src="' + url + '" type="video/mp4"></video>';
    }else if(andr) {
        document.getElementById('dplayer').innerHTML = '<video controls="controls" autoplay="autoplay" width="100%" height="100%" poster="' + pic + '"><source type="application/x-mpegURL" src="' + url + '"><source src="' + url + '" type="video/mp4"></video>';
    }else {
	    var dp = new DPlayer({
	        element: document.getElementById('dplayer'),
	        autoplay: true,
	        theme: '#28a745',
	        loop: true,
	        screenshot: false,
	        hotkey: true,
	        preload: 'auto',
	        volume: 0.7,
	        mutex: true,
	        video: {
	            url: url,
	            type: "auto"
	        }
	    });
    }
    </script>
</body>
</html>