<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/dropzone/css/dropzone.css">

<div class="row">
	<div class="col-lg-12">
		<p>
			<span class="label label-danger">注意:</span>&nbsp;
			本插件只能运行在最新的Chrome, Firefox, Safari, Opera和Internet Explorer 10及以上。<br/><br/>
			<a target="_blank" href="http://www.renfei.org/blog/dropzone-js-introduction.html">在线中文示例说明</a>
		</p>
		<form id="my-dropzone" action="http://www.torrentplease.com/dropzone.php" class="dropzone"></form>
	</div>
</div>
<script src="${webroot}/madmin/vendors/dropzone/js/dropzone.js"></script>
<script src="${webroot}/js/form-dropzone-file-upload.js"></script>
