<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/select2/select2-madmin.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-select/bootstrap-select.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/multi-select/css/multi-select-madmin.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<ul id="generalTab" class="nav nav-tabs ul-edit responsive">
			<li class="active"><a href="#bootstrap-select" data-toggle="tab">Bootstrap</a></li>
			<li><a href="#sizeing-select2" data-toggle="tab">Sizing - Select2</a></li>
			<li><a href="#advance-select2" data-toggle="tab">Advance - Select2</a></li>
			<li><a href="#multiple-select" data-toggle="tab">Multiple Select</a></li>
		</ul>
		<div id="generalTabContent" class="tab-content responsive">
			<div id="bootstrap-select" class="tab-pane fade in active">
				<div class="row">
					<div class="col-lg-12">
						<form role="form" class="form-horizontal form-bordered">
							<div class="form-body">
								<div class="form-group">
									<label class="control-label col-md-3">默认</label>
									<div class="col-md-7">
										<select class="selectpicker form-control">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">分组</label>
									<div class="col-md-7">
										<select data-style="btn-white" class="selectpicker form-control">
											<optgroup label="Picnic">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</optgroup>
											<optgroup label="Camping">
												<option>Tent</option>
												<option>Flashlight</option>
												<option>Toilet Paper</option>
											</optgroup>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">多选</label>
									<div class="col-md-7">
										<select multiple="multiple" data-style="btn-white" class="selectpicker form-control">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">样式</label>
									<div class="col-md-7">
										<div class="row mbm">
											<div class="col-md-3">
												<select data-style="btn-primary" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-success" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-warning" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-info" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
										</div>
										<div class="row mbm">
											<div class="col-md-3">
												<select data-style="btn-danger" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-orange" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-red" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-green" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
										</div>
										<div class="row mbm">
											<div class="col-md-3">
												<select data-style="btn-yellow" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-blue" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-violet" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-pink" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-md-3">
												<select data-style="btn-grey" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-dark" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
											<div class="col-md-3">
												<select data-style="btn-white" class="selectpicker form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">可实时搜索过滤的</label>
									<div class="col-md-4">
										<select data-style="btn-white" data-live-search="true" class="selectpicker form-control">
											<option>Hot Dog, Fries and a Soda</option>
											<option>Burger, Shake and a Smile</option>
											<option>Sugar, Spice and all things nice</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">自定义多选标题</label>
									<div class="col-md-4">
										<select data-style="btn-white" multiple="multiple" title="请从下面的列表中选择一个或多个..."
											class="selectpicker form-control">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">选中多个时显示为数量格式</label>
									<div class="col-md-4">
										<select data-style="btn-white" multiple="multiple" data-selected-text-format="count"
											class="selectpicker form-control">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">选中的标记为“√”</label>
									<div class="col-md-4">
										<select data-style="btn-white" class="selectpicker form-control show-tick">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">菜单上有箭头的</label>
									<div class="col-md-4">
										<select data-style="btn-white" class="selectpicker form-control show-menu-arrow">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">禁用</label>
									<div class="col-md-4">
										<select data-style="btn-white" disabled="disabled" class="selectpicker form-control">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">自定义大小</label>
									<div class="col-md-6">
										<div class="mbm">
											<select data-style="btn-white" data-width="150px" class="selectpicker form-control">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select> &nbsp; 150px
										</div>
										<div class="mbm">
											<select data-style="btn-white" class="selectpicker form-control input-medium">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select> &nbsp; .input-medium
										</div>
										<div class="mbm">
											<select data-style="btn-white" data-width="75%" class="selectpicker form-control">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select> &nbsp; 75%
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">控制显出最大数量的（例：5个）</label>
									<div class="col-md-4">
										<select data-style="btn-white" data-size="5" class="selectpicker form-control">
											<option>Mustard</option>
											<option>Ketchup</option>
											<option>Relish</option>
											<option>Mayonnaise</option>
											<option>Barbecue Sauce</option>
											<option>Salad Dressing</option>
											<option>Tabasco</option>
											<option>Salsa</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">追加二级显示的</label>
									<div class="col-md-4">
										<select data-style="btn-white" data-show-subtext="true" class="selectpicker form-control">
											<option data-subtext="French">Mustard</option>
											<option data-subtext="Heinz">Ketchup</option>
											<option data-subtext="Sweet">Relish</option>
											<option data-subtext="Miracle Whip">Mayonnaise</option>
											<option data-divider="true"></option>
											<option data-subtext="Honey">Barbecue Sauce</option>
											<option data-subtext="Ranch">Salad Dressing</option>
											<option data-subtext="Sweet &amp; Spicy">Tabasco</option>
											<option data-subtext="Chunky">Salsa</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">有图标的</label>
									<div class="col-md-4">
										<select data-style="btn-white" data-show-subtext="true" class="selectpicker form-control">
											<option data-icon="fa-glass">Mustard</option>
											<option data-icon="fa-heart">Ketchup</option>
											<option data-icon="fa-film">Relish</option>
											<option data-icon="fa-home">Mayonnaise</option>
											<option data-icon="fa-print">Barbecue Sauce</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">有HTML内容的</label>
									<div class="col-md-4">
										<select data-style="btn-white" data-show-subtext="true" class="selectpicker form-control">
											<option data-content="Mustard &lt;span class='label lable-sm label-success'&gt;5 &lt;/span&gt;">Mustard</option>
											<option data-content="Ketchup &lt;span class='label lable-sm label-orange'&gt;14 &lt;/span&gt;">Ketchup</option>
											<option data-content="Relish &lt;span class='label lable-sm label-yellow'&gt;9 &lt;/span&gt;">Relish</option>
											<option data-content="Mayonnaise &lt;span class='label lable-sm label-blue'&gt;26 &lt;/span&gt;">Mayonnaise</option>
											<option data-content="Barbecue Sauce &lt;span class='label lable-sm label-pink'&gt;20 &lt;/span&gt;">Barbecue
												Sauce</option>
										</select>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="sizeing-select2" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<form role="form" class="form-horizontal form-bordered">
							<div class="form-body">
								<div class="form-group">
									<label class="col-md-3 control-label">Column 4</label>
									<div class="col-md-4 col-sm-4 col-xs-4">
										<select class="select2-size form-control">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.col-md-4</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Column 6</label>
									<div class="col-md-6 col-sm-6 col-xs-6">
										<select class="select2-size form-control">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.col-md-6</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Column 7</label>
									<div class="col-md-7 col-sm-7 col-xs-7">
										<select class="select2-size form-control">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.col-md-7</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Column 9</label>
									<div class="col-md-9 col-sm-9 col-xs-9">
										<select class="select2-size form-control">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.col-md-9</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Extra Large</label>
									<div class="col-md-4 col-sm-4 col-xs-4">
										<select class="select2-size form-control input-xlarge">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.input-xlarge</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Large</label>
									<div class="col-md-4 col-sm-4 col-xs-4">
										<select class="select2-size form-control input-large">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.input-large</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Medium</label>
									<div class="col-md-4 col-sm-4 col-xs-4">
										<select class="select2-size form-control input-medium">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.input-medium</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Small</label>
									<div class="col-md-4 col-sm-4 col-xs-4">
										<select class="select2-size form-control input-small">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.input-small</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Extra Small</label>
									<div class="col-md-4 col-sm-4 col-xs-4">
										<select class="select2-size form-control input-xsmall">
											<option value="Category 1">Category 1</option>
											<option value="Category 2">Category 2</option>
											<option value="Category 3">Category 3</option>
											<option value="Category 4">Category 4</option>
										</select><span class="help-block">.input-xsmall</span>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="advance-select2" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<form role="form" class="form-horizontal form-bordered">
							<div class="form-body">
								<div class="form-group">
									<label class="control-label col-md-3">有框的多选 &lt;select&gt;</label>
									<div class="col-md-6">
										<select multiple="true" class="select2-multi-value form-control">
											<optgroup label="Alaskan/Hawaiian Time Zone">
												<option value="AK">Alaska</option>
												<option value="HI">Hawaii</option>
											</optgroup>
											<optgroup label="Pacific Time Zone">
												<option value="CA">California</option>
												<option value="NV">Nevada</option>
												<option value="OR">Oregon</option>
												<option value="WA">Washington</option>
											</optgroup>
											<optgroup label="Mountain Time Zone">
												<option value="AZ">Arizona</option>
												<option value="CO">Colorado</option>
												<option value="ID">Idaho</option>
												<option value="MT">Montana</option>
												<option value="NE">Nebraska</option>
												<option value="NM">New Mexico</option>
												<option value="ND">North Dakota</option>
												<option value="UT">Utah</option>
												<option value="WY">Wyoming</option>
											</optgroup>
											<optgroup label="Central Time Zone">
												<option value="AL">Alabama</option>
												<option value="AR">Arkansas</option>
												<option value="IL">Illinois</option>
												<option value="IA">Iowa</option>
												<option value="KS">Kansas</option>
												<option value="KY">Kentucky</option>
												<option value="LA">Louisiana</option>
												<option value="MN">Minnesota</option>
												<option value="MS">Mississippi</option>
												<option value="MO">Missouri</option>
												<option value="OK">Oklahoma</option>
												<option value="SD">South Dakota</option>
												<option value="TX">Texas</option>
												<option value="TN">Tennessee</option>
												<option value="WI">Wisconsin</option>
											</optgroup>
											<optgroup label="Eastern Time Zone">
												<option value="CT">Connecticut</option>
												<option value="DE">Delaware</option>
												<option value="FL">Florida</option>
												<option value="GA">Georgia</option>
												<option value="IN">Indiana</option>
												<option value="ME">Maine</option>
												<option value="MD">Maryland</option>
												<option value="MA">Massachusetts</option>
												<option value="MI">Michigan</option>
												<option value="NH">New Hampshire</option>
												<option value="NJ">New Jersey</option>
												<option value="NY">New York</option>
												<option value="NC">North Carolina</option>
												<option value="OH">Ohio</option>
												<option value="PA">Pennsylvania</option>
												<option value="RI">Rhode Island</option>
												<option value="SC">South Carolina</option>
												<option value="VT">Vermont</option>
												<option value="VA">Virginia</option>
												<option value="WV">West Virginia</option>
											</optgroup>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">有图标的</label>
									<div class="col-md-6">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-leaf"></i>
											</div>
											<select class="select2-size form-control">
												<option value="Category 1">Category 1</option>
												<option value="Category 2">Category 2</option>
												<option value="Category 3">Category 3</option>
												<option value="Category 4">Category 4</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">有框多选 &lt;input&gt;</label>
									<div class="col-md-6">
										<input type="hidden" value="red, blue" class="select2-tagging-support form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Loading Remote Data</label>
									<div class="col-md-6">
										<input type="hidden" class="select2-loading-remote-data form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Loading Data</label>
									<div class="col-md-6">
										<input type="hidden" class="select2-loading-data form-control" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="multiple-select" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
						<form role="form" class="form-horizontal form-bordered">
							<div class="form-body">
								<div class="form-group">
									<label class="control-label col-md-3">有预选择项的</label>
									<div class="col-md-6">
										<select id="pre-selected-options" multiple="multiple">
											<option value="elem_1" selected="selected">elem 1</option>
											<option value="elem_2">elem 2</option>
											<option value="elem_3">elem 3</option>
											<option value="elem_4" selected="selected">elem 4</option>
											<option value="elem_5">elem 5</option>
											<option value="elem_6">elem 6</option>
											<option value="elem_7">elem 7</option>
											<option value="elem_8">elem 8</option>
											<option value="elem_9">elem 9</option>
											<option value="elem_10">elem 10</option>
											<option value="elem_11">elem 11</option>
											<option value="elem_12">elem 12</option>
											<option value="elem_13">elem 13</option>
											<option value="elem_14">elem 14</option>
											<option value="elem_15">elem 15</option>
											<option value="elem_16">elem 16</option>
											<option value="elem_17">elem 17</option>
											<option value="elem_18">elem 18</option>
											<option value="elem_19">elem 19</option>
											<option value="elem_20">elem 20</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">有选中回调的</label>
									<div class="col-md-6">
										<select id="callbacks" multiple="multiple">
											<option value="elem_1" selected="selected">elem 1</option>
											<option value="elem_2">elem 2</option>
											<option value="elem_3">elem 3</option>
											<option value="elem_4" selected="selected">elem 4</option>
											<option value="elem_5">elem 5</option>
											<option value="elem_6">elem 6</option>
											<option value="elem_7">elem 7</option>
											<option value="elem_8">elem 8</option>
											<option value="elem_9">elem 9</option>
											<option value="elem_10">elem 10</option>
											<option value="elem_11">elem 11</option>
											<option value="elem_12">elem 12</option>
											<option value="elem_13">elem 13</option>
											<option value="elem_14">elem 14</option>
											<option value="elem_15">elem 15</option>
											<option value="elem_16">elem 16</option>
											<option value="elem_17">elem 17</option>
											<option value="elem_18">elem 18</option>
											<option value="elem_19">elem 19</option>
											<option value="elem_20">elem 20</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">保持选择的顺序</label>
									<div class="col-md-6">
										<select id="keep-order" multiple="multiple">
											<option value="elem_1" selected="selected">elem 1</option>
											<option value="elem_2">elem 2</option>
											<option value="elem_3">elem 3</option>
											<option value="elem_4" selected="selected">elem 4</option>
											<option value="elem_5">elem 5</option>
											<option value="elem_6">elem 6</option>
											<option value="elem_7">elem 7</option>
											<option value="elem_8">elem 8</option>
											<option value="elem_9">elem 9</option>
											<option value="elem_10">elem 10</option>
											<option value="elem_11">elem 11</option>
											<option value="elem_12">elem 12</option>
											<option value="elem_13">elem 13</option>
											<option value="elem_14">elem 14</option>
											<option value="elem_15">elem 15</option>
											<option value="elem_16">elem 16</option>
											<option value="elem_17">elem 17</option>
											<option value="elem_18">elem 18</option>
											<option value="elem_19">elem 19</option>
											<option value="elem_20">elem 20</option>
										</select><span class="help-block mtm">注意：如果原始select中有optgroups时，这个功能将不生效。</span>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">预制的公用方法</label>
									<div class="col-md-6">
										<div class="btn-group btn-group-sm mbm">
											<a id="select-all" href="#" class="btn btn-white">全选</a>
											<a id="deselect-all" href="#" class="btn btn-white">全不选</a>
											<a id="select-10" href="#" class="btn btn-white">选择前10个</a>
											<a id="deselect-10" href="#" class="btn btn-white">不选前10个</a>
											<a id="refresh" href="#" class="btn btn-white">刷新</a>
										</div>
										<select id="public-methods" multiple="multiple">
											<option value="elem_1">elem 1</option>
											<option value="elem_2">elem 2</option>
											<option value="elem_3">elem 3</option>
											<option value="elem_4" disabled="disabled">elem 4</option>
											<option value="elem_5">elem 5</option>
											<option value="elem_6">elem 6</option>
											<option value="elem_7">elem 7</option>
											<option value="elem_8">elem 8</option>
											<option value="elem_9">elem 9</option>
											<option value="elem_10">elem 10</option>
											<option value="elem_11">elem 11</option>
											<option value="elem_12">elem 12</option>
											<option value="elem_13">elem 13</option>
											<option value="elem_14">elem 14</option>
											<option value="elem_15">elem 15</option>
											<option value="elem_16">elem 16</option>
											<option value="elem_17">elem 17</option>
											<option value="elem_18">elem 18</option>
											<option value="elem_19">elem 19</option>
											<option value="elem_20">elem 20</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Optgroup</label>
									<div class="col-md-6">
										<select id="optgroup" multiple="multiple">
											<optgroup label="Friends">
												<option value="1">Yoda</option>
												<option value="2" selected="selected">Obiwan</option>
											</optgroup>
											<optgroup label="Enemies">
												<option value="3">Palpatine</option>
												<option value="4" disabled="disabled">Darth Vader</option>
											</optgroup>
										</select>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="${webroot}/madmin/vendors/responsive-tabs/responsive-tabs.js"></script>
<script src="${webroot}/madmin/vendors/select2/select2.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="${webroot}/madmin/vendors/multi-select/js/jquery.multi-select.js"></script>
<script src="${webroot}/js/ui-dropdown-select.js"></script>
<script type="text/javascript">
	$(function() {
		fakewaffle.responsiveTabs([ 'xs', 'sm' ]);
	});
</script>