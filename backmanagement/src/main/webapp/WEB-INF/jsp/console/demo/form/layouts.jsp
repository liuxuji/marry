<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div id="form-layouts" class="row animated fadeInUp">
	<div class="col-lg-12">
		<ul class="nav ul-edit nav-tabs responsive">
			<li class="active"><a href="#tab-form-actions" data-toggle="tab">表单按钮</a></li>
			<li><a href="#tab-two-columns" data-toggle="tab">2 Columns</a></li>
			<li><a href="#tab-form-seperated" data-toggle="tab">Form Seperated</a></li>
			<li><a href="#tab-form-bordered" data-toggle="tab">Form Bordered</a></li>
		</ul>
		<div style="background: transparent; border: 0; box-shadow: none !important"
			class="tab-content pan mtl mbn responsive">
			<div id="tab-form-actions" class="tab-pane fade active in">
				<div class="row">
					<div class="col-lg-6">
						<div class="panel panel-violet">
							<div class="panel-heading">表单按钮在顶部</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal">
									<div class="form-actions top">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-primary">Send</button>
											&nbsp;
											<button type="button" class="btn btn-green">Cancel</button>
										</div>
									</div>
									<div class="form-body pal">
										<div class="form-group">
											<label for="inputUsername" class="col-md-3 control-label">Username <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon">
													<i class="fa fa-user"></i> <input id="inputUsername" type="text" placeholder="Username"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
														placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="col-md-3 control-label">Address <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon right">
													<i class="fa fa-location-arrow"></i> <input type="text" placeholder="Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group mbn">
											<label for="inputContent" class="col-md-3 control-label">Content</label>
											<div class="col-md-9">
												<textarea id="inputContent" rows="3" class="form-control"></textarea>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="panel panel-green">
							<div class="panel-heading">表单按钮在底部</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal">
									<div class="form-body pal">
										<div class="form-group">
											<label for="inputUsername" class="col-md-3 control-label">Username <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon">
													<i class="fa fa-user"></i> <input id="inputUsername" type="text" placeholder="Username"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
														placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="col-md-3 control-label">Address <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon right">
													<i class="fa fa-location-arrow"></i> <input type="text" placeholder="Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group mbn">
											<label for="inputContent" class="col-md-3 control-label">Content</label>
											<div class="col-md-9">
												<textarea id="inputContent" rows="3" class="form-control"></textarea>
											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-primary">Send</button>
											&nbsp;
											<button type="button" class="btn btn-green">Cancel</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="panel panel-blue">
							<div class="panel-heading">表单按钮在顶部和底部</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal">
									<div class="form-actions top">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-primary">Send</button>
											&nbsp;
											<button type="button" class="btn btn-green">Cancel</button>
										</div>
									</div>
									<div class="form-body pal">
										<div class="form-group">
											<label for="inputUsername" class="col-md-3 control-label">Username <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon">
													<i class="fa fa-user"></i> <input id="inputUsername" type="text" placeholder="Username"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
														placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="col-md-3 control-label">Address <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon right">
													<i class="fa fa-location-arrow"></i> <input type="text" placeholder="Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group mbn">
											<label for="inputContent" class="col-md-3 control-label">Content</label>
											<div class="col-md-9">
												<textarea id="inputContent" rows="3" class="form-control"></textarea>
											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-primary">Send</button>
											&nbsp;
											<button type="button" class="btn btn-green">Cancel</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="panel panel-yellow">
							<div class="panel-heading">左对齐</div>
							<div class="panel-body pan">
								<form action="#">
									<div class="form-actions top pll prl">
										<button type="submit" class="btn btn-primary">Send</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
									<div class="form-body pal">
										<div class="form-group">
											<label for="inputUsername" class="control-label">Username <span class='require'>*</span>
											</label>
											<div class="input-icon">
												<i class="fa fa-user"></i> <input id="inputUsername" type="text" placeholder="Username" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="control-label">Email <span class='require'>*</span>
											</label>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
													placeholder="Email Address" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="control-label">Address <span class='require'>*</span>
											</label>
											<div class="input-icon right">
												<i class="fa fa-location-arrow"></i> <input type="text" placeholder="Address" class="form-control" />
											</div>
										</div>
										<div class="form-group mbn">
											<label for="inputContent" class="control-label">Content</label>
											<textarea id="inputContent" rows="3" class="form-control"></textarea>
										</div>
									</div>
									<div class="form-actions pll prl">
										<button type="submit" class="btn btn-primary">Send</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="panel panel-orange">
							<div class="panel-heading">右对齐</div>
							<div class="panel-body pan">
								<form action="#">
									<div class="form-actions top text-right pll prl">
										<button type="submit" class="btn btn-primary">Send</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
									<div class="form-body pal">
										<div class="form-group">
											<label for="inputUsername" class="control-label">Username <span class='require'>*</span>
											</label>
											<div class="input-icon">
												<i class="fa fa-user"></i> <input id="inputUsername" type="text" placeholder="Username" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="control-label">Email <span class='require'>*</span>
											</label>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
													placeholder="Email Address" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="control-label">Address <span class='require'>*</span>
											</label>
											<div class="input-icon right">
												<i class="fa fa-location-arrow"></i> <input type="text" placeholder="Address" class="form-control" />
											</div>
										</div>
										<div class="form-group mbn">
											<label for="inputContent" class="control-label">Content</label>
											<textarea id="inputContent" rows="3" class="form-control"></textarea>
										</div>
									</div>
									<div class="form-actions text-right pll prl">
										<button type="submit" class="btn btn-primary">Send</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="panel panel-pink">
							<div class="panel-heading">表单按钮没有背景颜色的(默认极浅灰色)</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal">
									<div class="form-actions top none-bg">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-primary">Send</button>
											&nbsp;
											<button type="button" class="btn btn-green">Cancel</button>
										</div>
									</div>
									<div class="form-body pal">
										<div class="form-group">
											<label for="inputUsername" class="col-md-3 control-label">Username <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon">
													<i class="fa fa-user"></i> <input id="inputUsername" type="text" placeholder="Username"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
														placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress" class="col-md-3 control-label">Address <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="input-icon right">
													<i class="fa fa-location-arrow"></i> <input type="text" placeholder="Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group mbn">
											<label for="inputContent" class="col-md-3 control-label">Content</label>
											<div class="col-md-9">
												<textarea id="inputContent" rows="3" class="form-control"></textarea>
											</div>
										</div>
									</div>
									<div class="form-actions none-bg">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-primary">Send</button>
											&nbsp;
											<button type="button" class="btn btn-green">Cancel</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="tab-two-columns" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-yellow">
							<div class="panel-heading">Form 2 Columns Default</div>
							<div class="panel-body pan">
								<form action="#" class="horizontal-form">
									<div class="form-body pal">
										<h3>Personal</h3>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group has-success">
													<label for="inputFirstName" class="control-label">First Name <span class='require'>*</span>
													</label>
													<div class="input-icon right">
														<i data-hover="tooltip" data-original-title="Correct" class="glyphicon glyphicon-ok tooltips"></i> <input
															id="inputFirstName" type="text" placeholder="First Name" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group has-error">
													<label for="inputLastName" class="control-label">Last Name <span class='require'>*</span>
													</label>
													<div class="input-icon right">
														<i data-hover="tooltip" data-original-title="Last Name is empty"
															class="glyphicon glyphicon-remove tooltips"></i> <input id="inputLastName" type="text"
															placeholder="Last Name" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputEmail" class="control-label">Email <span class='require'>*</span>
													</label>
													<div class="input-icon">
														<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="selGender" class="control-label">Gender <span class='require'>*</span>
													</label> <select id="selGender" class="form-control">
														<option value="">Male</option>
														<option value="">Female</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputBirthday" class="control-label">Birthday</label> <input id="inputBirthday" type="text"
														placeholder="dd/mm/yyyy" class="form-control" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputPhone" class="control-label">Phone</label> <input id="inputPhone" type="text"
														placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<h3>Address</h3>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="inputStreet" class="control-label">Street <span class='require'>*</span>
													</label> <input id="inputStreet" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputFirstName" class="control-label">District</label> <input id="inputDistrict" type="text"
														placeholder="" class="form-control" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputCity" class="control-label">City <span class='require'>*</span>
													</label> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputPostCode" class="control-label">Post Code</label> <input id="inputPostCode" type="text"
														placeholder="" class="form-control" />
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
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-yellow">
							<div class="panel-heading">Form 2 Columns Horizontal</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal">
									<div class="form-body pal">
										<h3>Personal</h3>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
													</label>
													<div class="col-md-9">
														<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
													</label>
													<div class="col-md-9">
														<input id="inputLastName" type="text" placeholder="Last Name" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
													</label>
													<div class="col-md-9">
														<div class="input-icon">
															<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
													</label>
													<div class="col-md-9">
														<select id="selGender" class="form-control">
															<option value="">Male</option>
															<option value="">Female</option>
														</select>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
													<div class="col-md-9">
														<input id="inputBirthday" type="text" placeholder="dd/mm/yyyy" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputPhone" class="col-md-3 control-label">Phone</label>
													<div class="col-md-9">
														<input id="inputPhone" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<h3>Address</h3>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
													</label>
													<div class="col-md-9">
														<input id="inputAddress1" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
													<div class="col-md-9">
														<input id="inputAddress2" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputStates" class="col-md-3 control-label">States</label>
													<div class="col-md-9">
														<input id="inputStates" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
													</label>
													<div class="col-md-9">
														<input id="inputCity" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputPostCode" class="col-md-3 control-label">Post Code</label>
													<div class="col-md-9">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="selCountry" class="col-md-3 control-label">Country</label>
													<div class="col-md-9">
														<select id="selCountry" class="form-control">
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
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-yellow">
							<div class="panel-heading">Form 2 Columns Readonly</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal">
									<div class="form-body pal">
										<h3>Personal</h3>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputFirstName" class="col-md-3 control-label">First Name:</label>
													<div class="col-md-9">
														<p class="form-control-static">John</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputLastName" class="col-md-3 control-label">Last Name:</label>
													<div class="col-md-9">
														<p class="form-control-static">Doe</p>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputEmail" class="col-md-3 control-label">Email:</label>
													<div class="col-md-9">
														<p class="form-control-static">
															<a href="mailto:whisfat1935@jourrapide.com">whisfat1935@jourrapide.com</a>
														</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="selGender" class="col-md-3 control-label">Gender:</label>
													<div class="col-md-9">
														<p class="form-control-static">Male</p>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
													<div class="col-md-9">
														<p class="form-control-static">20.02.1985</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputPhone" class="col-md-3 control-label">Phone</label>
													<div class="col-md-9">
														<p class="form-control-static">607-656-6310</p>
													</div>
												</div>
											</div>
										</div>
										<h3>Address</h3>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputAddress1" class="col-md-3 control-label">Address 1</label>
													<div class="col-md-9">
														<p class="form-control-static">1219 Quiet Subdivision</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
													<div class="col-md-9">
														<p class="form-control-static">2546 Sunny Branch Manor</p>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputStates" class="col-md-3 control-label">States</label>
													<div class="col-md-9">
														<p class="form-control-static">New York</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputCity" class="col-md-3 control-label">City</label>
													<div class="col-md-9">
														<p class="form-control-static">New York</p>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputPostCode" class="col-md-3 control-label">Post Code</label>
													<div class="col-md-9">
														<p class="form-control-static">746239</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="inputCountry" class="col-md-3 control-label">Country</label>
													<div class="col-md-9">
														<p class="form-control-static">United States</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="button" class="btn btn-primary">Edit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="tab-form-seperated" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-yellow">
							<div class="panel-heading">Form Seperated</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal form-seperated">
									<div class="form-body">
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" /><span
													class="help-block">This is help text</span>
											</div>
										</div>
										<div class="form-group has-error">
											<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="glyphicon glyphicon-remove"></i> <input id="inputLastName" type="text" placeholder="Last Name"
														class="form-control" />
												</div>
												<span class="help-block text-danger">Please enter your Last Name!</span>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon">
													<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="radio">
													<label class="radio-inline"> <input type="radio" value="0" name="gender" />&nbsp; Male
													</label> <label class="radio-inline"> <input type="radio" value="1" name="gender" />&nbsp; Female
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputDay" type="text" placeholder="dd" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputMonth" type="text" placeholder="mm" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputYear" type="text" placeholder="yyyy" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPhone" class="col-md-3 control-label">Phone</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-mobile-phone"></i> <input id="inputPhone" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<input id="inputAddress1" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
											<div class="col-md-9">
												<input id="inputAddress2" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">District</label>
											<div class="col-md-4">
												<input id="inputDistrict" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-map-marker"></i> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPostCode" class="col-md-3 control-label">Post Code <span class='require'>*</span>
											</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-3 control-label">Country</label>
											<div class="col-md-4">
												<select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
						<div class="panel panel-violet">
							<div class="panel-heading">Form Dashed Seperated</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal form-seperated dashed">
									<div class="form-body">
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" /><span
													class="help-block">This is help text</span>
											</div>
										</div>
										<div class="form-group has-error">
											<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="glyphicon glyphicon-ok"></i> <input id="inputLastName" type="text" placeholder="Last Name"
														class="form-control" />
												</div>
												<span class="help-block text-danger">Please enter your Last Name!</span>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon">
													<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="radio">
													<label class="radio-inline"> <input type="radio" value="0" name="gender" />&nbsp; Male
													</label> <label class="radio-inline"> <input type="radio" value="1" name="gender" />&nbsp; Female
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputDay" type="text" placeholder="dd" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputMonth" type="text" placeholder="mm" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputYear" type="text" placeholder="yyyy" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPhone" class="col-md-3 control-label">Phone</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-mobile-phone"></i> <input id="inputPhone" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<input id="inputAddress1" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
											<div class="col-md-9">
												<input id="inputAddress2" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">District</label>
											<div class="col-md-4">
												<input id="inputDistrict" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-map-marker"></i> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPostCode" class="col-md-3 control-label">Post Code <span class='require'>*</span>
											</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-3 control-label">Country</label>
											<div class="col-md-4">
												<select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
						<div class="panel panel-violet">
							<div class="panel-heading">Form Row Stripped</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal form-seperated form-row-stripped">
									<div class="form-body">
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" /><span
													class="help-block">This is help text</span>
											</div>
										</div>
										<div class="form-group has-error">
											<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="glyphicon glyphicon-ok"></i> <input id="inputLastName" type="text" placeholder="Last Name"
														class="form-control" />
												</div>
												<span class="help-block text-danger">Please enter your Last Name!</span>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon">
													<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="radio">
													<label class="radio-inline"> <input type="radio" value="0" name="gender" />&nbsp; Male
													</label> <label class="radio-inline"> <input type="radio" value="1" name="gender" />&nbsp; Female
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputDay" type="text" placeholder="dd" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputMonth" type="text" placeholder="mm" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputYear" type="text" placeholder="yyyy" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPhone" class="col-md-3 control-label">Phone</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-mobile-phone"></i> <input id="inputPhone" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<input id="inputAddress1" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
											<div class="col-md-9">
												<input id="inputAddress2" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">District</label>
											<div class="col-md-4">
												<input id="inputDistrict" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-map-marker"></i> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPostCode" class="col-md-3 control-label">Post Code <span class='require'>*</span>
											</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-3 control-label">Country</label>
											<div class="col-md-4">
												<select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="tab-form-bordered" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-blue">
							<div class="panel-heading">Form Bordered</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal form-bordered">
									<div class="form-body">
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" /><span
													class="help-block">This is help text</span>
											</div>
										</div>
										<div class="form-group has-error">
											<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="glyphicon glyphicon-ok"></i> <input id="inputLastName" type="text" placeholder="Last Name"
														class="form-control" />
												</div>
												<span class="help-block text-danger">Please enter your Last Name!</span>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon">
													<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="radio">
													<label class="radio-inline"> <input type="radio" value="0" name="gender" />&nbsp; Male
													</label> <label class="radio-inline"> <input type="radio" value="1" name="gender" />&nbsp; Female
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputDay" type="text" placeholder="dd" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputMonth" type="text" placeholder="mm" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputYear" type="text" placeholder="yyyy" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPhone" class="col-md-3 control-label">Phone</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-mobile-phone"></i> <input id="inputPhone" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<input id="inputAddress1" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
											<div class="col-md-9">
												<input id="inputAddress2" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">District</label>
											<div class="col-md-4">
												<input id="inputDistrict" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-map-marker"></i> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPostCode" class="col-md-3 control-label">Post Code <span class='require'>*</span>
											</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-3 control-label">Country</label>
											<div class="col-md-4">
												<select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
						<div class="panel panel-pink">
							<div class="panel-heading">Form Dashed Bordered</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal form-bordered dashed">
									<div class="form-body">
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" /><span
													class="help-block">This is help text</span>
											</div>
										</div>
										<div class="form-group has-error">
											<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="glyphicon glyphicon-ok"></i> <input id="inputLastName" type="text" placeholder="Last Name"
														class="form-control" />
												</div>
												<span class="help-block text-danger">Please enter your Last Name!</span>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon">
													<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="radio">
													<label class="radio-inline"> <input type="radio" value="0" name="gender" />&nbsp; Male
													</label> <label class="radio-inline"> <input type="radio" value="1" name="gender" />&nbsp; Female
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputDay" type="text" placeholder="dd" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputMonth" type="text" placeholder="mm" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputYear" type="text" placeholder="yyyy" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPhone" class="col-md-3 control-label">Phone</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-mobile-phone"></i> <input id="inputPhone" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<input id="inputAddress1" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
											<div class="col-md-9">
												<input id="inputAddress2" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">District</label>
											<div class="col-md-4">
												<input id="inputDistrict" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-map-marker"></i> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPostCode" class="col-md-3 control-label">Post Code <span class='require'>*</span>
											</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-3 control-label">Country</label>
											<div class="col-md-4">
												<select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
						<div class="panel panel-green">
							<div class="panel-heading">Form Row Stripped</div>
							<div class="panel-body pan">
								<form action="#" class="form-horizontal form-bordered form-row-stripped">
									<div class="form-body">
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">First Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<input id="inputFirstName" type="text" placeholder="First Name" class="form-control" /><span
													class="help-block">This is help text</span>
											</div>
										</div>
										<div class="form-group has-error">
											<label for="inputLastName" class="col-md-3 control-label">Last Name <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="glyphicon glyphicon-ok"></i> <input id="inputLastName" type="text" placeholder="Last Name"
														class="form-control" />
												</div>
												<span class="help-block text-danger">Please enter your Last Name!</span>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-md-3 control-label">Email <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon">
													<i class="fa fa-envelope"></i> <input type="text" placeholder="Email Address" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selGender" class="col-md-3 control-label">Gender <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<div class="radio">
													<label class="radio-inline"> <input type="radio" value="0" name="gender" />&nbsp; Male
													</label> <label class="radio-inline"> <input type="radio" value="1" name="gender" />&nbsp; Female
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputBirthday" class="col-md-3 control-label">Birthday</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputDay" type="text" placeholder="dd" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputMonth" type="text" placeholder="mm" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputYear" type="text" placeholder="yyyy" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPhone" class="col-md-3 control-label">Phone</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-mobile-phone"></i> <input id="inputPhone" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress1" class="col-md-3 control-label">Address 1 <span class='require'>*</span>
											</label>
											<div class="col-md-9">
												<input id="inputAddress1" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputAddress2" class="col-md-3 control-label">Address 2</label>
											<div class="col-md-9">
												<input id="inputAddress2" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputFirstName" class="col-md-3 control-label">District</label>
											<div class="col-md-4">
												<input id="inputDistrict" type="text" placeholder="" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label for="inputCity" class="col-md-3 control-label">City <span class='require'>*</span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa fa-map-marker"></i> <input id="inputCity" type="text" placeholder="" class="form-control" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="inputPostCode" class="col-md-3 control-label">Post Code <span class='require'>*</span>
											</label>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
													<div class="col-md-2 col-xs-4">
														<input id="inputPostCode" type="text" placeholder="" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="selCountry" class="col-md-3 control-label">Country</label>
											<div class="col-md-4">
												<select id="selCountry" class="form-control">
													<option value="">Select a Country</option>
													<option value="">United States</option>
													<option value="">England</option>
													<option value="">France</option>
													<option value="">Spain</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-actions text-right pal">
										<button type="submit" class="btn btn-primary">Edit</button>
										&nbsp;
										<button type="button" class="btn btn-green">Cancel</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/js/ui-generals.js"></script>