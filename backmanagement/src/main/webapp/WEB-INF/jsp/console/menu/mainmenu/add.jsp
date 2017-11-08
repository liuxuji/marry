<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #returnUserList{
        color:white;
    }
    #returnUserList:hover{
        color:#f3e97a;
    }
</style>
<script>
    //新建或者更新主菜单
    function clickMenuButton() {
        //获取请求参数
        var cmd = $("#cmd").val();
        if (cmd == 'edit') {
            var id = $("#id").val();
        }
        var menuText = $("#menuText").val().trim();
        var menuCode = $("#menuCode").val().trim();
        var menuDescription = $("#menuDescription").val().trim();
        var linkType = $("#menuLinkType").val().trim();
        var icon = $("#menuIcon").val().trim();
        //格式检查
        var check = true;
        if (menuText == "" || menuCode == "" || menuDescription == "") {
            alert("菜单名称，显示顺序和菜单描述都不能为空");
            check = false;
        }
        //发送ajax请求
        if (check) {
            //取消button连续点击
            $("#menuButton").prop("disabled",true);
            $.ajax({
                url: "${webroot}/manage/mainmenu/save_${cmd}.do",
                type: "post",
                dataType: "text",
                data: {text: menuText, code: menuCode, description: menuDescription, id: id, name: menuText , icon:icon , linkType:linkType},
                success: function (result) {
                    if (result == "createOk") {
                        alert("新建主菜单成功");
                        menuopen('/manage/mainmenu/list.do');
                        //恢复button点击
                        $("#menuButton").prop("disabled",false);
                    } else if (result == "createError") {
                        alert("新建主菜单失败");
                        $("#menuButton").prop("disabled",false);
                        return false;
                    } else if (result == "updateOk") {
                        alert("修改主菜单成功");
                        menuopen('/manage/mainmenu/list.do');
                        $("#menuButton").prop("disabled",false);
                    } else if (result == "updateError") {
                        alert("修改主菜单失败");
                        $("#menuButton").prop("disabled",false);
                        return false;
                    }
                },
                error: function () {
                    alert("操作失败");
                    $("#menuButton").prop("disabled",false);
                    return false;
                }
            });
        }
    }
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
    <tr>
        <td valign="top" class="mainContent">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div style="float: right"><a href="javascript:void(0);" onclick="menuopen('/manage/mainmenu/list.do');" id="returnUserList">返回主菜单列表</a></div>
                    <c:choose>
                        <c:when test="${cmd == 'add'}">
                            新建主菜单
                        </c:when>
                        <c:when test="${cmd == 'edit'}">
                            修改主菜单
                        </c:when>
                    </c:choose>
                </div>
                <div class="panel-body pan" style="height: 350px">
                    <form action="${webroot}/addMenu.do" id="addMenu" class="form-validate" method="post" onSubmit="return false;">
                        <div class="form-body pal">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="menuText" class="control-label">菜单名称</label>
                                        <div class="input-icon">
                                            <i class="fa fa-folder-open"></i>
                                            <input type="text" class="form-control" name="text" value="${mainmenu.text}" id="menuText">
                                            <input type="hidden" name="cmd" id="cmd" value="${cmd}"/>
                                            <input type="hidden" name="id" id="id" value="${mainmenu.id}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="menuCode" class="control-label">显示顺序</label>
                                        <div class="input-icon">
                                            <i class="fa fa-info"></i>
                                            <input type="text" class="form-control" name="code" value="${mainmenu.code}" id="menuCode" maxlength="5" placeholder="请按照现有菜单的自然数顺序依次填写">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="menuIcon" class="control-label">菜单icon</label>
                                        <div class="input-icon">
                                            <i class="fa fa-info"></i>
                                            <input type="text" class="form-control" name="icon" value="${mainmenu.icon}" id="menuIcon" maxlength="20" placeholder="默认：fa-tachometer">
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
                                <label class="control-label">菜单描述</label>
                                <textarea rows="5" cols="30" class="form-control" name="description" id="menuDescription">${mainmenu.description}</textarea>
                            </div>
                            <div class="form-group mbn">
                                <div class="col-md-offset-5 col-md-7">
                                    <button type="button" class="btn btn-primary" id="menuButton" onclick="clickMenuButton();">提交</button>&nbsp;&nbsp;&nbsp;
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
