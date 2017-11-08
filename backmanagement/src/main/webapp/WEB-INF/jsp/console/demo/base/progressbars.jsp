<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<ul id="progressbarTab" class="nav nav-tabs ul-edit">
			<li class="active"><a href="#horizontal-tab" data-toggle="tab">水平的</a></li>
			<li><a href="#vertical-tab" data-toggle="tab">垂直的</a></li>
			<li><a href="#miscellaneous-tab" data-toggle="tab">混合的</a></li>
		</ul>
		<div id="progressbarTabContent" class="tab-content">
			<div id="horizontal-tab" class="tab-pane fade in active">
				<div class="row">
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Horizontal</div>
							<div class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom Size</h3>
								<div class="progress progress-xs">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-sm">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-lg">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Center text</div>
							<div id="center-text" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Filled text</div>
							<div id="filled-text" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
								<h3>Custom Size</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress progress-lg">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Filled text (nonpercentage)</div>
							<div id="filled-text-nonpercentage" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Horizontal (Right)</div>
							<div class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped right">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped right">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped right">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped right">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped right">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active right">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active right">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active right">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active right">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active right">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom Size</h3>
								<div class="progress progress-xs right">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-sm right">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress right">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-lg right">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Center text (nonpercentage)</div>
							<div id="center-text-nonpercentage" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="vertical-tab" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Vertical</div>
							<div class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom Size</h3>
								<div class="progress progress-xs vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-sm vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-lg vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Center text</div>
							<div id="vertical-center-text" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Filled text</div>
							<div id="vertical-filled-text" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Filled text (nonpercentage)</div>
							<div id="vertical-filled-text-nonpercentage" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Vertical (Bottom)</div>
							<div class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom Size</h3>
								<div class="progress progress-xs vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-sm vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-lg vertical wide bottom">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Center text (nonpercentage)</div>
							<div id="vertical-center-text-nonpercentage" class="panel-body">
								<h3>Basic progressbar</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Themed progressbars</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Striped progressbars</h3>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Animated progressbars</h3>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress progress-striped active vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>Custom aria range</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="2" aria-valuemin="1" aria-valuemax="6" class="progress-bar"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40" aria-valuemin="-40" aria-valuemax="200"
										class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60" aria-valuemax="120"
										class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80" aria-valuemin="30"
										class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
								<div class="clearfix"></div>
								<h3>custom animations</h3>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress vertical wide">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="miscellaneous-tab" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Delayed progressbars</div>
							<div id="delayed-progressbars" class="panel-body">
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="75" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Custom amount format</div>
							<div id="amount-format" class="panel-body">
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Refresh speed progressbars</div>
							<div id="refresh-speed-progressbars" class="panel-body">
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40"
										class="progress-bar progress-bar-info six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60"
										class="progress-bar progress-bar-success six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80"
										class="progress-bar progress-bar-warning six-sec-ease-in-out"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100"
										class="progress-bar progress-bar-danger six-sec-ease-in-out"></div>
								</div>
							</div>
						</div>
						<div class="panel panel-white">
							<div class="panel-heading">Custom amount format</div>
							<div class="panel-body">
								<button id="m-multi-trigger-0" type="button" class="btn btn-primary btn-sm">0</button>
								&nbsp;
								<button id="m-multi-trigger-50" type="button" class="btn btn-primary btn-sm">50</button>
								&nbsp;
								<button id="m-multi-trigger-100" type="button" class="btn btn-primary btn-sm">100</button>
								<br /> <br />
								<div class="m-multi-trigger">
									<div class="progress">
										<div class="progress-bar"></div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-info"></div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-success"></div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-warning"></div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-danger"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-white">
							<div class="panel-heading">Custom percentage format</div>
							<div id="percentage-format" class="panel-body">
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="20" class="progress-bar"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="40" class="progress-bar progress-bar-info"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="60" class="progress-bar progress-bar-success"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="80" class="progress-bar progress-bar-warning"></div>
								</div>
								<div class="progress">
									<div role="progressbar" aria-valuetransitiongoal="100" class="progress-bar progress-bar-danger"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<script src="${webroot}/js/ui-progressbars.js"></script>