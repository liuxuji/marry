<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-body">
				<div class="col-lg-6">
					<h3>Labels</h3>
					<span class="label label-default">Default</span>&nbsp;<span class="label label-primary">Primary</span>&nbsp;<span
						class="label label-success">Success</span>&nbsp;<span class="label label-info">Info</span>&nbsp;<span
						class="label label-warning">Warning</span>&nbsp;<span class="label label-danger">Danger</span>
					<div class="mbxl"></div>
					<h3>Label Colors</h3>
					<span class="label label-red">Red</span>&nbsp;<span class="label label-orange">Orange</span>&nbsp;<span
						class="label label-green">Green</span>&nbsp;<span class="label label-yellow">Yellow</span>&nbsp;<span
						class="label label-blue">Blue</span>&nbsp;<span class="label label-violet">Violet</span>&nbsp;<span
						class="label label-pink">Pink</span>&nbsp;<span class="label label-grey">Grey</span>&nbsp;<span
						class="label label-dark">Dark</span>
					<div class="mbxl"></div>
					<h3>Label In Headings</h3>
					<h1>
						Example heading &nbsp;<span class="label label-default">Default</span>
					</h1>
					<h2>
						Example heading &nbsp;<span class="label label-primary">Primary</span>
					</h2>
					<h3>
						Example heading &nbsp;<span class="label label-success">Success</span>
					</h3>
					<h4>
						Example heading &nbsp;<span class="label label-warning">Warning</span>
					</h4>
					<h5>
						Example heading &nbsp;<span class="label label-info">Info</span>
					</h5>
					<h6>
						Example heading &nbsp;<span class="label label-danger">Danger</span>
					</h6>
				</div>
				<div class="col-lg-6">
					<h3>Badges</h3>
					<span class="badge badge-default">Default</span>&nbsp;<span class="badge badge-primary">Primary</span>&nbsp;<span
						class="badge badge-success">Success</span>&nbsp;<span class="badge badge-warning">Warning</span>&nbsp;<span
						class="badge badge-info">Info</span>&nbsp;<span class="badge badge-danger">Danger</span>
					<div class="mbxl"></div>
					<h3>Badge Colors</h3>
					<span class="badge badge-red">Red</span>&nbsp;<span class="badge badge-orange">Orange</span>&nbsp;<span
						class="badge badge-green">Green</span>&nbsp;<span class="badge badge-yellow">Yellow</span>&nbsp;<span
						class="badge badge-blue">Blue</span>&nbsp;<span class="badge badge-pink">Pink</span>&nbsp;<span
						class="badge badge-violet">Violet</span>&nbsp;<span class="badge badge-grey">Grey</span>&nbsp;<span
						class="badge badge-dark">Dark</span>
					<div class="mtxl"></div>
					<h3>Badges List Navigations</h3>
					<ul style="max-width: 260px;" class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span class="badge pull-right">2</span>Home</a></li>
						<li><a href="#">Profile</a></li>
						<li><a href="#"><span class="badge badge-warning pull-right">3</span>Messages</a></li>
					</ul>
					<div class="mtxl"></div>
					<h3>Badge In Pill</h3>
					<ul class="nav nav-pills">
						<li class="active"><a href="#">Home &nbsp;<span class="badge">3</span></a></li>
						<li><a href="#">Profile</a></li>
						<li><a href="#">Messages &nbsp;<span class="badge badge-info">3</span></a></li>
					</ul>
					<div class="mbxl"></div>
					<h3>Badge With Button Dropdown</h3>
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">
							Account &nbsp; <i class="fa fa-angle-down"></i>
						</button>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Action<span class="badge badge-yellow pull-right">5</span></a></li>
							<li><a href="#">Another action<span class="badge badge-info pull-right">3</span></a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					&nbsp;
					<div class="btn-group">
						<button type="button" class="btn btn-primary">Chats</button>
						<button type="button" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"
							class="btn btn-primary dropdown-toggle">
							<i class="fa fa-angle-down"></i>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#"><span class="label label-warning">7:00 AM</span>&nbsp; Hi :)</a></li>
							<li><a href="#"><span class="label label-warning">8:00 AM</span>&nbsp; How are you?</a></li>
							<li><a href="#"><span class="label label-warning">9:00 AM</span>&nbsp; What are you doing?</a></li>
							<li class="divider"></li>
							<li><a href="#" class="text-center">View All</a></li>
						</ul>
					</div>
					&nbsp;
					<div class="btn-group">
						<button type="button" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"
							class="btn btn-primary dropdown-toggle">
							Inbox &nbsp; <span class="badge">25</span>
						</button>
						<ul class="dropdown-menu pull-right">
							<li><a href="#"><span class="label label-info"><i class="fa fa-bell"></i></span>&nbsp; Favourites
									Snippet</a></li>
							<li><a href="#"><span class="label label-red"><i class="fa fa-magic"></i></span>&nbsp; Email marketing</a></li>
							<li><a href="#"><span class="label label-yellow"><i class="fa fa-bullhorn"></i></span>&nbsp; Subscriber
									focused email design</a></li>
							<li class="divider"></li>
							<li><a href="#" class="text-center">View All</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>