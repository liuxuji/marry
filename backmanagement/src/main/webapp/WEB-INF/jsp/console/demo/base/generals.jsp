<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="note note-info">
			<h4 class="box-heading">响应式Tab</h4>
			<p>改变浏览器的大小，观察Tab在平板和手机上的显示。</p>
		</div>
	</div>
	<div class="col-lg-12">
		<ul id="generalTab" class="nav nav-tabs ul-edit responsive">
			<li class="active"><a href="#pagination-tab" data-toggle="tab">页码</a></li>
			<li><a href="#input-group-tab" data-toggle="tab">输入框组</a></li>
			<li><a href="#list-group-tab" data-toggle="tab">列表组</a></li>
			<li><a href="#navbar-tab" data-toggle="tab">导航栏</a></li>
			<li><a href="#thumbnail-tab" data-toggle="tab">简略图</a></li>
			<li><a href="#other-tab" data-toggle="tab">更多</a></li>
		</ul>
		<div id="generalTabContent" class="tab-content responsive">
			<div id="pagination-tab" class="tab-pane fade in active">
				<div class="row">
					<div class="col-lg-4">
						<h3>pagination</h3>
						<ul class="pagination mtm mbm">
							<li><a href="#">&laquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
						<div class="mbxl"></div>
						<h3>不可用和激活状态</h3>
						<ul class="pagination mtm mbm">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
					<div class="col-lg-4">
						<h3>大小</h3>
						<ul class="pagination pagination-lg mtm mbm">
							<li><a href="#">&laquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
						<ul class="pagination mtm mbm">
							<li><a href="#">&laquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
						<ul class="pagination pagination-sm mtm mbm">
							<li><a href="#">&laquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
					<div class="col-lg-4">
						<h3>对齐方式</h3>
						<ul data-hover="" class="pagination mtm mbm">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
						<div class="text-center">
							<ul class="pagination mtm mbm">
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li class="active"><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
						<div class="text-right">
							<ul class="pagination mtm mbm">
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li class="active"><a href="#">5</a></li>
								<li class="disabled"><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-lg-4">
						<h3>Pager</h3>
						<ul class="pager">
							<li><a href="#">Previous</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
					<div class="col-lg-4">
						<h3>Pager两端对齐</h3>
						<ul class="pager">
							<li class="previous"><a href="#">&larr; Older</a></li>
							<li class="next"><a href="#">Newer &rarr;</a></li>
						</ul>
					</div>
					<div class="col-lg-4">
						<h3>Pager不可用状态</h3>
						<ul class="pager">
							<li class="previous disabled"><a href="#">&larr; Older</a></li>
							<li class="next"><a href="#">Newer &rarr;</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="input-group-tab" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-4">
						<h3>Input Group</h3>
						<div class="input-group">
							<span class="input-group-addon">@</span> <input type="text" placeholder="Username" class="form-control" />
						</div>
						<div class="mbl"></div>
						<div class="input-group">
							<input type="text" class="form-control" /><span class="input-group-addon">.00</span>
						</div>
						<div class="mbl"></div>
						<div class="input-group">
							<span class="input-group-addon">$</span> <input type="text" class="form-control" /><span
								class="input-group-addon">.00</span>
						</div>
					</div>
					<div class="col-lg-4">
						<h3>大小</h3>
						<div class="input-group input-group-lg">
							<span class="input-group-addon">@</span> <input type="text" placeholder="Username" class="form-control" />
						</div>
						<div class="mbl"></div>
						<div class="input-group">
							<span class="input-group-addon">@</span> <input type="text" placeholder="Username" class="form-control" />
						</div>
						<div class="mbl"></div>
						<div class="input-group input-group-sm">
							<span class="input-group-addon">@</span> <input type="text" placeholder="Username" class="form-control" />
						</div>
					</div>
					<div class="col-lg-4">
						<h3>Checkbox &amp; Radio 扩展</h3>
						<div class="input-group">
							<span class="input-group-addon"><input type="checkbox" /></span> <input type="text" class="form-control" />
						</div>
						<div class="mbl"></div>
						<div class="input-group">
							<span class="input-group-addon"><input type="radio" /></span> <input type="text" class="form-control" />
						</div>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-lg-6">
						<h3>单按钮下拉菜单</h3>
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group">
									<div class="input-group-btn">
										<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
											Action &nbsp; <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#">Action</a></li>
											<li><a href="#">Another action</a></li>
											<li><a href="#">Something else here</a></li>
											<li class="divider"></li>
											<li><a href="#">Separated link</a></li>
										</ul>
									</div>
									<input type="text" class="form-control" />
								</div>
							</div>
							<div class="col-lg-6">
								<div class="input-group">
									<input type="text" class="form-control" />
									<div class="input-group-btn">
										<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
											Action &nbsp; <span class="caret"></span>
										</button>
										<ul class="dropdown-menu pull-right">
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
						<div class="mbxl"></div>
						<h3>分裂按钮下拉菜单</h3>
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group">
									<div class="input-group-btn">
										<button type="button" tabindex="-1" class="btn btn-default">Action</button>
										<button type="button" data-toggle="dropdown" tabindex="-1" class="btn btn-default dropdown-toggle">
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
									<input type="text" class="form-control" />
								</div>
							</div>
							<div class="col-lg-6">
								<div class="input-group">
									<input type="text" class="form-control" />
									<div class="input-group-btn">
										<button type="button" tabindex="-1" class="btn btn-default">Action</button>
										<button type="button" data-toggle="dropdown" tabindex="-1" class="btn btn-default dropdown-toggle">
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
						<h3>两端都有按钮的扩展</h3>
						<div class="input-group">
							<span class="input-group-btn"><button type="button" class="btn btn-default">Go!</button></span> <input
								type="text" class="form-control" /><span class="input-group-btn"><button type="button"
									class="btn btn-default">Go!</button></span>
						</div>
						<div class="mbxl"></div>
						<h3>两端都有下拉菜单按钮</h3>
						<div class="input-group">
							<div class="input-group-btn">
								<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
									Action <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<input type="text" class="form-control" />
							<div class="input-group-btn">
								<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
									Action <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
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
			<div id="list-group-tab" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-4">
						<h3>基础的</h3>
						<ul class="list-group">
							<li class="list-group-item">Cras justo odio</li>
							<li class="list-group-item">Dapibus ac facilisis in</li>
							<li class="list-group-item">Morbi leo risus</li>
							<li class="list-group-item">Porta ac consectetur ac</li>
							<li class="list-group-item">Vestibulum at eros</li>
							<li class="list-group-item">Morbi leo risus</li>
						</ul>
						<div class="mbxl"></div>
						<h3>有颜色变化的</h3>
						<ul class="list-group">
							<li class="list-group-item list-group-item-success">Dapibus ac facilisis in</li>
							<li class="list-group-item list-group-item-info">Cras sit amet nibh libero</li>
							<li class="list-group-item list-group-item-warning">Porta ac consectetur ac</li>
							<li class="list-group-item list-group-item-danger">Vestibulum at eros</li>
						</ul>
					</div>
					<div class="col-lg-4">
						<h3>有标记 &amp; 激活状态的</h3>
						<div class="list-group">
							<a href="#" class="list-group-item active">Cras justo odio<span class="badge badge-info pull-right">4</span></a>
							<a href="#" class="list-group-item">Dapibus ac facilisis in<span class="badge badge-warning pull-right">2</span></a>
							<a href="#" class="list-group-item">Morbi leo risus<span class="badge badge-danger pull-right">3</span></a>
							<a href="#" class="list-group-item">Porta ac consectetur ac<span class="badge badge-info pull-right">8</span></a>
							<a href="#" class="list-group-item">Vestibulum at eros<span class="badge badge-success pull-right">1</span></a>
							<a href="#" class="list-group-item">Morbi leo risus<span class="badge badge-danger pull-right">5</span></a>
						</div>
						<div class="mbxl"></div>
						<h3>有颜色有链接的</h3>
						<div class="list-group">
							<a href="#" class="list-group-item list-group-item-success">Dapibus ac facilisis in</a>
							<a href="#" class="list-group-item list-group-item-info">Cras sit amet nibh libero</a>
							<a href="#" class="list-group-item list-group-item-warning">Porta ac consectetur ac</a>
							<a href="#" class="list-group-item list-group-item-danger">Vestibulum at eros</a>
						</div>
					</div>
					<div class="col-lg-4">
						<h3>有链接 &amp; 激活状态的</h3>
						<div class="list-group">
							<a href="#" class="list-group-item active">Cras justo odio</a>
							<a href="#" class="list-group-item">Dapibus ac facilisis in</a>
							<a href="#" class="list-group-item">Morbi leo risus</a>
							<a href="#" class="list-group-item">Porta ac consectetur ac</a>
							<a href="#" class="list-group-item">Vestibulum at eros</a>
							<a href="#" class="list-group-item">Morbi leo risus</a>
						</div>
						<div class="mbxl"></div>
						<h3>自定义内容</h3>
						<div class="list-group">
							<a href="#" class="list-group-item active">
								<h4 class="list-group-item-heading">List group item heading</h4>
								<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget
									risus varius blandit.</p>
							</a>
							<a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">List group item heading</h4>
								<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget
									risus varius blandit.</p>
							</a>
							<a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">List group item heading</h4>
								<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget
									risus varius blandit.</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div id="navbar-tab" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<h3>Default Navbar</h3>
						<nav role="navigation" class="navbar navbar-default">
							<div class="container-fluid">
								<div class="navbar-header">
									<button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand">Brand</a>
								</div>
								<div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
									<ul class="nav navbar-nav">
										<li class="active"><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
										<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown<b
												class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li><a href="#">Separated link</a></li>
												<li class="divider"></li>
												<li><a href="#">One more separated link</a></li>
											</ul></li>
									</ul>
									<form role="search" class="navbar-form navbar-left">
										<div class="form-group">
											<input type="text" placeholder="Search" class="form-control" />
										</div>
										&nbsp;
										<button type="submit" class="btn btn-green">Submit</button>
									</form>
									<ul class="nav navbar-nav navbar-right">
										<li><a href="#">Link</a></li>
										<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown<b
												class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li><a href="#">Separated link</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h3>Forms</h3>
						<nav role="navigation" class="navbar navbar-default">
							<div class="container-fluid">
								<div class="navbar-header">
									<button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand">Brand</a>
								</div>
								<div id="bs-example-navbar-collapse-2" class="collapse navbar-collapse">
									<form role="search" class="navbar-form navbar-left">
										<div class="form-group">
											<input type="text" placeholder="Search" class="form-control" />
										</div>
										&nbsp;
										<button type="submit" class="btn btn-green">Submit</button>
									</form>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h3>Buttons</h3>
						<nav role="navigation" class="navbar navbar-default">
							<div class="container-fluid">
								<div class="navbar-header">
									<button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-3" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand">Brand</a>
								</div>
								<div id="bs-example-navbar-collapse-3" class="collapse navbar-collapse">
									<button type="button" class="btn btn-green navbar-btn">Sign in</button>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h3>Text</h3>
						<nav role="navigation" class="navbar navbar-default">
							<div class="container-fluid">
								<div class="navbar-header">
									<button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-4" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand">Brand</a>
								</div>
								<div id="bs-example-navbar-collapse-4" class="collapse navbar-collapse">
									<p class="navbar-text">Signed in as Mark Otto</p>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h3>Non-nav links</h3>
						<nav role="navigation" class="navbar navbar-default">
							<div class="container-fluid">
								<div class="navbar-header">
									<button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-5" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand">Brand</a>
								</div>
								<div id="bs-example-navbar-collapse-5" class="collapse navbar-collapse">
									<p class="navbar-text navbar-right">
										Signed in as <a href="#" class="navbar-link">Mark Otto</a>
									</p>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h4 class="block-heading">Navbar</h4>
						<nav role="navigation" class="navbar navbar-default">
							<div class="container-fluid">
								<div class="navbar-header">
									<button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand">Brand</a>
								</div>
								<div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
									<ul class="nav navbar-nav">
										<li class="active"><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
										<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown<b
												class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li><a href="#">Separated link</a></li>
												<li class="divider"></li>
												<li><a href="#">One more separated link</a></li>
											</ul></li>
									</ul>
									<form role="search" class="navbar-form navbar-left">
										<div class="form-group">
											<input type="text" placeholder="Search" class="form-control" />
										</div>
										&nbsp;
										<button type="submit" class="btn btn-default">Submit</button>
									</form>
									<ul class="nav navbar-nav navbar-right">
										<li><a href="#">Link</a></li>
										<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown<b
												class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li><a href="#">Separated link</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
						</nav>
						<div class="panel">
							<div class="panel-body">
								<h4>Home</h4>
								<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
									synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
									keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
									salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="thumbnail-tab" class="tab-pane fade">
				<h3>Default Thumbnails</h3>
				<div class="row">
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"><img data-src="holder.js/300x180/text:Hello"/> </a>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"><img data-src="holder.js/300x180/text:Hello"/> </a>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"><img data-src="holder.js/300x180/text:Hello"/> </a>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"><img data-src="holder.js/300x180/text:Hello" /> </a>
					</div>
				</div>
				<h3>Custom Content</h3>
				<div class="row">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img data-src="holder.js/300x200/text:hello" />
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
									metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a href="#" role="button" class="btn btn-primary">Button</a>&nbsp;<a href="#" role="button"
										class="btn btn-default">Button</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img data-src="holder.js/300x200/text:hello" />
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
									metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a href="#" role="button" class="btn btn-primary">Button</a>&nbsp;<a href="#" role="button"
										class="btn btn-default">Button</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img data-src="holder.js/300x200/text:hello" />
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
									metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a href="#" role="button" class="btn btn-primary">Button</a>&nbsp;<a href="#" role="button"
										class="btn btn-default">Button</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img data-src="holder.js/300x200/text:hello" alt="..." />
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
									metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a href="#" role="button" class="btn btn-primary">Button</a>&nbsp;<a href="#" role="button"
										class="btn btn-default">Button</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="other-tab" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-6">
						<h3>Tooltip <span class="label label-default">悬念提示</span></h3>
						<button type="button" data-toggle="tooltip" data-placement="left" title="Tooltip on left"
							class="btn btn-default mbs">Tooltip on left</button>
						&nbsp;
						<button type="button" data-toggle="tooltip" data-placement="top" title="Tooltip on top"
							class="btn btn-default mbs">Tooltip on top</button>
						&nbsp;
						<button type="button" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom"
							class="btn btn-default mbs">Tooltip on bottom</button>
						&nbsp;
						<button type="button" data-toggle="tooltip" data-placement="right" title="Tooltip on right"
							class="btn btn-default mbs">Tooltip on right</button>
					</div>
					<div class="col-lg-6">
						<h3>Popovers <span class="label label-default">点击弹出提示</span></h3>
						<button type="button" data-container="body" data-toggle="popover" data-placement="left"
							data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." class="btn btn-default mbs">Popover
							on left</button>
						&nbsp;
						<button type="button" data-container="body" data-toggle="popover" data-placement="top"
							data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." class="btn btn-default mbs">Popover
							on top</button>
						&nbsp;
						<button type="button" data-container="body" data-toggle="popover" data-placement="bottom"
							data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." class="btn btn-default mbs">Popover
							on bottom</button>
						&nbsp;
						<button type="button" data-container="body" data-toggle="popover" data-placement="right"
							data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." class="btn btn-default mbs">Popover
							on right</button>
					</div>
				</div>
				<div class="mbxl"></div>
				<div class="row">
					<div class="col-lg-4">
						<h3>Large Well</h3>
						<div class="well well-lg">Look, I'm in a large well!</div>
					</div>
					<div class="col-lg-4">
						<h3>Default Well</h3>
						<div class="well">Look, I'm in a well!</div>
					</div>
					<div class="col-lg-4">
						<h3>Small Well</h3>
						<div class="well well-sm">Look, I'm in a small well!</div>
					</div>
				</div>
				<div class="mbxl"></div>
				<div class="row">
					<div class="col-lg-6">
						<h3>Media object</h3>
						<div class="media">
							<a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64" class="media-object" />
							</a>
							<div class="media-body">
								<h4 class="media-heading">Media heading</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus
								odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla.
								Donec lacinia congue felis in faucibus.
							</div>
						</div>
						<div class="media">
							<a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64" class="media-object" />
							</a>
							<div class="media-body">
								<h4 class="media-heading">Media heading</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus
								odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla.
								Donec lacinia congue felis in faucibus.
								<div class="media">
									<a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64" class="media-object" />
									</a>
									<div class="media-body">
										<h4 class="media-heading">Nested media heading</h4>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus
										odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla.
										Donec lacinia congue felis in faucibus.
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<h3>Media List</h3>
						<ul class="media-list">
							<li class="media"><a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64"
									class="media-object" /> </a>
								<div class="media-body">
									<h4 class="media-heading">Media heading</h4>
									<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
										purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
									<div class="media">
										<a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64" class="media-object" />
										</a>
										<div class="media-body">
											<h4 class="media-heading">Nested media heading</h4>
											Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
											purus odio, vestibulum in vulputate at, tempus viverra turpis.
											<div class="media">
												<a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64"
													class="media-object" /> </a>
												<div class="media-body">
													<h4 class="media-heading">Nested media heading</h4>
													Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
													purus odio, vestibulum in vulputate at, tempus viverra turpis.
												</div>
											</div>
										</div>
									</div>
									<div class="media">
										<a href="#" class="pull-left"><img data-src="holder.js/64x64/text:avatar" alt="64x64" class="media-object" />
										</a>
										<div class="media-body">
											<h4 class="media-heading">Nested media heading</h4>
											Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
											purus odio, vestibulum in vulputate at, tempus viverra turpis.
										</div>
									</div>
								</div></li>
							<li class="media"><a href="#" class="pull-right"><img data-src="holder.js/64x64/text:avatar" alt="64x64"
									class="media-object" /> </a>
								<div class="media-body">
									<h4 class="media-heading">Media heading</h4>
									Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus
									odio, vestibulum in vulputate at, tempus viverra turpis.
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="${webroot}/madmin/vendors/responsive-tabs/responsive-tabs.js"></script>
<script src="${webroot}/madmin/vendors/holder/holder.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<!-- 本页操作相关 -->
<script src="${webroot}/js/ui-generals.js"></script>