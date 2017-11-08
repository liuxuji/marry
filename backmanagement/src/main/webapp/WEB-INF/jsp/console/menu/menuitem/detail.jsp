<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #tableContent th , #tableContent td , #tableHead td{
        text-align: center;
        vertical-align:middle
    }
    #tableContent th {
        font-size: 15px;
    }
    #addOperation{
        color:white;
    }
    #addOperation:hover{
        color: #f3e97a;
    }
    #editItem , #deleteItem:visited{color:#efefef!important;}
    #editItem , #deleteItem:link{color:#efefef!important;}
</style>
<script>
    //删除操作
    function deleteResource(id, parentId) {
        if (confirm("确定要删除数据吗")) {
            //发送ajax请求
            $.ajax({
                url: "${webroot}/manage/resource/save_delete.do",
                type: "post",
                dataType: "text",
                data: {id: id},
                success: function (result) {
                    if (result == "deleteOk") {
                        alert("删除子菜单成功");
                        menuopen('${webroot}/manage/menuitem/detail.do?id=' + parentId);
                    } else if (result == "deleteError") {
                        alert("删除子菜单失败");
                        return false;
                    }
                },
                error: function () {
                    alert("操作失败");
                    return false;
                }
            });
        } else {
            //取消删除
            return false;
        }
    }

    //返回子菜单
    $("#returnMenuItem").click(function(){
        menuopen('${pageContext.request.contextPath}/manage/mainmenu/detail.do?id=${menuitem.mainMenu.id}');
    });
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
    <tr>
        <td valign="top" class="mainContent">
            <table class="navigation" border="0" cellpadding="0" cellspacing="0" width="100%" height="30">
                <tr>
                    <td style="display: none">您当前位置:菜单管理 &gt;&gt; ${menuitem.mainMenu.name} &gt;&gt; ${menuitem.name}</td>
                    <td align="right">
                        <button class="btn btn-primary" id="returnMenuItem">&nbsp;&nbsp;返回子菜单&nbsp;&nbsp;</button>
                    </td>
                </tr>
            </table>
            <table class="infotable table-hover table-bordered" border="0" cellpadding="0" cellspacing="0" align="center" id="tableHead">
                <tr>
                    <td class="tdlabel">子菜单名称:</td>
                    <td>${menuitem.name}</td>
                </tr>
                <tr>
                    <td class="tdlabel">主菜单名称:</td>
                    <td>${menuitem.mainMenu.text}</td>
                </tr>
                <tr>
                    <td class="tdlabel">子菜单序号:</td>
                    <td>${menuitem.code}</td>
                </tr>
                <tr>
                    <td class="tdlabel">子菜单链接:</td>
                    <td>${menuitem.link}</td>
                </tr>
                <tr>
                    <td class="tdlabel">需要权限:</td>
                    <td>${menuitem.symbol}</td>
                </tr>
                <tr>
                    <td class="tdlabel">子菜单描述:</td>
                    <td>${menuitem.description}</td>
                </tr>
            </TABLE>
            <br>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div style="float: right"><a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/resource/add.do?menuItemId=${menuitem.id}');" id="addOperation">新建操作</a></div>
                    操作管理
                </div>
                <c:if test="${not empty menuitem.resources}">
                    <sec:authorize access="hasRole('OPT_RESOURCE_EDIT')"><c:set var="canEdit" value="True"/></sec:authorize>
                    <sec:authorize access="hasRole('OPT_RESOURCE_DELETE')"><c:set var="canDelete"
                                                                                  value="True"/></sec:authorize>
                    <TABLE class="table table-hover table-striped table-bordered" cellSpacing=0 cellPadding=0 width="100%" border=0 id="tableContent">
                        <tr>
                            <c:if test="${canEdit}">
                                <th>修改</th>
                            </c:if>
                            <c:if test="${canDelete}">
                                <th>删除</th>
                            </c:if>
                            <th>名称</th>
                            <th>备注</th>
                            <th>需要权限</th>
                        </tr>
                        <c:forEach items="${menuitem.resources}" var="resource" varStatus="status">
                            <tr class="r${status.count%2}">
                                <c:if test="${canEdit}">
                                    <td>
                                        <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/resource/edit.do?id=${resource.id}');" class="btn btn-primary" style="width: 37px" id="editItem">
                                            <i class="fa fa-edit" title="修改操作"></i></a>
                                    </td>
                                </c:if>
                                <c:if test="${canDelete}">
                                    <td>
                                        <a href="javascript:void(0);" onclick="deleteResource(${resource.id} , ${resource.menuItem.id});" class="btn btn-primary" style="width: 37px" id="deleteItem">
                                            <i class="fa fa-trash-o" title="删除操作"></i></a>
                                    </td>
                                </c:if>
                                <td>${resource.name}</td>
                                <td>${resource.description}</td>
                                <td>${fn:replace(resource.symbol,';',';<br>')}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
            </div>
        </td>
    </tr>
</table>
