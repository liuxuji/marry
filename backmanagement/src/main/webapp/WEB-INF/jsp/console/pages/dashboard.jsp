<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
.index-table{text-align: center; margin-bottom: 0!important; border-bottom: 1px solid #ddd;  border-right: 1px solid #ddd;border-collapse: collapse!important; border-radius: 1px;}
.index-table tr{height:40px;line-height:40px!important;}
.index-table tr td{padding:11px 0px!important; border-left: 1px solid #ddd; border-top: 1px solid #ddd!important;}
.bd-right{border-right:1px solid #ddd;}
.bd-bottom{border-bottom: 1px solid #ddd;}
</style>
<div class="row animated fadeInUp">
	<h1>控制台</h1>
	<table class="table table-hover table-striped index-table">
	     <tr>
	        <td>今日订单量</td>
	        <td id="oisTodayOrderCount">0</td>
	        <td>今日快喝订单量</td>
	        <td class="bd-right" id="oisTodayKuaiheOrderCount">0</td>
	     </tr>
	      <tr>
	        <td>今日销售额</td>
	        <td id="oisTodayOrderAmount"><fmt:formatNumber value="0" pattern="￥0.00"/></td>
	        <td>今日快喝销售额</td>
	        <td class="bd-right" id="oisTodayKuaiheOrderAmount"><fmt:formatNumber value="0" pattern="￥0.00"/></td>
	     </tr>
	      <tr>
	        <td></td>
	        <td></td>
	        <td></td>
	        <td class="bd-right"></td>
	     </tr>
	       <tr>
	        <td>本月订单量</td>
	        <td id="oisPresentMonthOrderCount">0</td>
	        <td>本月快喝订单量</td>
	        <td class="bd-right" id="oisPresentMonthKuaiheOrderCount">0</td>
	     </tr>
	      <tr>
	        <td>本月销售额</td>
	        <td class="bd-bottom" id="oisPresentMonthOrderAmount"><fmt:formatNumber value="0" pattern="￥0.00"/></td>
	        <td class="bd-bottom">本月快喝销售额</td>
	        <td class="bd-right bd-bottom" id="oisPresentMonthKuaiheOrderAmount"><fmt:formatNumber value="0" pattern="￥0.00"/></td>
	     </tr>
	      <tr>
	        <th>中台MNS消息更新情况</th>
	     </tr>
	     <tr>
	        <td>mns门店最近更新时间</td>
	        <td id="mnsDepotUpdateTimestamp">--</td>
	        <td>门店编码</td>
	        <td class="bd-right" id="mnsDepotDepotCode">--</td>
	     </tr>
	     
	     <tr>
	        <td>mns商品最近更新时间</td>
	        <td id="mnsProductUpdateTimestamp">--</td>
	        <td >商品编码</td>
	        <td class="bd-right " id="mnsProductMatnr">--</td>
	     </tr>
	     <tr>
	        <td>mns组合商品最近更新时间</td>
	        <td id="mnsMixProductUpdateTimestamp">--</td>
	        <td>商品编码</td>
	        <td class="bd-right" id="mnsMixProductCenterId">--</td>
	     </tr>
	     <tr>
	        <td>mns会员最近同步时间</td>
	        <td id="mnsMemberChangeUpdateTimestamp">--</td>
	        <td>会员ID</td>
	        <td class="bd-right" id="mnsMemberChangeMemberId">--</td>
	     </tr>
	     <tr>
	        <td>mns门店促销最近更新时间</td>
	        <td id="mnsPromotionUpdateTimestamp">--</td>

	        <td>今日促销活动增量数量</td>
	        <td class="bd-right" id="amountOfDepotPromotionIncrement">0</td>
	     </tr>
	     
	     <tr>
	        <td>mns物流最近更新时间</td>
	        <td id="mnsOrderReserveUpdateTimestamp">--</td>
	        <td>订单编号</td>
	        <td class="bd-right" id="mnsOrderReserveOrderBn">--</td>
	     </tr>
	     <tr>
	        <td>mns区域价格最近更新时间</td>
	        <td id="mnsPriceUpdateTimestamp">--</td>
	        <td class="bd-bottom">商品编码</td>
	        <td class="bd-right bd-bottom" id="mnsPriceMatnr">--</td>
	     </tr>
	     
	     <tr>
	        <td>mns全量库存最近更新时间</td>
	        <td class="bd-right" id="mnsStockAllUpdateTimestamp">--</td>
	     </tr>
	     
	     <tr>
	        <td>mns全量价格最近更新时间</td>
	        <td class="bd-right" id="mnsPriceAllUpdateTimestamp">--</td>
	     </tr>
	     
	     <tr>
	        <td>mns全量促销价格最近更新时间</td>
	        <td class="bd-right" id="mnsPromotionPriceAllUpdateTimestamp">--</td>
	        <td>今日促销活动全量数量</td>
	        <td class="bd-right" id="amountOfDepotPromotionAll">0</td>
	     </tr>
	     <!--
	      <tr>
	        <td></td>
	        <td></td>
	        <td></td>
	        <td></td>
	     </tr>
	      <tr>
	        <td>app订单量</td>
	        <td>1000000</td>
	        <td>微商城订单量</td>
	        <td>100000</td>
	     </tr>
	      <tr>
	        <td>货到付款总金额</td>
	        <td>无</td>
	        <td>在线支付</td>
	        <td>100000000</td>
	     </tr>
	     --> 
	</table>
</div>
<script>
	$.ajax('${webroot}/console/dashboard/list.do', {
		dataType : 'json',
		success : function(data) {
			getData(data);
		},
		error : function(xhr, type, errorThrown) {
			console.log(errorThrown);
		}
	});
	function getData(data){
		var ois = data.ois;
		$('#oisTodayOrderCount').text(ois.todayOrderCount);
		$('#oisTodayKuaiheOrderCount').text(ois.todayKuaiheOrderCount);
		if(ois.todayOrderAmount>0){
			$('#oisTodayOrderAmount').html('¥'+ois.todayOrderAmount);
		}
		if(ois.todayKuaiheOrderAmount>0){
			$('#oisTodayKuaiheOrderAmount').html('¥'+ois.todayKuaiheOrderAmount);
		}
		$('#oisPresentMonthOrderCount').text(ois.presentMonthOrderCount);
		$('#oisPresentMonthKuaiheOrderCount').text(ois.presentMonthKuaiheOrderCount);
		if(ois.presentMonthOrderAmount>0){
			$('#oisPresentMonthOrderAmount').html('¥'+ois.presentMonthOrderAmount);
		}
		if(ois.presentMonthKuaiheOrderAmount>0){
			$('#oisPresentMonthKuaiheOrderAmount').html('¥'+ois.presentMonthKuaiheOrderAmount);
		}
		
		var mnsDepot = data.mnsDepot;
		$('#mnsDepotUpdateTimestamp').text(mnsDepot.updateTimestamp);
		$('#mnsDepotDepotCode').text(mnsDepot.depotCode);
		
		var memberChange = data.memberChange;
		$('#mnsMemberChangeUpdateTimestamp').text(memberChange.updateTimestamp);
		$('#mnsMemberChangeMemberId').text(memberChange.memberId);
		
		var mixProduct = data.mixProduct;
		$('#mnsMixProductUpdateTimestamp').text(mixProduct.updateTimestamp);
		$('#mnsMixProductCenterId').text(mixProduct.centerId);
		
		var orderReserve = data.orderReserve;
		$('#mnsOrderReserveUpdateTimestamp').text(orderReserve.updateTimestamp);
		$('#mnsOrderReserveOrderBn').text(orderReserve.orderBn);
		
		var mnsPromotion = data.mnsPromotion;
		$('#mnsPromotionUpdateTimestamp').text(mnsPromotion.updateTimestamp);
		
		var mnsPrice = data.mnsPrice;
		$('#mnsPriceUpdateTimestamp').text(mnsPrice.updateTimestamp);
		$('#mnsPriceMatnr').text(mnsPrice.matnr);
		
		var mnsProduct = data.mnsProduct;
		$('#mnsProductUpdateTimestamp').text(mnsProduct.updateTimestamp);
		$('#mnsProductMatnr').text(mnsProduct.matnr);
		
		var mnsStockAll = data.mnsStockAll;
		$('#mnsStockAllUpdateTimestamp').text(mnsStockAll.updateTimestamp);
		
		var mnsPriceAll = data.mnsPriceAll;
		$('#mnsPriceAllUpdateTimestamp').text(mnsPriceAll.updateTimestamp);
		
		var mnsPromotionPriceAll = data.mnsPromotionPriceAll;
		$('#mnsPromotionPriceAllUpdateTimestamp').text(mnsPromotionPriceAll.updateTimestamp);
		
		var amountOfDepotPromotionAll = data.amountOfDepotPromotionAll;
		$('#amountOfDepotPromotionAll').text(amountOfDepotPromotionAll);
		
		var amountOfDepotPromotionIncrement = data.amountOfDepotPromotionIncrement;
		$('#amountOfDepotPromotionIncrement').text(amountOfDepotPromotionIncrement);
		
	}
</script>
