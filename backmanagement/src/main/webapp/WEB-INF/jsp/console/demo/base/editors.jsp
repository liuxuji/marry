<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/summernote/summernote.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-markdown/css/bootstrap-markdown.min.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="panel panel-white">
			<div class="panel-heading">Ckeditor</div>
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">默认样式</label>
							<div class="col-md-9">
								<textarea id="editor1" name="editor1" rows="6" class="ckeditor form-control"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">行内可编辑的</label>
							<div class="col-md-9">
								<h3 contenteditable="true">
									<strong>光标点击这里，试着编辑一下！</strong>
								</h3>
								<p contenteditable="true">Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque
									dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Curabitur et ligula. Ut molestie a,
									ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor.
									Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac</p>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">Bootstrap WYSIWYG5 Editors</div>
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">Default</label>
							<div class="col-md-9">
								<textarea rows="6" class="wysihtml5 form-control"></textarea>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">Summernote</div>
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">Default</label>
							<div class="col-md-9">
								<div id="summernote-default">Hello Summernote</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Click to Edit</label>
							<div class="col-md-9">
								<button id="summernote-edit" type="button" class="btn btn-primary btn-sm">Edit</button>
								&nbsp;
								<button id="summernote-save" type="button" class="btn btn-primary btn-sm">Save</button>
								<div class="mbm"></div>
								<div class="click2edit">Hello Summernote</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">Bootstrap Markdown</div>
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">Default</label>
							<div class="col-md-9">
								<textarea name="content" data-provide="markdown" rows="10" class="form-control"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Fixed Width</label>
							<div class="col-md-9">
								<textarea name="content" data-provide="markdown" rows="10" data-width="400" class="form-control"></textarea>
								<span class="help-block">Custom width using <code>data-width="400"</code> attribute
								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Inline Editor</label>
							<div class="col-md-9">
								<div data-provide="markdown-editable" class="well">
									<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>
									<p>Well, actually all contents within this "markdown-editable" context is really editable. Just click
										anywhere!</p>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Font Awesome icons</label>
							<div class="col-md-9">
								<textarea name="content" data-provide="markdown" rows="10" data-iconlibrary="fa" class="form-control"></textarea>
								<span class="help-block">using <code>data-iconlibrary="fa"</code></span>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${webroot}/madmin/vendors/ckeditor/ckeditor.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${webroot}/madmin/vendors/summernote/summernote.js"></script>
<script src="${webroot}/js/ui-editors.js"></script>