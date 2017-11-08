<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-notific8/jquery.notific8.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/sco.message/sco.message.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="note note-success">
			<h4 class="box-heading">Sco.message</h4>
			<p>Sco.message 和 Notific8 两者是独立的，你可以很方便的定制他们。</p>
		</div>
	</div>
	<div class="col-lg-12">
		<div class="panel panel-red">
			<div class="panel-heading">notific8</div>
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label for="" class="col-md-3 control-label">通知内容：</label>
							<div class="col-md-6">
								<input id="notific8Text" type="text" value="notific8 was inspired by Windows 8 notifications"
									placeholder="enter a text ..." class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">不自动关闭：</label>
							<div class="col-md-6">
								<input id="notific8Sticky" type="checkbox" name="notific8Sticky" />&nbsp; (如果选中，显示时长的选择将失效)
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">显示时长：</label>
							<div class="col-md-6">
								<select id="notific8Life" name="notific8Life" class="form-control">
									<option value="1000">1 秒</option>
									<option value="5000">5 秒</option>
									<option value="10000" selected="selected">10 秒 (默认)</option>
									<option value="25000">25 秒</option>
									<option value="60000">60 秒</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">标题 (可选的):</label>
							<div class="col-md-6">
								<input id="notific8Heading" type="text" name="notific8Heading" size="50" maxlength="50" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">样式主题：</label>
							<div class="col-md-6">
								<select id="notific8Theme" name="notific8Theme" class="form-control">
									<option value="teal" selected="selected">青色 (默认)</option>
									<option value="amethyst">紫水晶色</option>
									<option value="ruby">宝石红色</option>
									<option value="tangerine">橙色</option>
									<option value="lemon">柠檬黄色</option>
									<option value="lime">绿黄色</option>
									<option value="ebony">黑檀木色</option>
									<option value="smoke">烟色</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">显示位置：</label>
							<div class="col-md-3">
								<select id="notific8horizontal" name="notific8horizontal" class="form-control">
									<option value="top">顶部 (默认)</option>
									<option value="bottom">底部</option>
								</select>
							</div>
							<div class="col-md-3">
								<select id="notific8vertical" name="notific8vertical" class="form-control">
									<option value="right">右侧 (默认)</option>
									<option value="left">左侧</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label"></label>
							<div class="col-md-9">
								<button id="notific8Test" type="button" name="notific8Test" class="btn btn-primary">演示 notific8</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-green">
			<div class="panel-heading">Sco.message</div>
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label for="" class="col-md-3 control-label"></label>
							<div class="col-md-9">
								<button id="message_trigger_ok" type="button" name="Sco.messageTest" class="btn btn-success mll">演示
									Sco.message.ok</button>
								<button id="message_trigger_err" type="button" name="Sco.messageTest" class="btn btn-danger mll">演示
									Sco.message.error</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/sco.message/sco.message.js"></script>
<script src="${webroot}/madmin/vendors/jquery-notific8/notific8.js"></script>
<script src="${webroot}/js/ui-notific8.js"></script>