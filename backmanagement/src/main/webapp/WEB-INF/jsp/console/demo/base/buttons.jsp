<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-6">
		<div class="panel panel-white">
			<div class="panel-heading">线框按钮</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-default btn-outlined">Default</button>
					<button type="button" class="btn btn-primary btn-outlined">Primary</button>
					<button type="button" class="btn btn-success btn-outlined">Success</button>
					<button type="button" class="btn btn-info btn-outlined">Info</button>
					<button type="button" class="btn btn-warning btn-outlined">Warning</button>
					<button type="button" class="btn btn-danger btn-outlined">Danger</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">线框按钮 - 颜色</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-red btn-outlined">Red</button>
					<button type="button" class="btn btn-orange btn-outlined">Orange</button>
					<button type="button" class="btn btn-green btn-outlined">Green</button>
					<button type="button" class="btn btn-yellow btn-outlined">Yellow</button>
					<button type="button" class="btn btn-blue btn-outlined">Blue</button>
					<button type="button" class="btn btn-violet btn-outlined">Violet</button>
					<button type="button" class="btn btn-pink btn-outlined">Pink</button>
					<button type="button" class="btn btn-grey btn-outlined">Grey</button>
					<button type="button" class="btn btn-dark btn-outlined">Dark</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">直角线框按钮</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-default btn-outlined btn-square">Default</button>
					<button type="button" class="btn btn-primary btn-outlined btn-square">Primary</button>
					<button type="button" class="btn btn-success btn-outlined btn-square">Success</button>
					<button type="button" class="btn btn-info btn-outlined btn-square">Info</button>
					<button type="button" class="btn btn-warning btn-outlined btn-square">Warning</button>
					<button type="button" class="btn btn-danger btn-outlined btn-square">Danger</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">直角线框按钮 - 颜色</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-red btn-outlined btn-square">Red</button>
					<button type="button" class="btn btn-orange btn-outlined btn-square">Orange</button>
					<button type="button" class="btn btn-green btn-outlined btn-square">Green</button>
					<button type="button" class="btn btn-yellow btn-outlined btn-square">Yellow</button>
					<button type="button" class="btn btn-blue btn-outlined btn-square">Blue</button>
					<button type="button" class="btn btn-violet btn-outlined btn-square">Violet</button>
					<button type="button" class="btn btn-pink btn-outlined btn-square">Pink</button>
					<button type="button" class="btn btn-grey btn-outlined btn-square">Grey</button>
					<button type="button" class="btn btn-dark btn-outlined btn-square">Dark</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">垂直排列按钮组合</div>
			<div class="panel-body">
				<div class="btn-group-vertical mbm">
					<button type="button" class="btn btn-default">
						<i class="fa fa-align-left"></i>
					</button>
					<button type="button" class="btn btn-default">
						<i class="fa fa-align-center"></i>
					</button>
					<button type="button" class="btn btn-default">
						<i class="fa fa-align-right"></i>
					</button>
					<button type="button" class="btn btn-default">
						<i class="fa fa-align-justify"></i>
					</button>
				</div>
				&nbsp;&nbsp;
				<div class="btn-group-vertical mbm">
					<button type="button" class="btn btn-primary">
						<i class="fa fa-align-left"></i>
					</button>
					<button type="button" class="btn btn-primary">
						<i class="fa fa-align-center"></i>
					</button>
					<button type="button" class="btn btn-primary">
						<i class="fa fa-align-right"></i>
					</button>
					<button type="button" class="btn btn-primary">
						<i class="fa fa-align-justify"></i>
					</button>
				</div>
				&nbsp;&nbsp;
				<div class="btn-group-vertical mbm">
					<button type="button" class="btn btn-green">
						<i class="fa fa-align-left"></i>
					</button>
					<button type="button" class="btn btn-green">
						<i class="fa fa-align-center"></i>
					</button>
					<button type="button" class="btn btn-green">
						<i class="fa fa-align-right"></i>
					</button>
					<button type="button" class="btn btn-green">
						<i class="fa fa-align-justify"></i>
					</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">两端对齐按钮组合</div>
			<div class="panel-body">
				<div class="btn-group btn-group-justified">
					<a role="button" class="btn btn-default">Left</a><a role="button" class="btn btn-default">Middle</a><a
						role="button" class="btn btn-default">Right</a>
				</div>
				<br />
				<div class="btn-group btn-group-justified">
					<a role="button" class="btn btn-default">Left</a><a role="button" class="btn btn-default">Middle</a>
					<div class="btn-group">
						<a data-toggle="dropdown" class="btn btn-default dropdown-toggle">Dropdown &nbsp;<span class="caret"></span></a>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">分裂式按钮下拉菜单</div>
			<div class="panel-body">
				<div class="demo-btn-group">
					<div class="btn-group">
						<button type="button" class="btn btn-default">Default</button>
						<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-primary">Primary</button>
						<button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success">Success</button>
						<button type="button" data-toggle="dropdown" class="btn btn-success dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-warning">Warning</button>
						<button type="button" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-info">Info</button>
						<button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-danger">Danger</button>
						<button type="button" data-toggle="dropdown" class="btn btn-danger dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-red">Red</button>
						<button type="button" data-toggle="dropdown" class="btn btn-red dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-orange">Orange</button>
						<button type="button" data-toggle="dropdown" class="btn btn-orange dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-green">Green</button>
						<button type="button" data-toggle="dropdown" class="btn btn-green dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-yellow">Yellow</button>
						<button type="button" data-toggle="dropdown" class="btn btn-yellow dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-blue">Blue</button>
						<button type="button" data-toggle="dropdown" class="btn btn-blue dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-violet">Violet</button>
						<button type="button" data-toggle="dropdown" class="btn btn-violet dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-pink">Pink</button>
						<button type="button" data-toggle="dropdown" class="btn btn-pink dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-grey">Grey</button>
						<button type="button" data-toggle="dropdown" class="btn btn-grey dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-dark">Dark</button>
						<button type="button" data-toggle="dropdown" class="btn btn-dark dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">分裂式按钮上拉菜单</div>
			<div class="panel-body">
				<div role="toolbar" class="btn-toolbar">
					<div class="btn-group dropup">
						<button type="button" class="btn btn-default">Dropup</button>
						<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group dropup">
						<button type="button" class="btn btn-primary">Right dropup</button>
						<button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">
							<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul role="menu" class="dropdown-menu pull-right">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="panel panel-white">
			<div class="panel-heading">默认按钮</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-default">Default</button>
					<button type="button" class="btn btn-primary">Primary</button>
					<button type="button" class="btn btn-success">Success</button>
					<button type="button" class="btn btn-info">Info</button>
					<button type="button" class="btn btn-warning">Warning</button>
					<button type="button" class="btn btn-danger">Danger</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">默认按钮 - 颜色</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-red">Red</button>
					<button type="button" class="btn btn-orange">Orange</button>
					<button type="button" class="btn btn-green">Green</button>
					<button type="button" class="btn btn-yellow">Yellow</button>
					<button type="button" class="btn btn-blue">Blue</button>
					<button type="button" class="btn btn-violet">Violet</button>
					<button type="button" class="btn btn-pink">Pink</button>
					<button type="button" class="btn btn-grey">Grey</button>
					<button type="button" class="btn btn-dark">Dark</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">直角按钮</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-default btn-square">Default</button>
					<button type="button" class="btn btn-primary btn-square">Primary</button>
					<button type="button" class="btn btn-success btn-square">Success</button>
					<button type="button" class="btn btn-info btn-square">Info</button>
					<button type="button" class="btn btn-warning btn-square">Warning</button>
					<button type="button" class="btn btn-danger btn-square">Danger</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">直角按钮 - 颜色</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-red btn-square">Red</button>
					<button type="button" class="btn btn-orange btn-square">Orange</button>
					<button type="button" class="btn btn-green btn-square">Green</button>
					<button type="button" class="btn btn-yellow btn-square">Yellow</button>
					<button type="button" class="btn btn-blue btn-square">Blue</button>
					<button type="button" class="btn btn-violet btn-square">Violet</button>
					<button type="button" class="btn btn-pink btn-square">Pink</button>
					<button type="button" class="btn btn-grey btn-square">Grey</button>
					<button type="button" class="btn btn-dark btn-square">Dark</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">按钮大小</div>
			<div class="panel-body">
				<div class="demo-btn">
					<button type="button" class="btn btn-default btn-lg">Large Button</button>
					<button type="button" class="btn btn-default">Default Button</button>
					<button type="button" class="btn btn-default btn-sm">Small Button</button>
					<button type="button" class="btn btn-default btn-xs">Extra Small Button</button>
					<div class="mbm"></div>
					<button type="button" class="btn btn-default btn-block">Block Button</button>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">按钮组</div>
			<div class="panel-body">
				<div role="toolbar" class="btn-toolbar">
					<div class="btn-group">
						<button type="button" class="btn btn-default">1</button>
						<button type="button" class="btn btn-default">2</button>
						<button type="button" class="btn btn-default">3</button>
						<button type="button" class="btn btn-default">4</button>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-default">5</button>
						<button type="button" class="btn btn-default">6</button>
						<button type="button" class="btn btn-default">7</button>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-default">8</button>
					</div>
				</div>
				<br />
				<div role="toolbar" class="btn-toolbar">
					<div class="btn-group mbm">
						<button type="button" class="btn btn-default">Left</button>
						<button type="button" class="btn btn-default">Middle</button>
						<button type="button" class="btn btn-default">Right</button>
					</div>
				</div>
				<div role="toolbar" class="btn-toolbar">
					<div class="btn-group">
						<div class="btn-group">
							<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
								Dropdown &nbsp; <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Dropdown link</a></li>
								<li><a href="#">Dropdown link</a></li>
							</ul>
							<button type="button" class="btn btn-default">1</button>
							<button type="button" class="btn btn-default">2</button>
							<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
								Dropdown &nbsp; <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Dropdown link</a></li>
								<li><a href="#">Dropdown link</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">单按钮下拉菜单</div>
			<div class="panel-body">
				<div class="demo-btn-group">
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
							Default &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">
							Primary &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-success dropdown-toggle">
							Success &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">
							Info &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">
							Warning &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-danger dropdown-toggle">
							Danger &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-red dropdown-toggle">
							Red &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-orange dropdown-toggle">
							Orange &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-green dropdown-toggle">
							Green &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-yellow dropdown-toggle">
							Yellow &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-blue dropdown-toggle">
							Blue &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-violet dropdown-toggle">
							Violet &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-pink dropdown-toggle">
							Pink &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-grey dropdown-toggle">
							Grey &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-dark dropdown-toggle">
							Dark &nbsp; <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">单按钮上拉菜单</div>
			<div class="panel-body">
				<div role="toolbar" class="btn-toolbar">
					<div class="btn-group dropup">
						<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
							Default &nbsp; <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<div class="btn-group dropup">
						<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" type="button">
							Primary &nbsp; <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-white">
			<div class="panel-heading">图标按钮</div>
			<div class="panel-body">
				<div class="demo-btn">
					<a href="#" class="btn btn-default">Default &nbsp;<i class="fa fa-edit"></i></a><a href="#" class="btn btn-primary">Primary
						&nbsp;<i class="fa fa-tint"></i>
					</a><a href="#" class="btn btn-success">Success &nbsp;<i class="fa fa-rocket"></i></a><a href="#" class="btn btn-info"><i
						class="fa fa-user"></i>&nbsp; Info</a><a href="#" class="btn btn-warning"><i class="fa fa-star-o"></i>&nbsp;
						Warning</a><a href="#" class="btn btn-danger">Danger &nbsp;<i class="fa fa-search"></i></a><a href="#"
						class="btn btn-red"><i class="fa fa-edit"></i></a><a href="#" class="btn btn-orange"><i class="fa fa-tint"></i></a><a
						href="#" class="btn btn-yellow"><i class="fa fa-rocket"></i></a><a href="#" class="btn btn-green"><i
						class="fa fa-user"></i></a><a href="#" class="btn btn-blue"><i class="fa fa-star-o"></i></a><a href="#"
						class="btn btn-pink"><i class="fa fa-search"></i></a><a href="#" class="btn btn-violet"><i
						class="fa fa-keyboard-o"></i></a><a href="#" class="btn btn-grey"><i class="fa fa-headphones"></i></a><a href="#"
						class="btn btn-dark"><i class="fa fa-font"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>
