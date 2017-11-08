<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div id="pagebody" class="row animated fadeInUp">
	这里是三级菜单4，测试演示。<br/>
	<button id="testnt" class="btn btn-primary" type="button">Primary</button>
</div>
<script type="text/javascript">
$(function(){
	$("#testnt").click(function(){
		$("#pagebody").append("AAAAA<br/>");
	});
});
</script>