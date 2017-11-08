<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<!--LOADING STYLESHEET FOR PAGE-->
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/x-editable/select2/lib/select2-madmin.css">
<link type="text/css" rel="stylesheet"
	href="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/x-editable/bootstrap3-editable/css/bootstrap-editable.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/x-editable/inputs-ext/address/address.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-switch/css/bootstrap-switch.css">
<!--Loading style vendors-->
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/iCheck/skins/all.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker-bs3.css">

<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="portlet">
			<div class="portlet-body">
				<h2 class="mtn">设置</h2>
				<div class="mbm">
					<label class="mrxxl"> <input id="autoopen" type="checkbox" style="vertical-align: baseline;" />&nbsp;
						自动打开下一个编辑
					</label> <label class="mrxxl"> <input id="inline-editing" type="checkbox" style="vertical-align: baseline;" />&nbsp;
						在同一行编辑(默认为悬浮框)
					</label><span class="mrm">是否可编辑:</span>
					<div id="enable" data-on="success" data-off="danger" class="make-switch switch-small">
						<input type="checkbox" checked="checked" class="switch" />
					</div>
				</div>
				<table id="user" class="table table-bordered table-striped">
					<tbody>
						<tr>
							<td width="35%">Simple text label</td>
							<td width="65%"><a id="username" href="#" data-type="text" data-pk="1" data-title="Enter username"
								class="editable editable-click">superuser</a></td>
						</tr>
						<tr>
							<td>Empty text label, required</td>
							<td><a id="firstname" href="#" data-type="text" data-pk="1" data-placement="right"
								data-placeholder="Required" data-title="Enter your firstname" class="editable editable-click editable-empty">Empty</a>
							</td>
						</tr>
						<tr>
							<td>Select, local array, custom display</td>
							<td><a id="sex" href="#" data-type="select" data-pk="1" data-value="" data-title="Select sex"
								style="color: gray;" class="editable editable-click">not selected</a></td>
						</tr>
						<tr>
							<td>Select, remote array, no buttons</td>
							<td><a id="group" href="#" data-type="select" data-pk="1" data-value="5" data-source="/groups"
								data-title="Select group" class="editable editable-click">Admin</a></td>
						</tr>
						<tr>
							<td>Select, error while loading</td>
							<td><a id="status" href="#" data-type="select" data-pk="1" data-value="0" data-source="/status"
								data-title="Select status" class="editable editable-click">Active</a></td>
						</tr>
						<tr>
							<td>Datepicker</td>
							<td><span class="notready">not implemented for Bootstrap 3 yet</span></td>
						</tr>
						<tr>
							<td>Combodate (date)</td>
							<td><a id="dob" href="#" data-type="combodate" data-value="1984-05-15" data-format="YYYY-MM-DD"
								data-viewformat="DD/MM/YYYY" data-template="D / MMM / YYYY" data-pk="1" data-title="Select Date of birth"
								class="editable editable-click">15/05/1984</a></td>
						</tr>
						<tr>
							<td>Combodate (datetime)</td>
							<td><a id="event" href="#" data-type="combodate" data-template="D MMM YYYY  HH:mm"
								data-format="YYYY-MM-DD HH:mm" data-viewformat="MMM D, YYYY, HH:mm" data-pk="1"
								data-title="Setup event date and time" class="editable editable-click editable-empty">Empty</a></td>
						</tr>
						<tr>
							<td>Textarea, buttons below. Submit by<i>ctrl+enter</i>
							</td>
							<td><a id="comments" href="#" data-type="textarea" data-pk="1" data-placeholder="Your comments here..."
								data-title="Enter comments" class="editable editable-pre-wrapped editable-click">awesome user!</a></td>
						</tr>
						<tr>
							<td>Twitter typeahead.js</td>
							<td><a id="state2" href="#" data-type="typeaheadjs" data-pk="1" data-placement="right"
								data-title="Start typing State.." class="editable editable-click">California</a></td>
						</tr>
						<tr>
							<td>Checklist</td>
							<td><a id="fruits" href="#" data-type="checklist" data-value="2,3" data-title="Select fruits"
								class="editable editable-click">peach<br />apple
							</a></td>
						</tr>
						<tr>
							<td>Select2 (tags mode)</td>
							<td><a id="tags" href="#" data-type="select2" data-pk="1" data-title="Enter tags"
								class="editable editable-click">html, javascript</a></td>
						</tr>
						<tr>
							<td>Select2 (dropdown mode)</td>
							<td><a id="country" href="#" data-type="select2" data-pk="1" data-value="BS" data-title="Select country"
								class="editable editable-click">Bahamas</a></td>
						</tr>
						<tr>
							<td>Custom input, several fields</td>
							<td><a id="address" href="#" data-type="address" data-pk="1" data-title="Please, fill address"
								class="editable editable-click"><b>Moscow</b>, Lenina st., bld. 12</a></td>
						</tr>
					</tbody>
				</table>
				<h3>
					Console &nbsp;<small>(all ajax requests here are emulated)</small>
				</h3>
				<div>
					<textarea id="console" rows="8" style="width: 70%;" autocomplete="off" class="form-control"></textarea>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="${webroot}/madmin/vendors/moment/moment.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/jquery.mockjax.js"></script>
<script src="${webroot}/madmin/js/moment.min.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/select2/lib/select2.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/inputs-ext/typeaheadjs/lib/typeahead.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/inputs-ext/typeaheadjs/typeaheadjs.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/inputs-ext/wysihtml5/wysihtml5.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/inputs-ext/address/address.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<script src="${webroot}/madmin/vendors/x-editable/demo-mock.js"></script>

<script src="${webroot}/js/form-xeditable.js"></script>
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
