<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-toastr/toastr.min.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="title" class="control-label">标题</label> <input id="title" type="text" value="Toastr Notifications"
								placeholder="Enter a title ..." class="form-control" />
						</div>
						<div class="form-group">
							<label for="message" class="control-label">内容</label>
							<textarea id="message" rows="3" placeholder="输入通知内容 ..." class="form-control"></textarea>
						</div>
						<div class="form-group">
							<div class="checkbox mbm">
								<label for="closeButton">
									<input id="closeButton" type="checkbox" value="checked" class="input-mini" />&nbsp;&nbsp;
									关闭按钮
								</label>
							</div>
							<div class="checkbox mbm">
								<label for="addBehaviorOnToastClick">
									<input id="addBehaviorOnToastClick" type="checkbox" value="checked" class="input-mini" />&nbsp;&nbsp;
									给toast增加点击事件
								</label>
							</div>
							<div class="checkbox">
								<label for="debugInfo"> <input id="debugInfo" type="checkbox" value="checked" class="input-mini" />&nbsp;&nbsp;
									Console输出Debug信息
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div id="toastTypeGroup" class="form-group">
							<label>Toast 类型</label>
							<div class="radio mbm">
								<label> <input type="radio" name="toasts" value="success" checked="" />&nbsp; Success
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="toasts" value="info" />&nbsp; Info
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="toasts" value="warning" />&nbsp; Warning
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="toasts" value="error" />&nbsp; Error
								</label>
							</div>
						</div>
						<div id="positionGroup" class="form-group">
							<label>显示位置</label>
							<div class="radio mbm">
								<label> <input type="radio" name="positions" value="toast-top-right" checked="" />&nbsp; 右上角
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="positions" value="toast-bottom-right" />&nbsp; 右下角
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="positions" value="toast-bottom-left" />&nbsp; 左下角
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="positions" value="toast-top-left" />&nbsp; 左上角
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="positions" value="toast-top-full-width" />&nbsp; 顶部全屏宽
								</label>
							</div>
							<div class="radio mbm">
								<label> <input type="radio" name="positions" value="toast-bottom-full-width" />&nbsp; 底部全屏宽
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<div class="controls">
								<label for="showEasing" class="control-label">showEasing</label>
								<input id="showEasing" type="text" placeholder="swing, linear" value="swing" class="form-control input-small" /> <br />
								<label for="hideEasing" class="control-label">hideEasing</label>
								<input id="hideEasing" type="text" placeholder="swing, linear" value="linear" class="form-control input-small" /> <br />
								<label for="showMethod" class="control-label">showMethod</label>
								<input id="showMethod" type="text" placeholder="show, fadeIn, slideDown" value="fadeIn" class="form-control input-small" /> <br />
								<label for="hideMethod" class="control-label">hideMethod</label>
								<input id="hideMethod" type="text" placeholder="hide, fadeOut, slideUp" value="fadeOut" class="form-control input-small" />
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<div class="controls">
								<div class="controls">
									<label for="showDuration" class="control-label">动画显示时长 ms</label>
									<input id="showDuration" type="text" placeholder="ms" value="300" class="form-control input-small" /> <br />
									<label for="hideDuration" class="control-label">动画隐藏时长 ms</label>
									<input id="hideDuration" type="text" placeholder="ms" value="1000" class="form-control input-small" /> <br />
									<label for="timeOut" class="control-label">显示时长 ms</label>
									<input id="timeOut" type="text" placeholder="ms" value="5000" class="form-control input-small" /> <br />
									<label for="timeOut" class="control-label">
										<abbr title="鼠标悬停离开后仍然显示的时长">加长显示时长 ms</abbr>
									<input id="extendedTimeOut" type="text" placeholder="ms" value="1000" class="form-control input-small" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<button id="showtoast" type="button" class="btn btn-primary">查看演示</button>
						&nbsp;
						<button id="cleartoasts" type="button" class="btn btn-danger">清除所有Toasts</button>
						&nbsp;
						<button id="clearlasttoast" type="button" class="btn btn-danger">清除最后一条Toast</button>
					</div>
				</div>
				<div class="row mtxl">
					<div class="col-md-12">
						<pre id="toastrOptions"></pre>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/jquery-toastr/toastr.min.js"></script>
<script src="${webroot}/js/ui-toastr-notifications.js"></script>