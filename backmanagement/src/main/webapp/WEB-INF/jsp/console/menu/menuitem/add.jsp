<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #returnMenuItemList{
        color: white;
    }
    #returnMenuItemList:hover{
        color: #f3e97a;
    }
</style>
<script>
    $("#menuItemButton").click(function(){
        //获取请求参数
        var cmd = $("#cmd").val();
        if(cmd == 'edit'){
            var id = $("#id").val();
        }
        var mainMenuId = $("#mainMenuId").val();
        var name = $("#name").val().trim();
        var code = $("#code").val().trim();
        var link = $("#link").val().trim();
        var symbol = $("#symbol").val().trim();
        var description = $("#description").val().trim();
        var linkType = $("#menuLinkType").val().trim();
        var icon = $("#menuIcon").val().trim();
        //格式检查
        var check = true;
        if (name == "" || code == "" || link == "" ||symbol == ""){
            alert("子菜单名称、序号、链接和权限都不能为空");
            check = false;
        }
        //发送ajax请求
        if(check){
            $("#menuItemButton").prop("disabled",true);
            $.ajax({
                url:"${webroot}/manage/menuitem/save_${cmd}.do",
                type:"post",
                dataType:"text",
                data:{mainMenuId:mainMenuId ,
                      name:name ,
                      code:code ,
                      link:link ,
                      symbol:symbol ,
                      description:description ,
                      id:id , url:link ,
                      text:name ,
                      linkType:linkType ,
                      icon:icon},
                success:function(result){
                    if(result == "createOk"){
                        alert("新建子菜单成功");
                        menuopen('${webroot}/manage/mainmenu/detail.do?id='+ mainMenuId);
                        $("#menuItemButton").prop("disabled",false);
                    }else if(result == "createError"){
                        alert("新建子菜单失败");
                        $("#menuItemButton").prop("disabled",false);
                        return false;
                    }else if(result == "updateOk"){
                        alert("修改子菜单成功");
                        menuopen('${webroot}/manage/mainmenu/detail.do?id='+ mainMenuId);
                        $("#menuItemButton").prop("disabled",false);
                    }else if(result == "updateError"){
                        alert("修改子菜单失败");
                        $("#menuItemButton").prop("disabled",false);
                        return false;
                    }
                },
                error:function(){
                    alert("操作失败");
                    $("#menuItemButton").prop("disabled",false);
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
                    <div style="float: right"><a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/mainmenu/detail.do?id=${menuitem.mainMenu.id}');" id="returnMenuItemList">返回子菜单列表</a></div>
                    <c:choose>
                        <c:when test="${cmd == 'add'}">
                            新建子菜单
                        </c:when>
                        <c:when test="${cmd == 'edit'}">
                            修改子菜单
                        </c:when>
                    </c:choose>
                </div>
                <div class="panel-body pan" style="height: 500px">
                    <form action="${webroot}/addMenuItem.do" id="addMenuItem" class="form-validate" method="post" onSubmit="return false;">
                        <div class="form-body pal">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="name" class="control-label">子菜单名称</label>
                                        <div class="input-icon">
                                            <i class="fa fa-folder-open"></i>
                                            <input type="text" name="name" value="${menuitem.name}" class="form-control" id="name" maxlength="30">
                                            <input type="hidden" name="cmd" id="cmd" value="${cmd}"/>
                                            <input type="hidden" name="id" id="id" value="${menuitem.id}"/>
                                            <input type="hidden" name="mainMenu.id" id="mainMenuId" value="${menuitem.mainMenu.id}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="code" class="control-label">子菜单序号</label>
                                        <div class="input-icon">
                                            <i class="fa fa-info"></i>
                                            <input type="text" name="code" value="${menuitem.code}" class="form-control" id="code" maxlength="5" placeholder="请按照现有子菜单的自然数顺序依次填写">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="link" class="control-label">子菜单链接</label>
                                        <div class="input-icon">
                                            <i class="fa fa-key"></i>
                                            <input type="text" name="link" value="${menuitem.link}" class="form-control" id="link" maxlength="200">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="menuIcon" class="control-label">菜单icon</label>
                                        <div class="input-icon">
                                            <i class="fa fa-info"></i>
                                            <input type="text" class="form-control" name="icon" value="${menuitem.icon}" id="menuIcon" maxlength="40" placeholder="默认：fa-tachometer">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="menuLinkType" class="control-label">链接跳转类型</label>
                                        <div class="input-icon">
                                            <select class="list-select" id="menuLinkType" style="width: 135px">
                                                <c:forEach items="${types}" var="type">
                                                    <option value="${type.name()}">${type.name()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">子菜单权限</label>
                                <textarea rows="5" cols="30" class="form-control" name="symbol" id="symbol">${menuitem.symbol}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">子菜单描述</label>
                                <textarea rows="5" cols="30" class="form-control" name="description" id="description">${menuitem.description}</textarea>
                            </div>
                            <div class="form-group mbn">
                                <div class="col-md-offset-5 col-md-7">
                                    <button type="button" class="btn btn-primary" id="menuItemButton">提交</button>&nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <%--<SCRIPT LANGUAGE="JavaScript">--%>
                <%--$().ready(function () {--%>
                    <%--$("#contentform").validate();--%>
                <%--})--%>
            <%--</SCRIPT>--%>
        </td>
    </tr>
</table>
</body>
</html>
