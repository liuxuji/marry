<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-lg-3">
				<div class="panel panel-default">
					<div class="panel-body">
						<strong class="text-uppercase">Panel 没有标题和页脚的</strong> <br />Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
						veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat laboris nisi ut aliquip
						ex ea commodo consequat.
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="panel panel-primary">
					<div class="panel-heading">Panel 标题</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</div>
					<div class="panel-footer">Panel 页脚</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="panel panel-green">
					<div class="panel-heading">
						<h3 class="panel-title">Panel 标题尺寸</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="panel panel-orange">
					<div class="panel-heading">
						<i class="fa fa-paper-plane-o"></i>&nbsp; 有图标的标题
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="panel">
					<div class="panel-heading">
						Panel头有下标的示例1<span class="subtitle">下标示例...</span>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="panel">
					<div class="panel-heading">
						Panel标题有下标的示例2
						<p class="subtitle mln">下标示例...</p>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="panel panel-red">
					<div class="panel-heading clearfix">
						<span class="mts pull-left">Panel 标题有输入框的</span>
						<div class="toolbars">
							<div class="input-icon right">
								<i class="fa fa-search"></i> <input type="text" placeholder="Search" class="form-control input-medium" />
							</div>
						</div>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem
						accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut
						fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="panel panel-yellow">
					<div class="panel-heading clearfix">
						<span class="mts pull-left">Panel 标题有下拉框的</span>
						<div class="toolbars">
							<div class="btn-group">
								<button type="button" data-toggle="dropdown" class="btn btn-white btn-sm dropdown-toggle">
									<i class="fa fa-cogs"></i>&nbsp; Setting &nbsp; <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="#"><i class="fa fa-pencil"></i>&nbsp; Edit</a></li>
									<li><a href="#"><i class="fa fa-trash-o"></i>&nbsp; Delete</a></li>
									<li><a href="#"><i class="fa fa-refresh"></i>&nbsp; Update</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem
						accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut
						fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="panel panel-blue">
					<div class="panel-heading clearfix">
						<span class="mts pull-left">Panel 标题有按钮组的</span>
						<div class="toolbars">
							<div class="btn-group">
								<button type="button" class="btn btn-white">
									<i class="fa fa-align-left"></i>
								</button>
								<button type="button" class="btn btn-white">
									<i class="fa fa-align-center"></i>
								</button>
								<button type="button" class="btn btn-white">
									<i class="fa fa-align-right"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem
						accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut
						fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="panel panel-green">
					<div class="panel-heading clearfix">
						<span class="mts pull-left">Panel 标题有操作按钮的</span>
						<div class="toolbars">
							<div class="btn-group mts">
								<a href="javascript:;"><i class="fa fa-cogs"></i></a><a href="javascript:;"><i class="fa fa-edit"></i></a><a
									href="javascript:;"><i class="fa fa-download"></i></a><a href="javascript:;"><i class="fa fa-paperclip"></i></a>
							</div>
						</div>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem
						accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut
						fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</div>
				</div>
			</div>
		</div>
	</div>
</div>