<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #returnAdminList{
        color:white;
    }
    #returnAdminList:hover{
        color: #f3e97a;
    }
</style>
<script>
    $("#resetAdmin").click(function(){
        //获取请求参数
        var username = $("#username").val();
        var pwd = $("#pwd").val();
        var conformPwd = $("#conformPwd").val();
        //格式检查TODO
        var check = true;
        if(pwd == "" || conformPwd == ""){
            alert("新密码或者确认密码不能为空");
            check = false;
            return false;
        }
        if(pwd != conformPwd){
            alert("新密码与确认密码不相符");
            check = false;
            return false;
        }
        //发送ajax请求
        if(check){
            $("#resetAdmin").prop("disabled",true);
            $.ajax({
                url:"${webroot}/manage/admin/save_reset.do",
                type:"post",
                dataType:"text",
                data:{username:username , pwd:pwd},
                success:function(result){
                    if(result == "resetOk"){
                        alert("重置密码成功");
                        menuopen('/manage/admin/list.do');
                        $("#resetAdmin").prop("disabled",false);
                    } else if(result == "resetError"){
                        alert("重置密码失败");
                        $("#resetAdmin").prop("disabled",false);
                        return false;
                    }
                },
                error:function(){
                    alert("操作失败");
                    $("#resetAdmin").prop("disabled",false);
                    return false;
                }
            });
        }
    });
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
    <tr>
        <td valign="top" class="mainContent">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div style="float: right"><a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/admin/list.do');" id="returnAdminList">返回管理员列表</a></div>
                    重置密码
                </div>
                <div class="panel-body pan" style="height: 200px;position: relative">
                    <form action="${webroot}/resetAdmin.do" id="resetAdminPwd" class="form-validate" method="post" onSubmit="return false;">
                        <div class="form-body pal">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="pwd" class="control-label">新密码</label>
                                        <div class="input-icon">
                                            <i class="fa fa-lock"></i>
                                            <input type="password" class="form-control" name="pwd" id="pwd" maxlength="20">
                                            <input type="hidden" name="username" id="username" value="${username}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="conformPwd" class="control-label">确认密码</label>
                                        <div class="input-icon">
                                            <i class="fa fa-lock"></i>
                                            <input type="password" class="form-control" name="conformPwd" maxlength="20" id="conformPwd">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mbn" style="position: absolute;bottom: 0; width: 95%; height: 60px; clear:both;">
                                <div class="col-md-offset-5 col-md-7">
                                    <button type="button" class="btn btn-primary" id="resetAdmin">提交</button>&nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </td>
    </tr>
</table>
