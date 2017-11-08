<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #tableContent th , #tableContent td{
        text-align: center;
        vertical-align:middle
    }
    #tableContent th {
        font-size: 15px;
    }
</style>
<script>
    $("#changeMenu").click(function () {
        $("#changeMenu").prop("disabled",true);
        //发送ajax请求
        $.ajax({
            url:"${webroot}/manage/menuitem/updateItemMenuParentMenu.do",
            type:"post",
            dataType:"text",
            data:{menuItemIds:menuItemIdsArray.toString() , itemParentIds:itemParentIdsArray.toString()},
            success:function(result){
                if(result == "updateItemMenuParentMenuOk"){
                    alert("更改菜单成功");
                    menuopen('${webroot}/manage/menuitem/changeMenu.do');
                    $("#changeMenu").prop("disabled",false);
                }else if(result == "updateItemMenuParentMenuError"){
                    alert("更改菜单失败");
                    $("#changeMenu").prop("disabled",false);
                    return false;
                }
            },
            error:function(){
                alert("操作失败");
                $("#changeMenu").prop("disabled",false);
                return false;
            }
        });
    });
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
    <tr>
        <td valign="top" class="mainContent">
            <form id="changeMenuForm">
                <TABLE class="table table-hover table-striped table-bordered" id="tableContent">
                    <tr>
                        <th>名称</th>
                        <th></th>
                        <th>序号</th>
                        <th>链接</th>
                        <th>需要权限</th>
                        <th>备注</th>
                        <th>菜单更改</th>
                    </tr>
                    <c:forEach items="${mainmenus}" var="mainmenu" varStatus="status">
                        <tr class="r${status.count%2}">
                            <td>${mainmenu.name}</td>
                            <td>子菜单名称</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <c:forEach items="${mainmenu.menuItems}" var="menuItem" varStatus="status">
                            <tr class="r${status.count%2}">
                                <td></td>
                                <td>${menuItem.name}</td>
                                <td>${menuItem.code}</td>
                                <td>${menuItem.link}</td>
                                <td>${fn:replace(menuItem.symbol,';',';<br>')}</td>
                                <td>${menuItem.description}</td>
                                <td>
                                    <select id="menu" name="menu" class="list-select" style="width: 127px"
                                            onchange="changeItemParentFn(${menuItem.mainMenu.id},this.value,${menuItem.id})">
                                        <c:forEach items="${mainmenus}" var="menu">
                                            <option value="${menu.id}"
                                                    <c:if test="${menuItem.mainMenu.id == menu.id}">selected="selected"</c:if>>${menu.name}</option>
                                        </c:forEach>
                                    </select>
                                    <input type="hidden" value="${menuItem.id}" name="menuItemIds" id="menuItemIds">
                                    <input type="hidden" id="menuItem_${menuItem.id}" value="" name="itemParentIds">
                                </td>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <input type="button" class="btn btn-primary" value="保存" id="changeMenu" style="width: 100px"/>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
<script type="text/javascript">
    var itemParentIdsArray = new Array();
    var menuItemIdsArray = new Array();
    function changeItemParentFn(menuId, chMenuId, menuItemId) {
        if (menuId != chMenuId) {
            document.getElementById("menuItem_" + menuItemId).value = chMenuId;
        } else {
            document.getElementById("menuItem_" + menuItemId).value = "";
        }
        itemParentIdsArray.push(document.getElementById("menuItem_" + menuItemId).value);
        menuItemIdsArray.push(menuItemId);
    }
</script>
