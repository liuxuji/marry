<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>

<div class="row animated fadeInUp">
	<div class="col-lg-6">
		<div class="portlet box portlet-yellow">
			<div class="portlet-header">
				<div class="caption">类型验证</div>
				<div class="tools">
					<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
						class="fa fa-refresh"></i><i class="fa fa-times"></i>
				</div>
			</div>
			<div class="portlet-body">
				<form action="#" class="form-validate">
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
	<div class="col-lg-6">
		<div class="portlet box portlet-green">
			<div class="portlet-header">
				<div class="caption">登录表单</div>
				<div class="tools">
					<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
						class="fa fa-refresh"></i><i class="fa fa-times"></i>
				</div>
			</div>
			<div class="portlet-body">
				<form action="#" class="form-validate-signin">
					<div class="form-group">
						<label for="" class="control-label">email</label> <input type="email" name="email"
							class="form-control required email" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">密码</label> <input id="password" type="password" name="password"
							class="form-control required password" />
					</div>
					<button type="submit" class="btn btn-success">Submit</button>
					&nbsp;
					<button type="button" class="btn btn-default">Cancel</button>
				</form>
			</div>
		</div>
		<div class="portlet box portlet-blue">
			<div class="portlet-header">
				<div class="caption">登记表单</div>
				<div class="tools">
					<i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i
						class="fa fa-refresh"></i><i class="fa fa-times"></i>
				</div>
			</div>
			<div class="portlet-body">
				<form action="#" class="form-validate-signup">
					<div class="form-group">
						<label for="" class="control-label">用户名 <span class='require'>*</span>
						</label> <input type="text" name="username1" minlength="2" maxlength="30" placeholder="至少2个字符，最多30个字符"
							class="form-control required" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">Email <span class='require'>*</span>
						</label> <input type="email" name="email1" class="form-control required email" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">密码 <span class='require'>*</span>
						</label> <input id="password1" type="password" name="password1" minlength="6" placeholder="至少6个字符"
							class="form-control required password" />
					</div>
					<div class="form-group">
						<label for="" class="control-label">年龄</label> <input type="text" name="age"
							placeholder="最小值 0，最大值100" class="form-control number" />
					</div>
					<button type="submit" class="btn btn-success btn-block">Sign Up</button>
				</form>
			</div>
		</div>
	</div>
</div>

<script src="${webroot}/madmin/vendors/jquery-validate/jquery.validate.min.js"></script>
<script src="${webroot}/js/form-validation.js"></script>
