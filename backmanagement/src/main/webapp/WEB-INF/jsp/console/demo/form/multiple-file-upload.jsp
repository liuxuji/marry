<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>

<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-file-upload/css/jquery.fileupload.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-file-upload/css/jquery.fileupload-ui.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-file-upload/css/blueimp-gallery.min.css">

<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="note">
			<p>
				文件上传组件包括多文件选择、拖拽上传、进度条、验证和jQuery预览图片、音频、视频。<br/>
				支持跨域名、分块、断点续传文件上传和客户端图片尺寸调整。<br/>
				适用于任何支持标准HTML格式文件上传的服务端平台（PHP, Python, Ruby on Rails, Java, Node.js, Go 等等）。
			</p>
		</div>
		<!-- The file upload form used as target for the file upload widget -->
	    <form id="fileupload" action="${webroot}/imgupload.do" method="POST" enctype="multipart/form-data">
	        <!-- Redirect browsers with JavaScript disabled to the origin page -->
	        <noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript>
	        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
	        <div class="row fileupload-buttonbar">
	            <div class="col-lg-7">
	                <!-- The fileinput-button span is used to style the file input field as button -->
	                <span class="btn btn-success fileinput-button">
	                    <i class="glyphicon glyphicon-plus"></i>
	                    <span>添加文件</span>
	                    <input type="file" name="files[]" multiple>
	                </span>
	                <button type="submit" class="btn btn-primary start">
	                    <i class="glyphicon glyphicon-upload"></i>
	                    <span>开始上传</span>
	                </button>
	                <button type="reset" class="btn btn-warning cancel">
	                    <i class="glyphicon glyphicon-ban-circle"></i>
	                    <span>取消上传</span>
	                </button>
	                <!-- <button type="button" class="btn btn-danger delete">
	                    <i class="glyphicon glyphicon-trash"></i>
	                    <span>删除</span>
	                </button>
	                <input type="checkbox" class="toggle"> -->
	                <!-- The global file processing state -->
	                <span class="fileupload-process"></span>
	            </div>
	            <!-- The global progress state -->
	            <div class="col-lg-5 fileupload-progress fade">
	                <!-- The global progress bar -->
	                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
	                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
	                </div>
	                <!-- The extended global progress state -->
	                <div class="progress-extended">&nbsp;</div>
	            </div>
	        </div>
	        <!-- The table listing the files available for upload/download -->
	        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
	    </form>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Demo说明</h3>
			</div>
			<div class="panel-body">
				<ul>
					<li>本demo的最大可上传文件大小是 &nbsp; <strong>5 MB</strong>&nbsp; (默认文件大小不限)。</li>
					<li>本demo只能上传图片文件( &nbsp; <strong>JPG, GIF, PNG</strong>&nbsp; ) (默认情况下没有文件类型限制)。</li>
					<li>
					你可以将桌面上的文件<strong>拖拽</strong>到本页面上 (查看 <a
						target="_blank"
						href="https://github.com/blueimp/jQuery-File-Upload/wiki/Browser-support">支持的浏览器</a>&nbsp;)。
					</li>
					<li>获取更多信息参照 &nbsp; <a target="_blank" href="https://github.com/blueimp/jQuery-File-Upload">项目网站</a>&nbsp;
						和 &nbsp; <a target="_blank" href="https://github.com/blueimp/jQuery-File-Upload/wiki">参考文档</a>。
					</li>
					<li>基于 Twitter's &nbsp; <a target="_blank" href="http://twitter.github.com/bootstrap/">Bootstrap</a>&nbsp; CSS
						framework，图标提供商： <a target="_blank" href="http://glyphicons.com/">Glyphicons</a>&nbsp; 。
					</li>
					<li><a target="_blank" href="http://blueimp.github.io/jQuery-File-Upload/">官网Demo</a></li>
				</ul>
			</div>
		</div>
		<!-- The blueimp Gallery widget -->
		<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
		    <div class="slides"></div>
		    <h3 class="title"></h3>
		    <a class="prev">‹</a>
		    <a class="next">›</a>
		    <a class="close">×</a>
		    <a class="play-pause"></a>
		    <ol class="indicator"></ol>
		</div>
		<!-- The template to display files available for upload -->
		<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>开始上传</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>取消上传</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
	</script>
		<!-- The template to display files available for download -->
		<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">出错了！</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>删除</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>取消</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
	</script>
	</div>
</div>

<script src="${webroot}/madmin/vendors/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/vendor/tmpl.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/vendor/load-image.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/vendor/canvas-to-blob.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/vendor/jquery.blueimp-gallery.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.iframe-transport.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload-process.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload-image.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload-video.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
<script src="${webroot}/madmin/vendors/jquery-file-upload/js/cors/jquery.xdr-transport.js"></script>
<script src="${webroot}/js/form-multiple-file-upload.js"></script>
<script type="text/javascript">
$(function(){
	$('input').iCheck({
        checkboxClass: 'icheckbox_minimal-grey',
        radioClass: 'iradio_minimal',
        increaseArea: '20%' // optional
    });
});
</script>
