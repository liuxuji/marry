<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #returnAdminList{
        color: white;
    }
    #returnAdminList:hover{
        color: #f3e97a;
    }
</style>
<script>
    $("#addAdminButton").click(function(){
        //获取请求参数
        var cmd = $("#cmd").val();
        var adminUserName = $("#adminUserName").val().trim();
        if(cmd == 'add'){
            var pwd = $("#pwd").val().trim();
            var conformPwd = $("#conformPwd").val().trim();
        }
        var name = $("#name").val().trim();
        var email = $("#email").val().trim();
        var mobile = $("#mobile").val().trim();
        var msn = $("#msn").val().trim();
        var qq = $("#qq").val().trim();
        var adminStatus = $("#enabled").val();
        var roles = "";
        $("input:checkbox[name=roles]:checked").each(function(i){
            if(0==i){
                roles = $(this).val();
            }else{
                roles += (","+$(this).val());
            }
            return roles;
        });
        //检查格式
        var check = true;
        if(adminUserName == "" || pwd == "" || name == "" || adminStatus == "" || roles == ""){
            alert("账号、密码、姓名、状态和角色不能为空");
            check = false;
            return false;
        }
        if(pwd != conformPwd){
            alert("设置密码与确认密码不相符");
            check = false;
            return false;
        }
        //发送ajax请求
        if(check){
            $("#addAdminButton").prop("disabled",true);
            $.ajax({
                url:"${webroot}/manage/admin/save_${cmd}.do",
                type:"post",
                data:{userName:adminUserName , enabled:adminStatus , pwd:pwd , name:name , email:email , mobile:mobile , msn:msn , qq:qq , roles:roles},
                dataType:"text",
                success:function(result){
                    if(result == "createOk"){
                        alert("创建管理员成功");
                        menuopen('/manage/admin/list.do');
                        $("#addAdminButton").prop("disabled",false);
                    }else if(result == "createError"){
                        alert("创建管理员失败");
                        $("#addAdminButton").prop("disabled",false);
                        return false;
                    }else if (result == "editOk"){
                        alert("修改管理员成功");
                        menuopen('/manage/admin/list.do');
                        $("#addAdminButton").prop("disabled",false);
                    }else if(result == "editError"){
                        alert("修改管理员失败");
                        $("#addAdminButton").prop("disabled",false);
                        return false;
                    }
                },
                error:function(){
                    alert("操作失败");
                    $("#addAdminButton").prop("disabled",false);
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
                    <c:choose>
                        <c:when test="${cmd == 'add'}">
                            新建管理员
                        </c:when>
                        <c:when test="${cmd == 'edit'}">
                            修改管理员
                        </c:when>
                    </c:choose>
                </div>
                <div class="panel-body pan" style="height: 500px; position: relative">
                    <form action="${webroot}/addAdmin.do" id="addAdmin" class="form-validate" method="post" onSubmit="return false;">
                        <div class="form-body pal">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="adminUserName" class="control-label">账号</label>
                                        <div class="input-icon">
                                            <i class="fa fa-user"></i>
                                            <input type="text" class="form-control" name="username" value="${admin.username}"
                                                   <c:if test="${not empty admin.username}">readonly</c:if>
                                                   maxlength="20" id="adminUserName">
                                            <input type="hidden" name="cmd" id="cmd" value="${cmd}"/>
                                        </div>
                                    </div>
                                </div>
                                <c:if test="${cmd == 'add'}">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="pwd" class="control-label">密码</label>
                                            <div class="input-icon">
                                                <i class="fa fa-lock"></i>
                                                <input type="password" class="form-control" name="pwd" id="pwd" maxlength="20">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="conformPwd" class="control-label">确认密码</label>
                                            <div class="input-icon">
                                                <i class="fa fa-lock"></i>
                                                <input type="password" class="form-control" name="conformpwd" maxlength="20" id="conformPwd">
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="name" class="control-label">姓名</label>
                                        <div class="input-icon">
                                            <i class="fa fa-user"></i>
                                            <input type="text" class="form-control" name="name" value="${admin.name}" id="name">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="email" class="control-label">电子邮件</label>
                                        <div class="input-icon">
                                            <i class="fa fa-envelope"></i>
                                            <input type="text" class="form-control" name="email" value="${admin.email}" id="email">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="mobile" class="control-label">手机</label>
                                        <div class="input-icon">
                                            <i class="fa fa-phone"></i>
                                            <input type="text" class="form-control" name="mobile" value="${admin.mobile}" id="mobile">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="msn" class="control-label">MSN</label>
                                        <div class="input-icon">
                                            <i class="fa fa-envelope-o"></i>
                                            <input type="text" class="form-control" name="msn" value="${admin.msn}" id="msn">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="qq" class="control-label">QQ</label>
                                        <div class="input-icon">
                                            <i class="fa fa-qq"></i>
                                            <input type="text" class="form-control" name="qq" value="${admin.qq}" id="qq">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="qq" class="control-label">状态</label>
                                        <div class="input-icon">
                                            <select class="list-select" name="enabled" id="enabled">
                                                <option value="true" <c:if test="${cmd == 'add' or admin.enabled}">selected</c:if>>正常
                                                </option>
                                                <option value="false"
                                                        <c:if test="${not(cmd == 'add' or admin.enabled)}">selected</c:if>>禁用
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">角色</label>
                                        <c:forEach items="${roles}" var="role" varStatus="status">
                                            <div class="input-icon">
                                                <input type="checkbox" name="roles" id="roleId_${role.id}" value="${role.id}">
                                                <label for="roleId_${role.id}">${role.name}[${role.description}]</label><br>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mbn" style="bottom: 0; width: 95%; height: 60px; clear:both;">
                                <div class="col-md-offset-5 col-md-7">
                                    <button type="button" class="btn btn-primary" id="addAdminButton">提交</button>&nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <SCRIPT LANGUAGE="JavaScript">
                <c:forEach items="${admin.roles}" var="role" varStatus="status">
                var obj${status.count} = document.getElementById('roleId_${role.id}');
                if (obj${status.count}) obj${status.count}.checked = true;
                </c:forEach>
            </SCRIPT>
        </td>
    </tr>
</table>
