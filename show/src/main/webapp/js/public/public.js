window.base="/b2c1919";
mui(function(){
	mui(".mui-bar-tab").on('tap','.n-home,.mui-icon-home',function(){
	  //首页
	  mui.openWindow({
	    id:'index',
	    url:window.base+'/index/index.do'
	  });
	  
	});
	mui(".mui-bar-tab").on('tap','.n-type',function(){
	  //分类
	  mui.openWindow({
	    id:'classification',
	    url:window.base+'/product/init_classification.do'
	  });
	});
	mui(".mui-bar-tab").on('tap','.n-drink',function(){
	  //快喝
	  mui.openWindow({
	    id:'drink',
	    url:window.base+'/drink/index.do'
	  });
	});
	//购物车跳转
	$(".n-cart").on("tap",function(){
		var data = JSON.stringify({
				   cookieName:shop_cart_param.emall_shop_cart_cookie_name,
				   productSeparator:shop_cart_param.product_separator,
				   productQuantitySeparator:shop_cart_param.product_quantity_separator
					});
		mui.openWindow({url:window.base+"/shopcart/goShopCart.do?cityId="+getCookie("cityId")+"&cookieName=" + shop_cart_param.emall_shop_cart_cookie_name
		+"&productSeparator="+encodeURIComponent(shop_cart_param.product_separator)+"&productQuantitySeparator="+shop_cart_param.product_quantity_separator});
	});
	mui(".mui-bar-tab").on('tap','.n-member',function(){
	  //个人中心
	  mui.openWindow({
	    id:'member',
	    url:window.base+'/member/info.do'
	  });
	});
});
//微商城accountId传1260872796 
function getYMStatisticsImageUrl(accountId){
	var scheme = window.location.protocol;
	var referrer = document.referrer;
	var rdn = parseInt(Math.random() * 0x7fffffff);
	var imgUrl = scheme+"//c.cnzz.com/wapstat.php?siteid=" + accountId + "&r=" + encodeURI(referrer) + "&rnd=" + rdn;
	return imgUrl;
}
window.onload = function () {
	// 使用createElement创建元素
	var dialog = document.createElement('div');
	var img = document.createElement('img');
	// 添加class
	dialog.className = 'imgSTATIS';
	// 属性
	img.src = getYMStatisticsImageUrl(1260872796);
	// 在容器元素中放入其他元素
	dialog.appendChild(img);
	document.body.appendChild(dialog);
}
var ossConfig = {
	remote_endpoint:"oss-cn-beijing.aliyuncs.com",
	bucketName:"kuaihe-pro"
};
function alert(msg){
	mui.alert(msg, '', function() {
	});
};
function buildOssPath(path){
	if(path != null){
		if(path.indexOf("/")!=-1){
			return path;
		}else{
			return "https://"+ossConfig.bucketName+"."+ossConfig.remote_endpoint+"/"+path;
		}
	}
};
/*格式化日期代码*/
function add0(m){return m<10?'0'+m:m }
function formatDate(shijianchuo){
	//shijianchuo是整数，否则要parseInt转换
	var time = new Date(shijianchuo);
	var y = time.getFullYear();
	var m = time.getMonth()+1;
	var d = time.getDate();
	var h = time.getHours();
	var mm = time.getMinutes();
	var s = time.getSeconds();
	return y+'/'+add0(m)+'/'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}
function formatDateHour(shijianchuo){
	var time = new Date(shijianchuo);
	var h = time.getHours();
	var mm = time.getMinutes();
	return add0(h)+':'+add0(mm);
}
//————————————定位 start————————————
//查询cookie
function getCookie(cookieName) {
	var name = cookieName + "=";
	var ca = document.cookie.split(';');
	for(var i=0; i<ca.length; i++) 
	  {
	  var c = ca[i].trim();
	  if (c.indexOf(name)==0) 
		  return c.substring(name.length,c.length);
	  }
	return "";
};

//检测cityId cookie
function checkCookie() {
	var cityId=getCookie("cityId");
	if (cityId==""){
		//引入腾讯前端定位组件 执行定位
		$.getScript("https://3gimg.qq.com/lightmap/components/geolocation/geolocation.min.js", 
			function(data, textStatus, jqxhr) {
			   console.log(data); //data returned
			   console.log(textStatus); //success
			   console.log(jqxhr.status); //200
			   var geolocation = new qq.maps.Geolocation("OB4BZ-D4W3U-B7VVO-4PJWW-6TKDJ-WPB77", "myapp");
			   var options = {timeout: 8000};
			   geolocation.getLocation(getLocationSuccess,getLocationError, options);
			});
	}
};

//定位成功执行函数
function getLocationSuccess(position) {
	console.log(position.city);
	$.ajax(window.base+'/index/location.do', {
		data: {
			cityName: position.city,
		},
		dataType: 'json',
		success: function(data) {
			location.reload(true);
		},
		error: function(xhr, type, errorThrown) {
			console.log("选择城市后，发送ajax请求失败");
		}
	});

};

//定位失败执行函数
function getLocationError() {
	mui.alert('定位失败请手动选择城市', '提示', function() {
		window.location.href = window.base+'/index/cityPosition.do';
	});
};
//————————————定位 end————————————