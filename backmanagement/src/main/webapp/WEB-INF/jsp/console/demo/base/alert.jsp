<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-12">
			<ul id="icons-tab" class="nav nav-tabs">
			<li class="active"><a href="#alert-tab" data-toggle="tab">警示框</a></li>
			<li><a href="#note-tab" data-toggle="tab">便笺框</a></li>
		</ul>
		<div id="icons-tab-content" class="tab-content">
			<div id="alert-tab" class="tab-pane fade in active row">
				<div class="col-lg-6">
					<h3>基本样式</h3>
					<div class="alert alert-success">
						<strong>Well done!</strong> You successfully read this important alert message.
					</div>
					<div class="alert alert-info">
						<strong>Heads up!</strong> This alert needs your attention, but it's not super important.
					</div>
					<div class="alert alert-warning">
						<strong>Warning!</strong> Best check yo self, you're not looking too good.
					</div>
					<div class="alert alert-danger">
						<strong>Oh snap!</strong> Change a few things up and try submitting again.
					</div>
					<div class="mbxl"></div>
					<h3>带关闭的</h3>
					<div class="alert alert-warning alert-dismissable">
						<button type="button" data-dismiss="alert" aria-hidden="true" class="close">&times;</button>
						<strong>Warning!</strong> Best check yo self, you're not looking too good.
					</div>
				</div>
				<div class="col-lg-6">
					<h3>有链接的</h3>
					<div class="alert alert-success">
						<strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
					</div>
					<div class="alert alert-info">
						<strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a> , but it's not super
						important.
					</div>
					<div class="alert alert-warning">
						<strong>Warning!</strong> Best check yo self, you're <a href="#" class="alert-link">not looking too good</a>.
					</div>
					<div class="alert alert-danger">
						<strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
					</div>
				</div>
			</div>
			<div id="note-tab" class="tab-pane fade row">
				<div class="col-lg-6">
					<div class="note note-success">
						<h3>Success! Duis mollis, est non commodo luctus</h3>
						<p>Nisi erat mattis consectetur purus sit amet porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
							consectetur purus sit amet fermentum.</p>
					</div>
					<div class="note note-info">
						<h3>Info! Duis mollis, est non commodo luctus</h3>
						<p>Nisi erat mattis consectetur purus sit amet porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
							consectetur purus sit amet fermentum.</p>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="note note-warning">
						<h3>Warning! Duis mollis, est non commodo luctus</h3>
						<p>Nisi erat mattis consectetur purus sit amet porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
							consectetur purus sit amet fermentum.</p>
					</div>
					<div class="note note-danger">
						<h3>Dangerous! Duis mollis, est non commodo luctus</h3>
						<p>Nisi erat mattis consectetur purus sit amet porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
							consectetur purus sit amet fermentum.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
