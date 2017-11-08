<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-colorpicker/css/colorpicker.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-datepicker/css/datepicker.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link type="text/css" rel="stylesheet"
	href="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-clockface/css/clockface.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-switch/css/bootstrap-switch.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/iCheck/skins/all.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
				<div class="portlet box portlet-grey">
					<div class="portlet-header">
						<div class="caption">Placehoder &amp; Mask input</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body">
								<!--.form-group<label class="col-md-3 control-label">Label</label><div class="col-md-9"><input placeholder="placehoder" class="form-control"/></div>-->
								<div class="form-group">
									<label class="col-md-3 control-label">日期</label>
									<div class="col-md-9">
										<input id="date" placeholder="YYYY-MM-DD" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Phone</label>
									<div class="col-md-9">
										<input id="phone" placeholder="(123) 123-1234" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Product Key</label>
									<div class="col-md-9">
										<input id="product-key" placeholder="(ab) 12-123" class="form-control" />
									</div>
								</div>
								<div class="form-actions">
									<div class="col-md-offset-3 col-md-9">
										<button type="submit" class="btn btn-primary">Submit</button>
										&nbsp;
										<button type="button" class="btn btn-default">Cancel</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="portlet box portlet-yellow">
					<div class="portlet-header">
						<div class="caption">颜色拾取器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">默认样式</label>
									<div class="col-md-7">
										<input type="text" class="colorpicker-default form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">RGBA格式</label>
									<div class="col-md-7">
										<input type="text" data-color-format="rgba" class="colorpicker-rgba form-control" />
									</div>
								</div>
								<div class="form-group last">
									<label class="col-md-3 control-label">有预览图标的</label>
									<div class="col-md-7">
										<div data-color="#ff3246" data-color-format="rgba" class="input-group colorpicker-component">
											<input type="text" readonly="readonly" value="#ff3246" class="form-control" /><span class="input-group-btn"><button
													type="button" class="btn">
													<i style="color: #ff3246" class="fa fa-certificate"></i>
												</button></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="portlet box portlet-violet">
					<div class="portlet-header">
						<div class="caption">字数计数器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body">
								<div class="form-group">
									<label class="col-md-3 control-label">Input</label>
									<div class="col-md-9">
										<input id="message1" type="text" name="message1" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Textareas</label>
									<div class="col-md-9">
										<textarea id="message2" name="message2" class="form-control"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">自定义示例</label>
									<div class="col-md-9">
										<span class="help-block">消息内容 (限制50个字符, 剩余20个开始报警)</span>
										<textarea id="message3" name="message3" rows="6" class="form-control"></textarea>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="portlet box portlet-green">
					<div class="portlet-header">
						<div class="caption">输入框大小</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body">
								<div class="form-group">
									<label class="col-md-3 control-label">宽度大号</label>
									<div class="col-md-9">
										<input type="text" placeholder=".input-large" class="form-control input-large" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">宽度中号</label>
									<div class="col-md-9">
										<input type="text" placeholder=".input-medium" class="form-control input-medium" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">宽度小号</label>
									<div class="col-md-9">
										<input type="text" placeholder=".input-small" class="form-control input-small" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">宽度超小号</label>
									<div class="col-md-9">
										<input type="text" placeholder=".input-xsmall" class="form-control input-xsmall" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">字号大号</label>
									<div class="col-md-9">
										<input type="text" placeholder="Large Input" class="input-lg form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">字号中号</label>
									<div class="col-md-9">
										<input type="text" placeholder="Medium Input" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">字号小号</label>
									<div class="col-md-9">
										<input type="text" placeholder="Small Input" class="input-sm form-control" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="portlet box portlet-blue">
					<div class="portlet-header">
						<div class="caption">输入框提示块</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body">
								<div class="form-group">
									<label class="col-md-3 control-label mtxl">Username</label>
									<div class="col-md-4">
										<p class="text-success">Help block above</p>
										<input class="form-control input-small" />
									</div>
								</div>
								<div class="form-group form-inline">
									<label class="col-md-3 control-label">Password</label>
									<div class="col-md-9">
										<input class="form-control input-small mrl" /><span class="text-warning mts help-block-right">Help
											block on the right</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Password retype</label>
									<div class="col-md-6">
										<input class="form-control input-small" />
										<p class="text-danger">Help block below</p>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="portlet box portlet-orange">
					<div class="portlet-header">
						<div class="caption">时间范围选择器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">日期</label>
									<div class="col-md-7">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" name="daterangepicker-default" class="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">日期和时间</label>
									<div class="col-md-7">
										<div class="input-group">
											<input type="text" name="daterangepicker-date-time" class="form-control" />
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">预定义时间范围选择</label>
									<div class="col-md-6">
										<div class="btn btn-blue reportrange">
											<i class="fa fa-calendar"></i>&nbsp;<span></span>&nbsp;报道&nbsp;<i class="fa fa-angle-down"></i>
											 <input type="hidden" name="datestart" /> <input type="hidden" name="endstart" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="portlet box portlet-blue">
					<div class="portlet-header">
						<div class="caption">日期时间选择器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" name="datetime-picker" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">默认方式</label>
									<div class="col-md-6">
										<div class="input-group datetimepicker-default date">
											<input type="text" name="datetime" class="form-control" />
											<a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar"></i></a>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">仅时间</label>
									<div class="col-md-6">
										<div class="input-group datetimepicker-disable-date date">
											<input type="text" name="time" class="form-control" />
											<a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-clock-o"></i></a>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">仅日期</label>
									<div class="col-md-6">
										<div class="input-group datetimepicker-disable-time date">
											<input type="text" name="date" class="form-control" />
											<a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar"></i></a>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">有事件和连接的</label>
									<div class="col-md-6">
										<div class="input-group datetimepicker-start date mbl">
											<input type="text" name="datetime_event_start" class="form-control" />
											<a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar"></i></a>
										</div>
									</div>
									<div class="col-md-6 col-md-offset-3">
										<div class="input-group datetimepicker-end date">
											<input type="text" name="datetime_event_end" class="form-control" />
											<a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-clock-o"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="portlet box portlet-yellow">
					<div class="portlet-header">
						<div class="caption">时间选择器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">默认</label>
									<div class="col-md-4">
										<div class="input-group bootstrap-timepicker">
											<input type="text" class="timepicker-default form-control" /><span class="input-group-addon"><i
												class="fa fa-clock-o"></i></span>
										</div>
									</div>
								</div>
								<div class="form-group last">
									<label class="col-md-3 control-label">24小时制</label>
									<div class="col-md-4">
										<div class="input-group bootstrap-timepicker">
											<input type="text" class="timepicker-24hr form-control" /><span class="input-group-addon"><i
												class="fa fa-clock-o"></i></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="portlet box portlet-pink">
					<div class="portlet-header">
						<div class="caption">日期选择器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">默认的</label>
									<div class="col-md-5">
										<input type="text" data-date-format="dd/mm/yyyy" placeholder="dd/mm/yyyy"
											class="datepicker-default form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">自定义格式的</label>
									<div class="col-md-5">
										<input type="text" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd"
											class="datepicker-default form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">选每年的元旦</label>
									<div class="col-md-5">
										<div class="input-group">
											<input type="text" class="datepicker-years form-control" />
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">范围</label>
									<div class="col-md-8">
										<div class="input-group input-daterange">
											<input type="text" name="startdate" class="form-control" />
											<span class="input-group-addon">到</span>
											<input type="text" name="enddate" class="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">内联显示</label>
									<div class="col-md-3">
										<div class="datepicker-inline"></div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="portlet box portlet-violet">
					<div class="portlet-header">
						<div class="caption">开关</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">颜色</label>
									<div class="col-md-9">
										<div data-on="primary" data-off="info" class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div data-on="info" data-off="success" class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div data-on="success" data-off="warning" class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div data-on="warning" data-off="danger" class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div data-on="danger" data-off="default" class="make-switch mts">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div data-on="default" data-off="primary" class="make-switch mts">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">大小</label>
									<div class="col-md-9">
										<div class="make-switch switch-large">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div class="make-switch switch-small">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
										&nbsp;
										<div class="make-switch switch-mini">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">禁用</label>
									<div class="col-md-9">
										<div data-on="primary" class="make-switch">
											<input type="checkbox" checked="checked" disabled="disabled" class="switch" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">自定义文本</label>
									<div class="col-md-9">
										<div data-on-label="Open" data-off-label="Close" data-text-label="Door" class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">图标</label>
									<div class="col-md-9">
										<div data-on-label="&lt;i class=&quot;fa fa-microphone&quot;&gt;&lt;/i&gt;"
											data-off-label="&lt;i class=&quot;fa fa-power-off&quot;&gt;&lt;/i&gt;" class="make-switch">
											<input type="checkbox" checked="checked" class="switch" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="portlet box portlet-green">
					<div class="portlet-header">
						<div class="caption">表盘时间选择器</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body pan">
						<form role="form" class="form-horizontal form-separated">
							<div class="form-body pdl">
								<div class="form-group">
									<label class="col-md-3 control-label">Default</label>
									<div class="col-md-4">
										<input type="text" value="14:30" data-format="HH:mm" class="clockface-default form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Clockface component</label>
									<div class="col-md-4">
										<div class="input-group">
											<input type="text" value="2:30 PM" data-format="hh:mm A" class="clockface-component form-control" /><span
												id="btn-clockface-component" class="input-group-btn"><button type="button" class="btn btn-default">
													<i class="fa fa-clock-o"></i>
												</button></span>
										</div>
									</div>
								</div>
								<div class="form-group last">
									<label class="col-md-3 control-label">Clockface Inline</label>
									<div class="col-md-4">
										<div style="padding: 0; float: left;" class="clockface-inline well"></div>
									</div>
								</div>
							</div>
							<div class="form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-primary">Submit</button>
									&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="portlet box portlet-pink">
					<div class="portlet-header">
						<div class="caption">Default Form</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="InputText">Text</label> <input type="email" id="InputText" placeholder="Enter text"
											class="form-control" />
									</div>
									<div class="form-group">
										<label for="InputEmail">Email Address</label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="text"
												placeholder="Email Address" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="InputPassword">Password</label>
										<div class="input-group">
											<input type="password" placeholder="Password" class="form-control" /><span class="input-group-addon"><i
												class="fa fa-key"></i></span>
										</div>
									</div>
									<div class="form-group">
										<label for="InputDropdown">Multiple Select</label> <select multiple="multiple" class="form-control">
											<option>Option 1</option>
											<option>Option 2</option>
											<option>Option 3</option>
											<option>Option 4</option>
											<option>Option 5</option>
										</select>
									</div>
									<div class="form-group">
										<label>Checkboxes</label>
										<div class="checkbox mtx">
											<label> <input type="checkbox" />&nbsp; Option 1
											</label>
										</div>
										<div class="checkbox mtx">
											<label> <input type="checkbox" />&nbsp; Option 2
											</label>
										</div>
										<div class="checkbox disabled mtx">
											<label> <input type="checkbox" disabled="disabled" />&nbsp; Disabled
											</label>
										</div>
									</div>
									<div class="form-group">
										<label>Inline Checkboxes</label>
										<div class="checkbox-list">
											<label class="checkbox-inline"> <input id="inlineCheckbox1" type="checkbox" value="option1" />&nbsp;
												Checkbox 1
											</label> <label class="checkbox-inline"> <input id="inlineCheckbox2" type="checkbox" value="option2" />&nbsp;
												Checkbox 2
											</label> <label class="checkbox-inline"> <input id="inlineCheckbox3" type="checkbox" value="option3"
												disabled="disabled" />&nbsp; Disabled
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>Left icon</label>
										<div class="input-icon">
											<i class="fa fa-bell"></i> <input type="text" placeholder="Left icon" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label>Right icon</label>
										<div class="input-icon right">
											<i class="fa fa-microphone"></i> <input type="text" placeholder="Right icon" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label>Input With Spinner</label>
										<div class="input-icon right">
											<i class="fa fa-spinner fa-spin"></i> <input type="text" placeholder="Process something" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label>Textarea</label>
										<textarea rows="4" class="form-control"></textarea>
									</div>
									<div class="form-group">
										<label>Radio</label>
										<div class="radio mtx">
											<label> <input id="optionsRadios1" type="radio" name="optionsRadios" value="option1"
												checked="checked" />&nbsp; Option 1
											</label>
										</div>
										<div class="radio mtx">
											<label> <input id="optionsRadios2" type="radio" name="optionsRadios" value="option2" />&nbsp; Option
												2
											</label>
										</div>
										<div class="radio disabled mtx">
											<label> <input id="optionsRadios3" type="radio" name="optionsRadios" value="option3"
												disabled="disabled" />&nbsp; Disabled
											</label>
										</div>
									</div>
									<div class="form-group">
										<label>Radio Inline</label>
										<div class="radio">
											<label> <input id="optionsRadios4" type="radio" name="optionsRadios" value="option1"
												checked="checked" />&nbsp; Option 1
											</label> <label> <input id="optionsRadios5" type="radio" name="optionsRadios" value="option2" />&nbsp;
												Option 2
											</label> <label> <input id="optionsRadios6" type="radio" name="optionsRadios" value="option3"
												disabled="disabled" />&nbsp; Disabled
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>Disabled</label> <input type="text" placeholder="Disabled" disabled="disabled" class="form-control" />
									</div>
									<div class="form-group">
										<label>Readonly</label> <input type="text" placeholder="Readonly" readonly="readonly" class="form-control" />
									</div>
									<div class="form-group">
										<label>Dropdown</label> <select class="form-control">
											<option>Option 1</option>
											<option>Option 2</option>
											<option>Option 3</option>
											<option>Option 4</option>
											<option>Option 5</option>
										</select>
									</div>
									<div class="form-group">
										<label>Static Control</label> <label>Static Control</label>
										<p class="form-control-static">example@email.com</p>
									</div>
									<div class="form-group">
										<label for="exampleInputFile1">File input</label> <input id="exampleInputFile1" type="file" />
										<p class="help-block">some help text here.</p>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="portlet box portlet-blue">
					<div class="portlet-header">
						<div class="caption">Horizontal Form</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form" class="form-horizontal">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-3 control-label">Text</label>
										<div class="col-md-9">
											<input type="text" placeholder="Enter text" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Email Address</label>
										<div class="col-md-9">
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="email"
													placeholder="Email Address" class="form-control" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Password</label>
										<div class="col-md-9">
											<div class="input-group">
												<input type="password" placeholder="Password" class="form-control" /><span class="input-group-addon"><i
													class="fa fa-user"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Left Icon</label>
										<div class="col-md-9">
											<div class="input-icon">
												<i class="fa fa-bell"></i> <input type="text" placeholder="Left icon" class="form-control" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Right Icon</label>
										<div class="col-md-9">
											<div class="input-icon right">
												<i class="fa fa-microphone"></i> <input type="text" placeholder="Right icon" class="form-control" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Input With Spinner</label>
										<div class="col-md-9">
											<div class="input-icon right">
												<i class="fa fa-spinner fa-spin"></i> <input type="text" placeholder="Process something"
													class="form-control" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Textarea</label>
										<div class="col-md-9">
											<textarea rows="3" class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Checkboxes</label>
										<div class="col-md-9">
											<div class="checkbox mtx">
												<label> <input type="checkbox" />&nbsp; Checkbox 1
												</label>
											</div>
											<div class="checkbox mtx">
												<label> <input type="checkbox" />&nbsp; Checkbox 1
												</label>
											</div>
											<div class="checkbox mtx">
												<label> <input type="checkbox" disabled="disabled" />&nbsp; Disabled
												</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Inline Checkboxes</label>
										<div class="col-md-9">
											<div class="checkbox">
												<label> <input id="inlineCheckbox21" type="checkbox" value="option1" />&nbsp; Checkbox 1
												</label> <label> <input id="inlineCheckbox22" type="checkbox" value="option2" />&nbsp; Checkbox 2
												</label> <label> <input id="inlineCheckbox23" type="checkbox" value="option3" disabled="disabled" />&nbsp;
													Disabled
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-3 control-label">Disabled</label>
										<div class="col-md-9">
											<input type="password" placeholder="Disabled" disabled="disabled" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Readonly</label>
										<div class="col-md-9">
											<input type="password" placeholder="Readonly" readonly="readonly" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Dropdown</label>
										<div class="col-md-9">
											<select class="form-control">
												<option>Option 1</option>
												<option>Option 2</option>
												<option>Option 3</option>
												<option>Option 4</option>
												<option>Option 5</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Multiple Select</label>
										<div class="col-md-9">
											<select multiple="multiple" class="form-control">
												<option>Option 1</option>
												<option>Option 2</option>
												<option>Option 3</option>
												<option>Option 4</option>
												<option>Option 5</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Static Control</label>
										<div class="col-md-9">
											<p class="form-control-static">example@email.com</p>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputFile" class="col-md-3 control-label">File input</label>
										<div class="col-md-9">
											<input id="exampleInputFile" type="file" />
											<p class="help-block">some help text here.</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Radio</label>
										<div class="col-md-9">
											<div class="radio mtx">
												<label> <input id="optionsRadios22" type="radio" name="optionsRadios" value="option1"
													checked="checked" />&nbsp; Option 1
												</label>
											</div>
											<div class="radio mtx">
												<label> <input id="optionsRadios23" type="radio" name="optionsRadios" value="option2"
													checked="checked" />&nbsp; Option 2
												</label>
											</div>
											<div class="radio mtx">
												<label> <input id="optionsRadios24" type="radio" name="optionsRadios" value="option2"
													disabled="disabled" />&nbsp; Disabled
												</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Inline Radio</label>
										<div class="col-md-9">
											<div class="radio">
												<label> <input id="optionsRadios25" type="radio" name="optionsRadios" value="option1"
													checked="checked" />&nbsp; Option 1
												</label> <label> <input id="optionsRadios26" type="radio" name="optionsRadios" value="option2"
													checked="checked" />&nbsp; Option 2
												</label> <label> <input id="optionsRadios27" type="radio" name="optionsRadios" value="option3"
													disabled="disabled" />&nbsp; Disabled
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="portlet box portlet-yellow">
					<div class="portlet-header">
						<div class="caption">Validate States</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<form role="form"></form>
						<div class="row">
							<div class="col-md-6">
								<h4 class="block-heading">Validation States</h4>
								<div class="form-group">
									<label for="inputSuccess" class="control-label">Defalt input</label> <input id="inputDefault" type="text"
										class="form-control" />
								</div>
								<div class="form-group has-success">
									<label for="inputSuccess" class="control-label">Input with success</label> <input id="inputSuccess" type="text"
										class="form-control" />
								</div>
								<div class="form-group has-warning">
									<label for="inputWarning" class="control-label">Input with warning</label> <input id="inputWarning" type="text"
										class="form-control" />
								</div>
								<div class="form-group has-error">
									<label for="inputError" class="control-label">Input with error</label> <input id="inputError" type="text"
										class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<h4 class="block-heading">Validation States With Icons</h4>
								<div class="form-group">
									<label for="inputSuccess" class="control-label">Default input</label>
									<div class="input-icon right">
										<i data-hover="tooltip" data-original-title="Email address" data-container="body"
											class="glyphicon glyphicon-info-sign tooltips"></i> <input type="text" class="form-control" />
									</div>
								</div>
								<div class="form-group has-success">
									<label for="inputSuccess" class="control-label">Input with success</label>
									<div class="input-icon right">
										<i data-hover="tooltip" data-original-title="You look OK!" data-container="body"
											class="glyphicon glyphicon-ok tooltips"></i> <input type="text" class="form-control" />
									</div>
								</div>
								<div class="form-group has-warning">
									<label for="inputWarning" class="control-label">Input with warning</label>
									<div class="input-icon right">
										<i data-hover="tooltip" data-original-title="please provide an email" data-container="body"
											class="glyphicon glyphicon-warning-sign tooltips"></i> <input type="text" class="form-control" />
									</div>
								</div>
								<div class="form-group has-error">
									<label for="inputError" class="control-label">Input with error</label>
									<div class="input-icon right">
										<i data-hover="tooltip" data-original-title="please write a valid email" data-container="body"
											class="glyphicon glyphicon-exclamation-sign tooltips"></i> <input type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="portlet box portlet-green">
					<div class="portlet-header">
						<div class="caption">Search Toolbar</div>
						<div class="tools">
							<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
								class="fa fa-refresh"></i><i class="fa fa-times"></i>
						</div>
					</div>
					<div class="portlet-body">
						<h4 class="block-heading">Checkboxes Addons</h4>
						<div class="row">
							<div class="col-md-6 mbm">
								<div class="input-group">
									<span class="input-group-addon"><input type="checkbox" /></span> <input type="text" class="form-control" />
								</div>
							</div>
							<div class="col-md-6 mbm">
								<div class="input-group">
									<input type="text" class="form-control" /><span class="input-group-addon"><input type="checkbox" /></span>
								</div>
							</div>
						</div>
						<div class="clearfix mbxxl"></div>
						<h4 class="block-heading">Button Addons</h4>
						<div class="row">
							<div class="col-md-6 mbm">
								<div class="input-group">
									<span class="input-group-btn"><button type="button" class="btn btn-primary">Go!</button></span> <input
										type="text" class="form-control" />
								</div>
							</div>
							<div class="col-md-6 mbm">
								<div class="input-group">
									<input type="text" class="form-control" /><span class="input-group-btn"><button type="button"
											class="btn btn-primary">Go!</button></span>
								</div>
							</div>
						</div>
						<div class="clearfix mbxxl"></div>
						<h4 class="block-heading">Button Addons On Both Sides</h4>
						<div class="row">
							<div class="col-md-12 mbm">
								<div class="input-group">
									<span class="input-group-btn"><button type="button" class="btn btn-orange">Go!</button></span> <input
										type="text" class="form-control" /><span class="input-group-btn"><button type="button"
											class="btn btn-orange">Go!</button></span>
								</div>
							</div>
						</div>
						<div class="clearfix mbxxl"></div>
						<h4 class="block-heading">Buttons With Dropdowns</h4>
						<div class="row">
							<div class="col-md-6 mbm">
								<div class="input-group">
									<div class="input-group-btn">
										<button type="button" data-toggle="dropdown" class="btn btn-green dropdown-toggle">
											Action <i class="fa fa-angle-down"></i>
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
							<div class="col-md-6 mbm">
								<div class="input-group">
									<input type="text" class="form-control" />
									<div class="input-group-btn">
										<button type="button" data-toggle="dropdown" class="btn btn-green dropdown-toggle">
											Action <i class="fa fa-angle-down"></i>
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
						<div class="clearfix mbxxl"></div>
						<h4 class="block-heading">Buttons With Dropdowns On Both Sides</h4>
						<div class="row">
							<div class="col-md-12 mbm">
								<div class="input-group">
									<div class="input-group-btn">
										<button type="button" data-toggle="dropdown" class="btn btn-yellow dropdown-toggle">
											Action <i class="fa fa-angle-down"></i>
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
										<button type="button" data-toggle="dropdown" class="btn btn-yellow dropdown-toggle">
											Action <i class="fa fa-angle-down"></i>
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
						<div class="clearfix mbxxl"></div>
						<h4 class="block-heading">Segmented Buttons</h4>
						<div class="row">
							<div class="col-md-6 mbm">
								<div class="input-group">
									<div class="input-group-btn">
										<button type="button" tabindex="-1" class="btn btn-blue">Action</button>
										<button type="button" data-toggle="dropdown" tabindex="-1" class="btn btn-blue dropdown-toggle">
											<i class="fa fa-angle-down"></i>
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
							<div class="col-md-6 mbm">
								<div class="input-group">
									<input type="text" class="form-control" />
									<div class="input-group-btn">
										<button type="button" tabindex="-1" class="btn btn-blue">Action</button>
										<button type="button" data-toggle="dropdown" tabindex="-1" class="btn btn-blue dropdown-toggle">
											<i class="fa fa-angle-down"></i>
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
				</div>
			</div>
		</div>
	</div>
</div>
<!--LOADING SCRIPTS FOR PAGE-->
<script src="${webroot}/madmin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${webroot}/madmin/vendors/moment/moment.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-clockface/js/clockface.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-maskedinput/jquery-maskedinput.js"></script>
<script src="${webroot}/madmin/vendors/charCount.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/icheck.min.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/custom.min.js"></script>

<script src="${webroot}/js/form-components.js"></script>

<script type="text/javascript">
$(function(){
	 $('input[type="checkbox"]:not(".switch")').iCheck({
         checkboxClass: 'icheckbox_minimal-grey',
         increaseArea: '20%' // optional
     });
     $('input[type="radio"]:not(".switch")').iCheck({
         radioClass: 'iradio_minimal-grey',
         increaseArea: '20%' // optional
     });
});
</script>