<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #returnRoleList {
        color: white;
    }

    #returnRoleList:hover {
        color: #f3e97a;
    }
    .mainMenu-defs-zy{width: 100%;height:auto;}
    .mainMenu-defs-zy ul{width: 100%;list-style: none;float: left;}
    .mainMenu-defs-zy ul li{list-style: none;width:auto;float: left;}
    .mainMenu-defs-zy ul li label{vertical-align: 2px;}
    #addRoles{height: 100%;overflow-y: scroll;}
    #zy_infohe{height: 400px;}
</style>
<script>
    $("#addRole").click(function () {
        //获取请求参数
        var cmd = $("#cmd").val();
        if (cmd == 'edit') {
            var id = $("#id").val();
        }
        var name = $("#name").val().trim();
        var description = $("#description").val().trim();
        var menuItems = "";
        $("input:checkbox[name=menuItems]:checked").each(function (i) {
            if (0 == i) {
                menuItems = $(this).val();
            } else {
                menuItems += ("," + $(this).val());
            }
            return menuItems;
        });
        var resources = "";
        $("input:checkbox[name=resources]:checked").each(function (i) {
            if (0 == i) {
                resources = $(this).val();
            } else {
                resources += ("," + $(this).val());
            }
            return resources;
        });
        //格式检查
        var check = true;
        if (name == "" || description == "") {
            alert("角色名称和描述不能为空");
            check = false;
            return false;
        }
        if (menuItems == "" || resources == "") {
            alert("角色功能不能为空");
            check = false;
            return false;
        }
        //发送ajax请求
        if (check) {
            $("#addRole").prop("disabled", true);
            $.ajax({
                url: "${webroot}/manage/role/save_${cmd}.do",
                type: "post",
                dataType: "text",
                data: {name: name, description: description, menuItems: menuItems, resources: resources, id: id},
                success: function (result) {
                    if (result == "createOk") {
                        alert("新建角色成功");
                        menuopen('/manage/role/list.do');
                        $("#addRole").prop("disabled", false);
                    } else if (result == "createError") {
                        alert("新建角色失败");
                        $("#addRole").prop("disabled", false);
                        return false;
                    } else if (result == "editOk") {
                        alert("修改角色成功");
                        menuopen('/manage/role/list.do');
                        $("#addRole").prop("disabled", false);
                    } else if (result == "editError") {
                        alert("修改角色失败");
                        $("#addRole").prop("disabled", false);
                        return false;
                    }
                },
                error: function () {
                    alert("操作失败");
                    $("#addRole").prop("disabled", false);
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
                    <div style="float: right"><a href="javascript:void(0);"
                                                 onclick="menuopen('${pageContext.request.contextPath}/manage/role/list.do');"
                                                 id="returnRoleList">返回角色列表</a></div>
                    <c:choose>
                        <c:when test="${cmd == 'add'}">
                            新建角色
                        </c:when>
                        <c:when test="${cmd == 'edit'}">
                            修改角色
                        </c:when>
                    </c:choose>
                </div>
                <div class="panel-body pan" style="position: relative" id="zy_infohe">
                    <form action="${webroot}/addRole.do" id="addRoles" class="form-validate" method="post"
                          onSubmit="return false;">
                        <div class="form-body pal">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="name" class="control-label"><b>角色名称</b></label>
                                        <div class="input-icon">
                                            <i class="fa fa-user"></i>
                                            <input type="text" class="form-control" name="name" value="${role.name}"
                                                   maxlength="30" id="name">
                                            <input type="hidden" name="cmd" id="cmd" value="${cmd}"/>
                                            <input type="hidden" name="id" id="id" value="${role.id}"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><b>角色描述</b></label>
                                <textarea rows="4" cols="30" class="form-control" name="description"
                                          id="description">${role.description}</textarea>
                            </div>
                            <div class="form-group">
                                <label><h4>菜单&操作</h4></label>
                                <hr>
                                <%--<table border=0 align="left" style="background-color: #fff;">
                                    <c:set var="menuItemIndex" value="0"/>
                                    <c:set var="resourceIndex" value="0"/>
                                    <c:forEach items="${mainmenus}" var="mainMenu" varStatus="index">
                                        <c:if test="${index.count % 10 == 1}">
                                            <tr>
                                        </c:if>
                                        <td valign="top">
                                            <table border=0 align="center">
                                                <tr>
                                                    <th style="text-align: left">${mainMenu.name}</th>
                                                </tr>
                                                <c:forEach items="${mainMenu.menuItems}" var="menuItem"
                                                           varStatus="menuItemStatus">
                                                    <c:set var="menuItemIndex" value="${menuItemIndex+1}"/>
                                                    <tr>
                                                        <td>
                                                            <table border=0 align="left">
                                                                <tr>
                                                                    <td class="no" colspan="2" nowrap><input
                                                                            type="checkbox" name="menuItems"
                                                                            id="menuItemId_${menuItem.id}"
                                                                            value="${menuItem.id}"/><label
                                                                            for="menuItemId_${menuItem.id}">${menuItem.name}</label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30"></td>
                                                                    <td>
                                                                        <c:forEach items="${menuItem.resources}"
                                                                                   var="resource"
                                                                                   varStatus="resourceStatus">
                                                                            <c:set var="resourceIndex"
                                                                                   value="${resourceIndex+1}"/>
                                                                            <input type="checkbox" name="resources"
                                                                                   id="resourceId_${resource.id}"
                                                                                   value="${resource.id}"/><label
                                                                                for="resourceId_${resource.id}">${resource.name}</label><br>
                                                                        </c:forEach>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </td>
                                        <c:if test="${index.count % 10 == 0 || index.last == true}">
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </table>--%>
                                <c:set var="menuItemIndex" value="0"/>
                                <c:set var="resourceIndex" value="0"/>
                                <c:forEach items="${mainmenus}" var="mainMenu" varStatus="index">
                                    <div class="mainMenu-defs-zy">
                                        <ul>
                                            <li style="text-align: left;font-weight: 600;">${mainMenu.name}</li>
                                        </ul>
                                        <ul>
                                            <c:forEach items="${mainMenu.menuItems}" var="menuItem" varStatus="menuItemStatus">
                                                <c:set var="menuItemIndex" value="${menuItemIndex+1}"/>
                                                <li>
                                                    <input type="checkbox" name="menuItems" id="menuItemId_${menuItem.id}" value="${menuItem.id}"/>
                                                    <label for="menuItemId_${menuItem.id}">${menuItem.name}</label>
                                                </li>
                                                <li>
                                                    <c:if test="${not empty menuItem.resources}">(->></c:if>
                                                        <c:forEach items="${menuItem.resources}"
                                                                   var="resource"
                                                                   varStatus="resourceStatus">
                                                            <c:set var="resourceIndex"
                                                                   value="${resourceIndex+1}"/>
                                                            <input type="checkbox" name="resources" id="resourceId_${resource.id}" value="${resource.id}"/>
                                                            <label for="resourceId_${resource.id}">${resource.name}</label>
                                                        </c:forEach>
                                                    <c:if test="${not empty menuItem.resources}">)</c:if>&nbsp;&nbsp;&nbsp;&nbsp;
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="form-group mbn"
                                 style="width: 95%; height: 60px; clear:both;">
                                <div class="col-md-offset-5 col-md-7">
                                    <button type="button" class="btn btn-primary" id="addRole">提交</button>
                                    &nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <SCRIPT LANGUAGE="JavaScript">
                //                $().ready(function () {
                //                    $("#contentform").validate();
                //                })
                <c:forEach items="${role.menuItems}" var="menuItem" varStatus="status">
                var obj${status.count} = document.getElementById('menuItemId_${menuItem.id}');
                if (obj${status.count}) obj${status.count}.checked = true;
                </c:forEach>

                <c:forEach items="${role.resources}" var="resource" varStatus="status">
                var obj${status.count} = document.getElementById('resourceId_${resource.id}');
                if (obj${status.count}) obj${status.count}.checked = true;
                </c:forEach>
            </SCRIPT>
        </td>
    </tr>
</table>
