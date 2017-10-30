<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/baseTag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title刘</title>
    <!-- 为更好的兼容性,需加上下面标记-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />

    <!--腾讯前端定位组件 -->
    <script src="https://3gimg.qq.com/lightmap/components/geolocation/geolocation.min.js"></script>
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
    <script type="text/javascript" src="/js/public/jquery.js?0000"></script>
    <script type="text/javascript" src="/js/public/mui.min.js?0000"></script>
    <script type="text/javascript" src="/js/public/public.js?0000" ></script>
    <script type="text/javascript" src="/js/public/common.js"></script>
    <script type="text/javascript" src="/js/public/cookie.js"></script>
    <style type = "text/class">
        #container{
            min-width:100%;
            min-height:500px;
        }
    </style>
</head>
<body>

    <div id="latAddress" style="display: none"></div>
    <div id="lonAddress" style="display: none"></div>

    <div id="container"></div>
</body>
</html>

<script style="text/javascript>">

    $(function () {
        <!-- 腾讯地图定位调用 -->
        window.onload = geolocation.getLocation(seolocationSuc, seolocationErr, options);
    });

    var geolocation = new qq.maps.Geolocation("4BPBZ-J7RWW-HBJRV-OIVKP-OEDIZ-V4FG2","marry");
    var options = {
        timeout: 10000
    };

    <!-- 腾讯地图成功回调函数 -->
    function seolocationSuc(position) {
        var weatherLocation = 0;
        if(weatherLocation == "0"){
            var addressLatLon= gcj02TObd09(position.lat, position.lng);
            $("#lat").html = addressLatLon.lat;
            $("#lon").html = addressLatLon.lng;
            setMapProperties(addressLatLon.lat,addressLatLon.lng);
            addCookie("lat",addressLatLon.lat);
            addCookie("lon",addressLatLon.lng);
        }
    };

    <!-- 腾讯地图调用失败回调函数 -->
    function seolocationErr() {
        //定位失败执行内容
        console.log("定位失败");
        geolocation.getLocation(seolocationSuc, seolocationErr, options);
    };

    function gcj02TObd09(lat, lng){
        var $pi = 3.14159265358979324 * 3000.0 / 180.0;
        var $x = lng;
        var $y = lat;
        var $z = Math.sqrt($x * $x + $y * $y) + 0.00002 * Math.sin($y * $pi);
        var $theta = Math.atan2($y, $x) + 0.000003 * Math.cos($x * $pi);
        var $lng = $z * Math.cos($theta) + 0.0065;
        var $lat = $z * Math.sin($theta) + 0.006;
        var address = {};
        address.lat= $lat;
        address.lng = $lng;
        return address;
    }


    function setMapProperties(lat,lon){
        var center = new qq.maps.LatLng(lat,lon);
        var map = new qq.maps.Map(document.getElementById("container"),{
            //加载地图经纬度信息
            center: center,
            zoom: 13,                       //设置缩放级别
            draggable: true,               //设置是否可以拖拽
            scrollwheel: true,             //设置是否可以滚动
            disableDoubleClickZoom: true    //设置是否可以双击放大
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
        console.log("...." + lat + "," + lon);
    };

</script>
