<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<script type="text/javascript">

	var options = {
		//target : '#output', //把服务器返回的内容放入id为output的元素中      
		beforeSubmit : showRequest, //提交前的回调函数  
		success : showResponse, //提交后的回调函数  
		//url : url,                 //默认是form的action， 如果申明，则会覆盖  
		//type : post,               //默认是form的method（get or post），如果申明，则会覆盖  
		dataType : "text",           //html(默认), xml, script, json...接受服务端返回的类型  
		//clearForm : true,          //成功提交后，清除所有表单元素的值  
		//resetForm : true,          //成功提交后，重置所有表单元素的值  
		timeout : 3000 //限制请求的时间，当请求大于3秒后，跳出请求  
	}

	function showRequest(formData, jqForm, options) {
		//formData: 数组对象，提交表单时，Form插件会以Ajax方式自动提交这些数据，格式如：[{name:user,value:val },{name:pwd,value:pwd}]  
		//jqForm:   jQuery对象，封装了表单的元素 
		//验证所有的参数必须存在有值
	    for (var i=0; i < formData.length; i++) {  
	       if (!formData[i].value) {  
	            return false;  
	        }  
	    }
		//验证表单中需要验证的class样式 存在值则过 不存在 则返回false
		/* var form = jqForm[0]; //把表单转化为dom对象 
	    if (!form.text.value || !form.textarea.value || !form.email.value) {  
	        return false;  
	    }*/
		//options:  options对象   
		return true; //只要不返回false，表单都会提交,在这里可以对表单元素进行验证  
	};

	function showResponse(responseText, statusText) {
		if(statusText == "success"){
			menuopen(responseText);
		}
	};

	$(document).ready(function() {
		$("#testform").submit(function() {
			$(this).ajaxSubmit(options);
			return false; //阻止表单默认提交  
		});
	});
</script>

<div class="row animated fadeInUp">
	<div class="col-lg-6">
		<div class="portlet box portlet-yellow">
			<div class="portlet-body">
				<!-- onSubmit="return false;" 让点击表单不提交  但是表单验证存在 然后使用ajax提交 -->
				<form id="testform" class="form-validate" action="${webroot }/testfrom.do" method="post">
					<div class="form-group">
						<label for="" class="control-label">文本</label> <input type="text" name="text" class="form-control required" />
					</div>
					<div class="form-group">
						<textarea rows="10" name="textarea" class="form-control required"></textarea>
					</div>
					<div class="form-group">
						<label for="" class="control-label">Email</label> <input type="email" name="email"
							class="form-control required email" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">密码</label> <input id="password" type="password" name="password"
							class="form-control required password" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">确认密码</label> <input type="password" name="confirm_password"
							equalTo="#password" class="form-control required password" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">长度不小于5个</label> <input type="text" name="min_length" minlength="5"
							class="form-control required" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">长度不大于10个</label> <input type="text" name="max_length" maxlength="10"
							class="form-control required" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">Length from 3 to 10</label> <input type="text" name="length_from_to"
							minlength="3" maxlength="10" class="form-control required" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">Url</label> <input type="text" name="url" class="form-control required url" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">实数</label> <input type="text" name="number"
							class="form-control required number" />
					</div>
					<div class="form-group">
						<label for="dd1" class="control-label">下拉框</label> <select id="dd1" name="dd1" class="form-control required">
							<option value="">nothing</option>
							<option value="1">1</option>
							<option value="1">1</option>
							<option value="1">1</option>
						</select>
					</div>
					<button type="submit" class="btn btn-success">Submit</button>
					&nbsp;
					<button type="button" class="btn btn-default">Cancel</button>
				</form>
			</div>
		</div>
	</div>
</div>

<script src="${webroot}/madmin/vendors/jquery-validate/jquery.validate.min.js"></script>
<script src="${webroot}/madmin/js/jquery.form.js"></script>
<script src="${webroot}/js/form-validation.js"></script>
