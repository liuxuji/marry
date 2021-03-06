<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/iCheck/skins/all.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<ul id="checkbox-radio-Tab" class="nav nav-tabs">
			<li class="active"><a href="#icheck-tab" data-toggle="tab">iCheck</a></li>
		</ul>
		<div id="checkbox-radio-Tab-Content" class="tab-content">
			<div id="icheck-tab" class="tab-pane fade in active">
				<div id="demo-checkbox-radio" class="row">
					<div class="col-lg-12">
						<h3>Minimal skin</h3>
						<div id="minimal-skin" class="row skin">
							<div class="col-md-4">
								<h4 class="box-heading">Live Checkbox</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input class="icheckbox_minimal-red" id="minimal-checkbox-1" tabindex="5" type="checkbox" />&nbsp;&nbsp;
										<label for="minimal-checkbox-1">Checkbox 1</label></li>
									<li class="pbm"><input id="minimal-checkbox-2" tabindex="6" type="checkbox" checked="checked" />&nbsp;&nbsp;
										<label for="minimal-checkbox-2">Checkbox 2</label></li>
									<li class="pbm"><input id="minimal-checkbox-disabled" type="checkbox" disabled="disabled" />&nbsp;&nbsp;
										<label for="minimal-checkbox-disabled">Disabled</label></li>
									<li class="pbm"><input id="minimal-checkbox-disabled-checked" type="checkbox" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="minimal-checkbox-disabled-checked">Disabled & checked</label>
									</li>
								</ul>
								<div class="colors">
									<strong>Color schemes</strong>
									<ul class="list-unstyled">
										<li title="Black" class="active"></li>
										<li title="Red" class="red"></li>
										<li title="Green" class="green"></li>
										<li title="Blue" class="blue"></li>
										<li title="Aero" class="aero"></li>
										<li title="Grey" class="grey"></li>
										<li title="Orange" class="orange"></li>
										<li title="Yellow" class="yellow"></li>
										<li title="Pink" class="pink"></li>
										<li title="Purple" class="purple"></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<h4 class="box-heading">Live Radio</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="minimal-radio-1" tabindex="7" type="radio" name="minimal-radio" />&nbsp;&nbsp;
										<label for="minimal-radio-1">Radio button 1</label></li>
									<li class="pbm"><input id="minimal-radio-2" tabindex="8" type="radio" name="minimal-radio"
										checked="checked" />&nbsp;&nbsp; <label for="minimal-radio-2">Radio button 2</label></li>
									<li class="pbm"><input id="minimal-radio-disabled" type="radio" disabled="disabled" />&nbsp;&nbsp; <label
										for="minimal-radio-disabled">Disabled</label></li>
									<li class="pbm"><input id="minimal-radio-disabled-checked" type="radio" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="minimal-radio-disabled-checked">Disabled & checked</label></li>
								</ul>
							</div>
							<div class="col-md-4 skin-states">
								<h4 class="box-heading">State</h4>
								<ul class="list-unstyled">
									<li class="pbm">
										<div class="state icheckbox_minimal"></div>&nbsp;&nbsp;
										<div class="state iradio_minimal"></div>&nbsp;&nbsp; <label>Normal</label>
									</li>
									<li class="pbm">
										<div class="state icheckbox_minimal hover"></div>&nbsp;&nbsp;
										<div class="state iradio_minimal hover"></div>&nbsp;&nbsp; <label>Hover</label>
									</li>
									<li class="pbm">
										<div class="state icheckbox_minimal checked"></div>&nbsp;&nbsp;
										<div class="state iradio_minimal checked"></div>&nbsp;&nbsp; <label>Checked</label>
									</li>
									<li class="pbm">
										<div class="state icheckbox_minimal disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_minimal disabled"></div>&nbsp;&nbsp; <label>Disabled</label>
									</li>
									<li class="pbm">
										<div class="state icheckbox_minimal checked disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_minimal checked disabled"></div>&nbsp;&nbsp; <label>Disabled & checked</label>
									</li>
								</ul>
							</div>
						</div>
						<hr class="mtxxl mbxxl" />
						<h3>Square skin</h3>
						<div id="square-skin" class="row skin skin-square">
							<div class="col-md-4">
								<h4 class="box-heading">Live Checkbox</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="square-checkbox-1" tabindex="9" type="checkbox" />&nbsp;&nbsp; <label
										for="square-checkbox-1">Checkbox 1</label></li>
									<li class="pbm"><input id="square-checkbox-2" tabindex="10" type="checkbox" checked="checked" />&nbsp;&nbsp;
										<label for="square-checkbox-2">Checkbox 2</label></li>
									<li class="pbm"><input id="square-checkbox-disabled" type="checkbox" disabled="disabled" />&nbsp;&nbsp; <label
										for="square-checkbox-disabled">Disabled</label></li>
									<li class="pbm"><input id="square-checkbox-disabled-checked" type="checkbox" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="square-checkbox-disabled-checked">Disabled & checked</label></li>
								</ul>
								<div class="colors clear">
									<strong>Color schemes</strong>
									<ul class="list-unstyled">
										<li title="Black"></li>
										<li title="Red" class="red"></li>
										<li title="Green" class="green active"></li>
										<li title="Blue" class="blue"></li>
										<li title="Aero" class="aero"></li>
										<li title="Grey" class="grey"></li>
										<li title="Orange" class="orange"></li>
										<li title="Yellow" class="yellow"></li>
										<li title="Pink" class="pink"></li>
										<li title="Purple" class="purple"></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<h4 class="box-heading">Live Radio</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="square-radio-1" tabindex="11" type="radio" name="square-radio" />&nbsp;&nbsp;
										<label for="square-radio-1">Radio button 1</label></li>
									<li class="pbm"><input id="square-radio-2" tabindex="12" type="radio" name="square-radio"
										checked="checked" />&nbsp;&nbsp; <label for="square-radio-2">Radio button 2</label></li>
									<li class="pbm"><input id="square-radio-disabled" type="radio" disabled="disabled" />&nbsp;&nbsp; <label
										for="square-radio-disabled">Disabled</label></li>
									<li class="pbm"><input id="square-radio-disabled-checked" type="radio" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="square-radio-disabled-checked">Disabled & checked</label></li>
								</ul>
							</div>
							<div class="col-md-4 skin-states">
								<h4 class="box-heading">State</h4>
								<ul class="list-unstyled">
									<li class="pbm">
										<div class="state icheckbox_square-green"></div>&nbsp;&nbsp;
										<div class="state iradio_square-green"></div>&nbsp;&nbsp; Normal
									</li>
									<li class="pbm">
										<div class="state icheckbox_square-green hover"></div>&nbsp;&nbsp;
										<div class="state iradio_square-green hover"></div>&nbsp;&nbsp; Hover
									</li>
									<li class="pbm">
										<div class="state icheckbox_square-green checked"></div>&nbsp;&nbsp;
										<div class="state iradio_square-green checked"></div>&nbsp;&nbsp; Checked
									</li>
									<li class="pbm">
										<div class="state icheckbox_square-green disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_square-green disabled"></div>&nbsp;&nbsp; Disabled
									</li>
									<li class="pbm">
										<div class="state icheckbox_square-green checked disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_square-green checked disabled"></div>&nbsp;&nbsp; Disabled & checked
									</li>
								</ul>
							</div>
						</div>
						<hr class="mtxxl mbxxl" />
						<h3>Flat skin</h3>
						<div id="flat-skin" class="row skin skin-flat">
							<div class="col-md-4">
								<h4 class="box-heading">Live Checkbox</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="flat-checkbox-1" tabindex="13" type="checkbox" />&nbsp;&nbsp; <label
										for="flat-checkbox-1">Checkbox 1</label></li>
									<li class="pbm"><input id="flat-checkbox-2" tabindex="14" type="checkbox" checked="checked" />&nbsp;&nbsp;
										<label for="flat-checkbox-2">Checkbox 2</label></li>
									<li class="pbm"><input id="flat-checkbox-disabled" type="checkbox" disabled="disabled" />&nbsp;&nbsp; <label
										for="flat-checkbox-disabled">Disabled</label></li>
									<li class="pbm"><input id="flat-checkbox-disabled-checked" type="checkbox" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="flat-checkbox-disabled-checked">Disabled & checked</label></li>
								</ul>
								<div class="colors">
									<strong>Color schemes</strong>
									<ul class="list-unstyled">
										<li title="Black"></li>
										<li title="Red" class="red active"></li>
										<li title="Green" class="green"></li>
										<li title="Blue" class="blue"></li>
										<li title="Aero" class="aero"></li>
										<li title="Grey" class="grey"></li>
										<li title="Orange" class="orange"></li>
										<li title="Yellow" class="yellow"></li>
										<li title="Pink" class="pink"></li>
										<li title="Purple" class="purple"></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<h4 class="box-heading">Live Radio</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="flat-radio-1" tabindex="15" type="radio" name="flat-radio" />&nbsp;&nbsp; <label
										for="flat-radio-1">Radio button 1</label></li>
									<li class="pbm"><input id="flat-radio-2" tabindex="16" type="radio" name="flat-radio" checked="checked" />&nbsp;&nbsp;
										<label for="flat-radio-2">Radio button 2</label></li>
									<li class="pbm"><input id="flat-radio-disabled" type="radio" disabled="disabled" />&nbsp;&nbsp; <label
										for="flat-radio-disabled">Disabled</label></li>
									<li class="pbm"><input id="flat-radio-disabled-checked" type="radio" checked="checked" disabled="disabled" />&nbsp;&nbsp;
										<label for="flat-radio-disabled-checked">Disabled & checked</label></li>
								</ul>
							</div>
							<div class="col-md-4 skin-states">
								<h4 class="box-heading">State</h4>
								<ul class="list-unstyled">
									<li class="pbm">
										<div class="state icheckbox_flat-red"></div>&nbsp;&nbsp;
										<div class="state iradio_flat-red"></div>&nbsp;&nbsp; Normal
									</li>
									<li class="pbm">
										<div class="state icheckbox_flat-red checked"></div>&nbsp;&nbsp;
										<div class="state iradio_flat-red checked"></div>&nbsp;&nbsp; Checked
									</li>
									<li class="pbm">
										<div class="state icheckbox_flat-red disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_flat-red disabled"></div>&nbsp;&nbsp; Disabled
									</li>
									<li class="pbm">
										<div class="state icheckbox_flat-red checked disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_flat-red checked disabled"></div>&nbsp;&nbsp; Disabled & checked
									</li>
								</ul>
							</div>
						</div>
						<hr class="mtxxl mbxxl" />
						<h3>Line skin</h3>
						<div id="line-skin" class="row skin skin-line">
							<div class="col-md-4">
								<h4 class="box-heading">Live Checkbox</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="line-checkbox-1" tabindex="17" type="checkbox" />&nbsp;&nbsp; <label
										for="line-checkbox-1">Checkbox 1</label></li>
									<li class="pbm"><input id="line-checkbox-2" tabindex="18" type="checkbox" checked="checked" />&nbsp;&nbsp;
										<label for="line-checkbox-2">Checkbox 2</label></li>
									<li class="pbm"><input id="line-checkbox-disabled" type="checkbox" disabled="disabled" />&nbsp;&nbsp; <label
										for="line-checkbox-disabled">Disabled</label></li>
									<li class="pbm"><input id="line-checkbox-disabled-checked" type="checkbox" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="line-checkbox-disabled-checked">Disabled & checked</label></li>
								</ul>
								<div class="colors">
									<strong>Color schemes</strong>
									<ul class="list-unstyled">
										<li title="Black"></li>
										<li title="Red" class="red"></li>
										<li title="Green" class="green"></li>
										<li title="Blue" class="blue active"></li>
										<li title="Aero" class="aero"></li>
										<li title="Grey" class="grey"></li>
										<li title="Orange" class="orange"></li>
										<li title="Yellow" class="yellow"></li>
										<li title="Pink" class="pink"></li>
										<li title="Purple" class="purple"></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4">
								<h4 class="box-heading">Live Radio</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="line-radio-1" tabindex="19" type="radio" name="line-radio" />&nbsp;&nbsp; <label
										for="line-radio-1">Radio button 1</label></li>
									<li class="pbm"><input id="line-radio-2" tabindex="20" type="radio" name="line-radio" checked="checked" />&nbsp;&nbsp;
										<label for="line-radio-2">Radio button 2</label></li>
									<li class="pbm"><input id="line-radio-disabled" type="radio" disabled="disabled" />&nbsp;&nbsp; <label
										for="line-radio-disabled">Disabled</label></li>
									<li class="pbm"><input id="line-radio-disabled-checked" type="radio" checked="checked" disabled="disabled" />&nbsp;&nbsp;
										<label for="line-radio-disabled-checked">Disabled & checked</label></li>
								</ul>
							</div>
							<div class="col-md-4 skin-states">
								<h4 class="box-heading">State</h4>
								<ul class="list-unstyled">
									<li class="pbm">
										<div class="state icheckbox_line-blue">
											<div class="icheck_line-icon"></div>
											&nbsp;&nbsp; Normal
										</div>
									</li>
									<li class="pbm">
										<div class="state icheckbox_line-blue hover">
											<div class="icheck_line-icon"></div>
											&nbsp;&nbsp; Hover
										</div>
									</li>
									<li class="pbm">
										<div class="state icheckbox_line-blue checked">
											<div class="icheck_line-icon"></div>
											&nbsp;&nbsp; Checked
										</div>
									</li>
									<li class="pbm">
										<div class="state icheckbox_line-blue disabled">
											<div class="icheck_line-icon"></div>
											&nbsp;&nbsp; Disabled
										</div>
									</li>
									<li class="pbm">
										<div class="state icheckbox_line-blue checked disabled">
											<div class="icheck_line-icon"></div>
											&nbsp;&nbsp; Disabled & checked
										</div>
									</li>
								</ul>
							</div>
						</div>
						<hr class="mtxxl mbxxl" />
						<h3>Polaris skin</h3>
						<div id="polaris-skin" class="row skin skin-polaris">
							<div class="col-md-4">
								<h4 class="box-heading">Live Checkbox</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="polaris-checkbox-1" tabindex="21" type="checkbox" />&nbsp;&nbsp; <label
										for="polaris-checkbox-1">Checkbox 1</label></li>
									<li class="pbm"><input id="polaris-checkbox-2" tabindex="22" type="checkbox" checked="checked" />&nbsp;&nbsp;
										<label for="polaris-checkbox-2">Checkbox 2</label></li>
									<li class="pbm"><input id="polaris-checkbox-disabled" type="checkbox" disabled="disabled" />&nbsp;&nbsp;
										<label for="polaris-checkbox-disabled">Disabled</label></li>
									<li class="pbm"><input id="polaris-checkbox-disabled-checked" type="checkbox" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="polaris-checkbox-disabled-checked">Disabled & checked</label>
									</li>
								</ul>
							</div>
							<div class="col-md-4">
								<h4 class="box-heading">Live Radio</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="polaris-radio-1" tabindex="23" type="radio" name="polaris-radio" />&nbsp;&nbsp;
										<label for="polaris-radio-1">Radio button 1</label></li>
									<li class="pbm"><input id="polaris-radio-2" tabindex="24" type="radio" name="polaris-radio"
										checked="checked" />&nbsp;&nbsp; <label for="polaris-radio-2">Radio button 2</label></li>
									<li class="pbm"><input id="polaris-radio-disabled" type="radio" disabled="disabled" />&nbsp;&nbsp; <label
										for="polaris-radio-disabled">Disabled</label></li>
									<li class="pbm"><input id="polaris-radio-disabled-checked" type="radio" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="polaris-radio-disabled-checked">Disabled & checked</label></li>
								</ul>
							</div>
							<div class="col-md-4 skin-states">
								<h4 class="box-heading">State</h4>
								<ul class="list-unstyled">
									<li class="pbm">
										<div class="state icheckbox_polaris"></div>&nbsp;&nbsp;
										<div class="state iradio_polaris"></div>&nbsp;&nbsp; Normal
									</li>
									<li class="pbm">
										<div class="state icheckbox_polaris hover"></div>&nbsp;&nbsp;
										<div class="state iradio_polaris hover"></div>&nbsp;&nbsp; Hover
									</li>
									<li class="pbm">
										<div class="state icheckbox_polaris checked"></div>&nbsp;&nbsp;
										<div class="state iradio_polaris checked"></div>&nbsp;&nbsp; Checked
									</li>
									<li class="pbm">
										<div class="state icheckbox_polaris disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_polaris disabled"></div>&nbsp;&nbsp; Disabled
									</li>
									<li class="pbm">
										<div class="state icheckbox_polaris checked disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_polaris checked disabled"></div>&nbsp;&nbsp; Disabled & checked
									</li>
								</ul>
							</div>
						</div>
						<hr class="mtxxl mbxxl" />
						<h3>Futurico skin</h3>
						<div id="futurico-skin" class="row skin skin-futurico">
							<div class="col-md-4">
								<h4 class="box-heading">Live Checkbox</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="futurico-checkbox-1" tabindex="25" type="checkbox" />&nbsp;&nbsp; <label
										for="futurico-checkbox-1">Checkbox 1</label></li>
									<li class="pbm"><input id="futurico-checkbox-2" tabindex="26" type="checkbox" checked="checked" />&nbsp;&nbsp;
										<label for="futurico-checkbox-2">Checkbox 2</label></li>
									<li class="pbm"><input id="futurico-checkbox-disabled" type="checkbox" disabled="disabled" />&nbsp;&nbsp;
										<label for="futurico-checkbox-disabled">Disabled</label></li>
									<li class="pbm"><input id="futurico-checkbox-disabled-checked" type="checkbox" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="futurico-checkbox-disabled-checked">Disabled & checked</label>
									</li>
								</ul>
							</div>
							<div class="col-md-4">
								<h4 class="box-heading">Live Radio</h4>
								<ul class="list-unstyled">
									<li class="pbm"><input id="futurico-radio-1" tabindex="27" type="radio" name="futurico-radio" />&nbsp;&nbsp;
										<label for="futurico-radio-1">Radio button 1</label></li>
									<li class="pbm"><input id="futurico-radio-2" tabindex="28" type="radio" name="futurico-radio"
										checked="checked" />&nbsp;&nbsp; <label for="futurico-radio-2">Radio button 2</label></li>
									<li class="pbm"><input id="futurico-radio-disabled" type="radio" disabled="disabled" />&nbsp;&nbsp; <label
										for="futurico-radio-disabled">Disabled</label></li>
									<li class="pbm"><input id="futurico-radio-disabled-checked" type="radio" checked="checked"
										disabled="disabled" />&nbsp;&nbsp; <label for="futurico-radio-disabled-checked">Disabled & checked</label></li>
								</ul>
							</div>
							<div class="col-md-4 skin-states">
								<h4 class="box-heading">State</h4>
								<ul class="list-unstyled">
									<li class="pbm">
										<div class="state icheckbox_futurico"></div>&nbsp;&nbsp;
										<div class="state iradio_futurico"></div>&nbsp;&nbsp; Normal
									</li>
									<li class="pbm">
										<div class="state icheckbox_futurico checked"></div>&nbsp;&nbsp;
										<div class="state iradio_futurico checked"></div>&nbsp;&nbsp; Checked
									</li>
									<li class="pbm">
										<div class="state icheckbox_futurico disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_futurico disabled"></div>&nbsp;&nbsp; Disabled
									</li>
									<li class="pbm">
										<div class="state icheckbox_futurico checked disabled"></div>&nbsp;&nbsp;
										<div class="state iradio_futurico checked disabled"></div>&nbsp;&nbsp; Disabled & checked
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/iCheck/icheck.min.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/custom.min.js"></script>
<!-- 本页操作相关 -->
<script src="${webroot}/js/ui-checkbox-radio.js"></script>
