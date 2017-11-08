<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/ion-rangeSlider/css/ion.rangeSlider.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/nouislider/jquery.nouislider.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<ul id="sliderTab" class="nav nav-tabs ul-edit">
			<li class="active"><a href="#ui-slider-tab" data-toggle="tab">jQuery UI Sliders</a></li>
			<li><a href="#noui-slider-tab" data-toggle="tab">NoUI Sliders</a></li>
			<li><a href="#ion-range-slider-tab" data-toggle="tab">Ion Range Sliders</a></li>
		</ul>
		<div id="sliderTabContent" class="tab-content pan">
			<div id="ui-slider-tab" class="tab-pane fade in active">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">Default</label>
							<div class="col-md-6">
								<div id="slider-default" class="slider"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Range</label>
							<div class="col-md-6">
								<p>
									<label for="amount">Price range:</label> <input id="amount" type="text"
										style="border: 0; color: #f6931f; font-weight: bold;" />
								</p>
								<div id="slider-range"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Multiple sliders </label>
							<div class="col-md-6">
								<div id="slider-multi" class="slider">
									<span>88</span><span>77</span><span>55</span><span>33</span><span>40</span><span>45</span><span>70</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Maximum</label>
							<div class="col-md-6">
								<p>
									<label for="amount">Maximum Value:</label> <input id="amount-max" type="text"
										style="border: 0; color: #f6931f; font-weight: bold;" />
								</p>
								<div id="slider-range-max" class="slider"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Minimum</label>
							<div class="col-md-6">
								<p>
									<label for="amount">Minimum Value:</label> <input id="amount-min" type="text"
										style="border: 0; color: #f6931f; font-weight: bold;" />
								</p>
								<div id="slider-range-min" class="slider"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Snap to increments </label>
							<div class="col-md-6">
								<p>
									<label for="amount-snap">Donation amount ($50 increments): </label> <input id="amount-snap" type="text"
										style="border: 0; color: #f6931f; font-weight: bold;" />
								</p>
								<div id="slider-snap" class="slider"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Vertical slider </label>
							<div class="col-md-6">
								<p>
									<label for="amount-vertical">Volume:</label> <input id="amount-vertical" type="text"
										style="border: 0; color: #f6931f; font-weight: bold;" />
								</p>
								<div id="slider-vertical" style="height: 200px;" class="slider"></div>
							</div>
						</div>
						<div class="form-group last">
							<label class="col-md-3 control-label">Vertical range slider </label>
							<div class="col-md-6">
								<p>
									<label for="amount-vertical-range">Target sales goal (Millions): </label> <input id="amount-vertical-range"
										type="text" style="border: 0; color: #f6931f; font-weight: bold;" />
								</p>
								<div id="slider-vertical-range" style="height: 200px;" class="slider"></div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div id="noui-slider-tab" class="tab-pane fade">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">Default</label>
							<div class="col-md-6">
								<div id="noui-slider-default"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Range</label>
							<div class="col-md-6">
								<p>
									<span id="slider1val" class="example-val"></span>
								</p>
								<div id="noui-slider-range"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Stepping and snapping to values</label>
							<div class="col-md-6">
								<p>
									<span id="slider2val" class="example-val"></span>
								</p>
								<div id="noui-slider-step-snap"></div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div id="ion-range-slider-tab" class="tab-pane fade">
				<form action="#" class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">Default</label>
							<div class="col-md-6">
								<input id="example-1" type="text" name="example1" value="10000;100000" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Range 1</label>
							<div class="col-md-6">
								<input id="example-2" type="text" name="example2" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Range 2</label>
							<div class="col-md-6">
								<input id="example-3" type="text" name="example3" value="1000;100000" data-type="double" data-step="500"
									data-postfix=" â¬" data-from="30000" data-to="90000" data-hasgrid="false" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Length Slider</label>
							<div class="col-md-6">
								<input id="example-4" type="text" name="example4" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Temperature Slider</label>
							<div class="col-md-6">
								<input id="example-5" type="text" name="example5" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Month Slider</label>
							<div class="col-md-6">
								<input id="example-6" type="text" name="example6" value="" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/ion-rangeSlider/js/ion.rangeSlider.min.js"></script>
<script src="${webroot}/madmin/vendors/nouislider/jquery.nouislider.min.js"></script>
<script src="${webroot}/js/ui-sliders.js"></script>