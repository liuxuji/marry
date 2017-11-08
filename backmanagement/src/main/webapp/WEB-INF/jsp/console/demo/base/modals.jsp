<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="row animated fadeInUp">
	<div class="col-lg-6">
		<div class="panel">
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label for="" class="col-md-3 control-label">默认</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-default" data-toggle="modal" class="btn btn-primary">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">含响应式内容的</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-responsive" data-toggle="modal" class="btn btn-yellow">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">多弹窗堆叠</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-stackable" data-toggle="modal" class="btn btn-green">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">全屏宽</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-full-width" data-toggle="modal" class="btn btn-blue">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">比默认更宽一些的</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-wide-width" data-toggle="modal" class="btn btn-primary">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">静态背景(点击背景不关闭)</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-static" data-toggle="modal" class="btn btn-yellow">View Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">页脚左对齐</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-left-footer" data-toggle="modal" class="btn btn-blue">View
									Demo</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="panel">
			<div class="panel-body pan">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label for="" class="col-md-3 control-label">标题加重</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-header-primary" data-toggle="modal" class="btn btn-green">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">超高弹窗</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-long" data-toggle="modal" class="btn btn-green">View Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">alert</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-alert" data-toggle="modal" class="btn btn-blue">View Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">Confirm</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-confirm" data-toggle="modal" class="btn btn-primary">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">自定义对话框</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-custom-dialog" data-toggle="modal" class="btn btn-yellow">View
									Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">登录</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-login" data-toggle="modal" class="btn btn-green">View Demo</button>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-md-3 control-label">交互</label>
							<div class="col-md-4">
								<button type="button" data-target="#modal-prompt" data-toggle="modal" class="btn btn-blue">View Demo</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--Modal Default-->
<div id="modal-default" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-default-label" class="modal-title">Modal Default</h4>
			</div>
			<div class="modal-body">Modal body goes here</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Left Footer-->
<div id="modal-left-footer" tabindex="-1" role="dialog" aria-labelledby="modal-left-footer-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-left-footer-label" class="modal-title">Modal Left Footer</h4>
			</div>
			<div class="modal-body">Modal body goes here</div>
			<div class="modal-footer modal-footer-left">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Header Color Primary-->
<div id="modal-header-primary" tabindex="-1" role="dialog" aria-labelledby="modal-header-primary-label"
	aria-hidden="true" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header modal-header-primary">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-header-primary-label" class="modal-title">Modal Header Primary</h4>
			</div>
			<div class="modal-body">Modal body goes here</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Responsive-->
<div id="modal-responsive" tabindex="-1" role="dialog" aria-labelledby="modal-responsive-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-responsive-label" class="modal-title">Modal Responsive</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-6">
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
					</div>
					<div class="col-md-6">
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
						<div class="mbm">
							<input type="text" class="form-control" />
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Stackable-->
<div id="modal-stackable" tabindex="-1" role="dialog" aria-labelledby="modal-stackable-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-stackable-label" class="modal-title">Modal Stackable</h4>
			</div>
			<div class="modal-body">
				<p>One fine bodyâ¦</p>
				<p>One fine bodyâ¦</p>
				<p>One fine bodyâ¦</p>
				<input type="text" data-tabindex="1" class="form-control mbm" /> <input type="text" data-tabindex="2"
					class="form-control mbm" /><a data-toggle="modal" data-target="#stack2" class="btn btn-primary">再加载一个弹窗</a>
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<div id="stack2" tabindex="-1" data-focus-on="input:first" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4>Stack Two</h4>
			</div>
			<div class="modal-body">
				<p>One fine bodyâ¦</p>
				<p>One fine bodyâ¦</p>
				<input type="text" data-tabindex="1" class="form-control mbm" /> <input type="text" data-tabindex="2"
					class="form-control mbm" /><a data-toggle="modal" href="#stack3" class="btn btn-default">再加载一个弹窗</a>
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Ok</button>
			</div>
		</div>
	</div>
</div>
<div id="stack3" tabindex="-1" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4>Stack Three</h4>
			</div>
			<div class="modal-body">
				<p>One fine bodyâ¦</p>
				<input type="text" data-tabindex="1" class="form-control mbm" /> <input type="text" data-tabindex="2"
					class="form-control mbm" />
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Ok</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Full Width-->
<div id="modal-full-width" tabindex="-1" role="dialog" aria-labelledby="modal-full-width-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog modal-full-width">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-full-width-label" class="modal-title">Modal Full Width</h4>
			</div>
			<div class="modal-body">Modal body goes here</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Wide Width-->
<div id="modal-wide-width" tabindex="-1" role="dialog" aria-labelledby="modal-wide-width-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog modal-wide-width">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-wide-width-label" class="modal-title">Modal Wide Width</h4>
			</div>
			<div class="modal-body">Modal body goes here</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Static-->
<div id="modal-static" tabindex="-1" data-backdrop="static" data-keyboard="false" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<p>Would you like to continue with some arbitrary task?</p>
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Cancel</button>
				<button type="button" data-dismiss="modal" class="btn btn-primary">Continue Task</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Long-->
<div id="modal-long" tabindex="-1" data-replace="true" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4>A Fairly Long Modal</h4>
			</div>
			<div class="modal-body">
				<a data-toggle="modal" href="#modal-notlong" style="position: absolute; top: 50%; right: 12px"
					class="btn btn-primary">Not So Long Modal</a><img style="height: 800px;" src="http://i.imgur.com/KwPYo.jpg" />
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
			</div>
		</div>
	</div>
</div>
<div id="modal-notlong" tabindex="-1" data-replace="true" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4>Not That Long</h4>
			</div>
			<div class="modal-body">
				<img style="height: 300px;" src="http://i.imgur.com/KwPYo.jpg" />
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Alert-->
<div id="modal-alert" tabindex="-1" role="dialog" aria-hidden="true" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">Hello world !</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-primary">Ok</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Confirm-->
<div id="modal-confirm" tabindex="-1" role="dialog" aria-hidden="true" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">Are you sure?</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Cancel</button>
				<button type="button" data-dismiss="modal" class="btn btn-primary">Ok</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Custom Dialog-->
<div id="modal-custom-dialog" tabindex="-1" role="dialog" aria-hidden="true" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 class="modal-title">Custom Dialog</h4>
			</div>
			<div class="modal-body">I am a custom dialog</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-success">Success !</button>
				<button type="button" data-dismiss="modal" class="btn btn-info">Information !</button>
				<button type="button" data-dismiss="modal" class="btn btn-danger">Danger !</button>
			</div>
		</div>
	</div>
</div>
<!--Modal Login-->
<div id="modal-login" tabindex="-1" role="dialog" aria-labelledby="modal-login-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-login-label" class="modal-title">Login</h4>
			</div>
			<div class="modal-body">
				<div class="form">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="username" class="control-label col-md-3">Username</label>
							<div class="col-md-9">
								<input id="username" type="text" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="control-label col-md-3">Password</label>
							<div class="col-md-9">
								<input id="password" type="password" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-9 col-md-offset-3">
								<button type="button" class="btn btn-primary">Login</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Modal Prompt-->
<div id="modal-prompt" tabindex="-1" role="dialog" aria-labelledby="modal-prompt-label" aria-hidden="true"
	class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
				<h4 id="modal-prompt-label" class="modal-title">What is your name?</h4>
			</div>
			<div class="modal-body">
				<input id="fullname" type="text" class="form-control" />
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
				<button type="button" class="btn btn-primary">OK</button>
			</div>
		</div>
	</div>
</div>
