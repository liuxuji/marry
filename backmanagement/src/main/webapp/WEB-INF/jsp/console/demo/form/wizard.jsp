<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>

<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-bootstrap-wizard/custom.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-steps/css/jquery.steps.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-lg-12">
				<div class="portlet box portlet-green">
					<div class="portlet-header">
						<div class="caption">Advanced wizard</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<div id="rootwizard-custom-circle">
							<div class="navbar">
								<div class="navbar-inner">
									<ul>
										<li><a href="#tab1-wizard-custom-circle" data-toggle="tab"><i class="glyphicon glyphicon-user"></i>
												<p class="anchor">1. Log in</p>
												<p class="description">Set up account</p></a></li>
										<li><a href="#tab2-wizard-custom-circle" data-toggle="tab"><i class="glyphicon glyphicon-send mln"></i>
												<p class="anchor">2. Address</p>
												<p class="description">Provide information</p></a></li>
										<li><a href="#tab3-wizard-custom-circle" data-toggle="tab"><i
												class="glyphicon glyphicon-shopping-cart"></i>
												<p class="anchor">3. Cart detail</p>
												<p class="description">Check products</p></a></li>
										<li><a href="#tab4-wizard-custom-circle" data-toggle="tab"><i class="glyphicon glyphicon-check"></i>
												<p class="anchor">4. Finish</p>
												<p class="description">Confirm all</p></a></li>
									</ul>
								</div>
							</div>
							<div id="bar" class="progress active">
								<div class="bar progress-bar progress-bar-primary"></div>
							</div>
							<div class="tab-content">
								<div id="tab1-wizard-custom-circle" class="tab-pane">
									<h3 class="mbxl">Set up your account</h3>
									<form action="#" class="form-horizontal">
										<div class="form-group">
											<label for="inputUsername" class="col-sm-3 control-label">Username <span class='require'>*</span>
											</label>
											<div class="col-sm-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-user"></i></span> <input type="text" placeholder="Username"
														class="inputUsername form-control" />
												</div>
												<i class="alert alert-hide">Oops! Forgot something? Let try again.</i>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-sm-3 control-label">Password <span class='require'>*</span>
											</label>
											<div class="col-sm-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-key"></i></span> <input type="text" placeholder="Password"
														class="inputPwd form-control" />
												</div>
												<i class="alert alert-hide">Oops! Forgot something? Let try again.</i>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="col-sm-3 control-label">Password confirm <span class='require'>*</span>
											</label>
											<div class="col-sm-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-key"></i></span> <input type="text"
														placeholder="Password confirm" class="inputPwdC form-control" />
												</div>
												<i class="alert alert-hide">Oops! Forgot something? Let try again.</i>
											</div>
										</div>
									</form>
								</div>
								<div id="tab2-wizard-custom-circle" class="tab-pane">
									<h3 class="mbxl">Delivery information</h3>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="inputStreet" class="control-label">Street <span class='require'>*</span>
												</label> <input id="inputStreet" type="text" placeholder="" class="form-control" /><i class="alert alert-hide">Oops!
													Forgot something? Let try again.</i>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="inputFirstName" class="control-label">District</label> <input id="inputDistrict" type="text"
													placeholder="" class="form-control" /><i class="alert alert-hide">Oops! Forgot something? Let try
													again.</i>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="inputCity" class="control-label">City <span class='require'>*</span>
												</label> <input id="inputCity" type="text" placeholder="" class="form-control" /><i class="alert alert-hide">Oops!
													Forgot something? Let try again.</i>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="inputPostCode" class="control-label">Post Code</label> <input id="inputPostCode" type="text"
													placeholder="" class="form-control" /><i class="alert alert-hide">Oops! Forgot something? Let try
													again.</i>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="selCountry" class="control-label">Country</label> <select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div id="tab3-wizard-custom-circle" class="tab-pane fadeIn">
									<h3 class="mbxl">Checking products</h3>
									<form action="#" class="form-horizontal">
										<div class="form-group">
											<label for="inputUsername" class="col-md-2 control-label">Product 1:</label>
											<div class="col-md-10">
												<input type="text" placeholder="Detail" class="inputUsername form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputUsername" class="col-md-2 control-label">Product 2:</label>
											<div class="col-md-10">
												<input type="text" placeholder="Detail" class="inputUsername form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputUsername" class="col-md-2 control-label">Product 3:</label>
											<div class="col-md-10">
												<input type="text" placeholder="Detail" class="inputUsername form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-2 control-label">Check out method</label>
											<div class="col-lg-3 col-md-5">
												<select id="selCountry" class="form-control">
													<option value="">Cash</option>
													<option value="">Visa Card</option>
													<option value="">Credit Card</option>
												</select>
											</div>
										</div>
									</form>
								</div>
								<div id="tab4-wizard-custom-circle" class="tab-pane fadeIn">
									<h3 class="mbxl">Thank you!</h3>
									<p>Congragulation! You have completed checkout steps.</p>
									<p>Thank you for use our products.</p>
								</div>
								<div class="action text-right">
									<button type="button" name="previous" value="Previous" class="btn btn-info button-previous">
										<i class="fa fa-arrow-circle-o-left mrx"></i>Previous
									</button>
									<button type="button" name="next" value="Next" class="btn btn-info button-next mlm">
										Next<i class="fa fa-arrow-circle-o-right mlx"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="portlet box portlet-yellow">
					<div class="portlet-header">
						<div class="caption">Basic Wizard</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form id="form-2" action="#">
							<div id="wizard-1"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="portlet box portlet-green">
					<div class="portlet-header">
						<div class="caption">Basic Form</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form id="form-2" action="#">
							<div id="wizard-2"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="portlet box portlet-blue">
					<div class="portlet-header">
						<div class="caption">Vertical Steps</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form id="form-3" action="#">
							<div id="wizard-3"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="portlet box portlet-pink">
					<div class="portlet-header">
						<div class="caption">Async Content Loading</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form id="form-4" action="#">
							<div id="wizard-4"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="${webroot}/madmin/vendors/jquery-validate/jquery.validate.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-steps/js/jquery.steps.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="${webroot}/js/form-wizard.js"></script>
