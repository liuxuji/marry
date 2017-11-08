<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #returnItemList{
        color: white;
    }
    #returnItemList:hover{
        color: #f3e97a;
    }
</style>
<script>
    //新建操作或者更新操作
    $("#addResource").click(function(){
        //获取请求参数
        var cmd = $("#cmd").val();
        if(cmd == 'edit'){
            var id = $("#id").val();
        }
        var menuItemId = $("#menuItemId").val().trim();
        var name = $("#name").val().trim();
        var symbol = $("#symbol").val().trim();
        var description = $("#description").val().trim();
        //格式检查
        var check = true;
        if(name == "" || symbol == ""){
            alert("操作名称和权限不能为空");
            check = false;
        }
        //发送ajax请求
        if(check){
            $("#addResource").prop("disabled",true);
            $.ajax({
                url:"${webroot}/manage/resource/save_${cmd}.do",
                type:"post",
                dataType:"text",
                data:{menuItemId:menuItemId , name:name , symbol:symbol , description:description , id:id},
                success:function(result){
                    if(result == "createOk"){
                        alert("新建操作成功");
                        menuopen('${webroot}/manage/menuitem/detail.do?id='+ menuItemId);
                        $("#addResource").prop("disabled",false);
                    }else if(result == "createError"){
                        alert("新建操作失败");
                        $("#addResource").prop("disabled",false);
                        return false;
                    }else if(result == "updateOk"){
                        alert("修改操作成功");
                        menuopen('${webroot}/manage/menuitem/detail.do?id='+ menuItemId);
                        $("#addResource").prop("disabled",false);
                    }else if(result == "updateError"){
                        alert("修改操作是失败");
                        $("#addResource").prop("disabled",false);
                        return false;
                    }
                },
                error:function(){
                    alert("操作失败");
                    $("#addResource").prop("disabled",false);
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
                    <div style="float: right"><a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/menuitem/detail.do?id=${resource.menuItem.id}');" id="returnItemList">
                        返回子菜单列表</a>
                    </div>
                    <c:choose>
                        <c:when test="${cmd == 'add'}">
                            新建操作
                        </c:when>
                        <c:when test="${cmd == 'edit'}">
                            修改操作
                        </c:when>
                    </c:choose>
                </div>
                <div class="panel-body pan" style="height: 430px">
                    <form action="${webroot}/addRole.do" id="addRole" class="form-validate" method="post" onSubmit="return false;">
                        <div class="form-body pal">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="name" class="control-label">操作名称</label>
                                        <div class="input-icon">
                                            <i class="fa fa-folder-open"></i>
                                            <input type="text" class="form-control" name="name" value="${resource.name}" id="name" maxlength="30">
                                            <input type="hidden" name="cmd" id="cmd" value="${cmd}"/>
                                            <input type="hidden" name="id" id="id" value="${resource.id}"/>
                                            <input type="hidden" name="menuItem.id" id="menuItemId" value="${resource.menuItem.id}"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">需要权限</label>
                                <textarea rows="5" cols="30" class="form-control" name="symbol" id="symbol">${resource.symbol}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">操作描述</label>
                                <textarea rows="5" cols="30" class="form-control" name="description" id="description">${resource.description}</textarea>
                            </div>
                            <div class="form-group mbn">
                                <div class="col-md-offset-5 col-md-7">
                                    <button type="button" class="btn btn-primary" id="addResource">提交</button>&nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            <%--<SCRIPT LANGUAGE="JavaScript">--%>
                <%--$().ready(function () {--%>
                    <%--$("#contentform").validate();--%>
                <%--})--%>
            <%--</SCRIPT>--%>
        </td>
    </tr>
</table>
