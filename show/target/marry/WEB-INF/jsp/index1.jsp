<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <script type="text/javascript" src="/js/public/cookie.js"></script>
    <title>禁用滚动和拖动</title>
    <style type="text/css">
        *{
            margin:0px;
            padding:0px;
        }
        body, button, input, select, textarea {
            font: 12px/16px Verdana, Helvetica, Arial, sans-serif;
        }
        p{
            padding-top:3px;
            overflow:hidden;
        }
        #container{
            min-height:500px;
        }
    </style>
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
    <script>

        //初始化函数
        var init = function() {
            var lat = document.getElementById("currentLat").val;
            var lon = document.getElementById("currentLon").val;
            if(lat){lat = getCookie("lat");}
            if(lon){lon = getCookie("lon");}
//            var center = new qq.maps.LatLng(30.578319637165702,104.07300542574244);
            var center = new qq.maps.LatLng(lat,lon);
            //获取地图显示控件
            var map = new qq.maps.Map(document.getElementById("container"),{
                //加载地图经纬度信息
                center: center,
                zoom: 13,                      //设置缩放级别
                draggable: true,               //设置是否可以拖拽
                scrollwheel: true,             //设置是否可以滚动
                disableDoubleClickZoom: true   //设置是否可以双击放大
            });
            <!-- 设置地图比例尺控件 -->
            var scaleControl = new qq.maps.ScaleControl({
                align: qq.maps.ALIGN.BOTTOM_LEFT,
                margin: qq.maps.Size(85, 15),
                map: map
            });
            <!-- 定位坐标半径radius米圆形 -->
            var circle = new qq.maps.Circle({
                map:map,
                center:center,
                radius:1000,
                <!-- 圆内颜色 -->
//                fillColor:"#fff",
                strokeWeight:3,
                strokeColor:"#00f"
            });
        };
        function cc() {
            var url = encodeURI("http://apis.map.qq.com/tools/routeplan/eword=故宫博物馆?referer=myapp&key=4BPBZ-J7RWW-HBJRV-OIVKP-OEDIZ-V4FG2");
            //var url = "http://apis.map.qq.com/tools/routeplan/eword=四川省成都市火车南站?key=4BPBZ-J7RWW-HBJRV-OIVKP-OEDIZ-V4FG2&referer=myapp";
//            document.getElementById("im").src = url;
            window.location.href = url;
            console.log("...hhhh");
        }
//        });
    </script>

</head>
<body onload="init()">
<div id="container"></div>
<div><input id="currentLat" value="${map.lat}" style="display: none"/></div>
<div><input id="currentLon" value="${map.lon}" style="display: none"/></div>
<p>该地图禁址了鼠标拖动、鼠标轮滚缩放、双击放大功能。</p>

<input type="button" id ="go" onclick="cc()" value="ttttt"/>
<img src="" id="im"/>
</body>
</html>

