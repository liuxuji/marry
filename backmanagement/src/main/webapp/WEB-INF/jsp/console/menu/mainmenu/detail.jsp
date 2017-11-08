<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #addMenuItem{
        color: white;
    }
    #addMenuItem:hover{
        color: #f3e97a;
    }
    #tableContent th , #tableContent td , #tableHead td{
        text-align: center;
        vertical-align:middle
    }
    #tableContent th {
        font-size: 15px;
    }
    #editMenuItem , #deleteMenuItem , #detailMenuItem:visited{color:#efefef!important;}
    #editMenuItem , #deleteMenuItem , #detailMenuItem:link{color:#efefef!important;}
</style>
<script type="text/javascript">
    //删除子菜单
    function deleteDetail(id , parentId){
        if(confirm("确定要删除数据吗")) {
            //发送ajax请求
            $.ajax({
                url:"${webroot}/manage/menuitem/save_delete.do",
                type:"post",
                dataType:"text",
                data:{id:id},
                success:function(result){
                    if(result == "deleteOk"){
                        alert("删除子菜单成功");
                        menuopen('${webroot}/manage/mainmenu/detail.do?id='+parentId);
                    }else if(result == "deleteError"){
                        alert("删除子菜单失败");
                        return false;
                    }
                },
                error:function(){
                    alert("操作失败");
                    return false;
                }
            });
        }else {
            //取消删除
            return false;
        }
    }

    //返回主菜单列表
    $("#returnMainMenu").click(function(){
        menuopen('${pageContext.request.contextPath}/manage/mainmenu/list.do');
    });
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
    <tr>
        <td valign="top" class="mainContent">
            <table class="navigation" border="0" cellpadding="0" cellspacing="0" width="100%" height="30">
                <tr>
                    <td style="display: none">您当前位置:菜单管理 &gt;&gt; ${mainmenu.name}</td>
                    <td align="right">
                        <button class="btn btn-primary" id="returnMainMenu">&nbsp;&nbsp;返回主菜单列表&nbsp;&nbsp;</button>
                    </td>
                </tr>
            </table>
            <table class="infotable table-hover table-bordered" border="0" cellpadding="0" cellspacing="0" align="center" id="tableHead">
                <tr>
                    <td class="tdlabel">主菜单名称:</td>
                    <td>${mainmenu.name}</td>
                </tr>
                <tr>
                    <td class="tdlabel">主菜单顺序:</td>
                    <td>${mainmenu.code}</td>
                </tr>
                <tr>
                    <td class="tdlabel">主菜单描述:</td>
                    <td>${mainmenu.description}</td>
                </tr>
            </table>
            <br>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div style="float: right"><a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/menuitem/add.do?mainMenuId=${mainmenu.id}');" id="addMenuItem">新建子菜单</a></div>
                    子菜单管理
                </div>
                <c:if test="${not empty mainmenu.menuItems}">
                    <sec:authorize access="hasRole('OPT_MENUITEM_EDIT')"><c:set var="canEdit" value="True"/></sec:authorize>
                    <sec:authorize access="hasRole('OPT_MENUITEM_DELETE')"><c:set var="canDelete"
                                                                                  value="True"/></sec:authorize>
                    <sec:authorize access="hasRole('OPT_MENUITEM_DETAIL')"><c:set var="canDetail"
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
                            <th>序号</th>
                            <th>链接</th>
                            <th>需要权限</th>
                            <th>备注</th>
                            <c:if test="${canDetail}">
                                <th>操作管理</th>
                            </c:if>
                        </tr>
                        <c:forEach items="${mainmenu.menuItems}" var="menuItem" varStatus="status">
                            <tr class="r${status.count%2}">
                                <c:if test="${canEdit}">
                                    <td>
                                        <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/menuitem/edit.do?id=${menuItem.id}');" class="btn btn-primary" style="width: 37px" id="editMenuItem">
                                            <i class="fa fa-edit" title="修改子菜单"></i></a></td>
                                </c:if>
                                <c:if test="${canDelete}">
                                    <td>
                                        <a href="javascript:void(0);" onclick="deleteDetail(${menuItem.id},${menuItem.mainMenu.id});" class="btn btn-primary" style="width: 37px" id="deleteMenuItem">
                                            <i class="fa fa-trash-o" title="删除子菜单"></i></a></td>
                                </c:if>
                                <td>${menuItem.name}</td>
                                <td>${menuItem.code}</td>
                                <td>${menuItem.link}</td>
                                <td>${fn:replace(menuItem.symbol,';',';<br>')}</td>
                                <td>${menuItem.description}</td>
                                <c:if test="${canDetail}">
                                    <td>
                                        <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/menuitem/detail.do?id=${menuItem.id}');" class="btn btn-primary" style="width: 37px" id="detailMenuItem">
                                            <i class="fa fa-table" title="进入操作列表"></i></a>
                                    </td>
                                </c:if>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
            </div>
        </td>
    </tr>
</table>
