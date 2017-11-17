<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #tableMenu th , #tableMenu td {
        text-align: center;
        vertical-align:middle
    }
    #tableMenu th {
        font-size: 15px;
    }
    #editMenu , #deleteMenu , #detailMenu:visited{color:#efefef!important;}
    #editMenu , #deleteMenu , #detailMenu:link{color:#efefef!important;}
</style>
<script src="${webroot}/js/jquery.js"></script>
<script>
    //删除主菜单
    function deleteMenu(id){
        if(confirm("确定要删除数据吗")){
            $.ajax({
                url:"${webroot}/manage/mainmenu/save_delete.do",
                type:"post",
                dataType:"text",
                data:{id:id},
                success:function(result){
                    if(result == "deleteOk"){
                        alert("删除该主菜单成功");
                        menuopen('/manage/mainmenu/list.do');
                    }else if(result == "deleteError"){
                        alert("删除主菜单失败");
                        return false;
                    }
                },
                error:function(){
                    alert("操作失败");
                    return false;
                }
            });
        }else{
            //取消删除
            return false;
        }
    }

    //增加主菜单
    $("#addMainMenu").click(function(){
        menuopen('/manage/mainmenu/add.do');
    });
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%" style="margin-bottom:65px">
    <tr>
        <td valign="top" class="mainContent">
            <table class="navigation" border="0" cellpadding="0" cellspacing="0" width="100%" height="30">
                <tr>
                    <td align="right">
                        <sec:authorize access="hasRole('OPT_MAINMENU_ADD')">
                            <button class="btn btn-primary" id="addMainMenu">&nbsp;&nbsp;新建主菜单&nbsp;&nbsp;</button>
                        </sec:authorize>
                    </td>
                </tr>
            </table>
            <c:if test="${not empty mainmenus}">
                <sec:authorize access="hasRole('OPT_MAINMENU_EDIT')"><c:set var="canEdit" value="True"/></sec:authorize>
                <sec:authorize access="hasRole('OPT_MAINMENU_DELETE')"><c:set var="canDelete"
                                                                              value="True"/></sec:authorize>
                <sec:authorize access="hasRole('OPT_MAINMENU_DETAIL')"><c:set var="canDetail"
                                                                              value="True"/></sec:authorize>
                <table class="table table-hover table-striped table-bordered mg-top" cellSpacing="0" cellPadding="0" width="100%" border=0 id="tableMenu">
                    <tr>
                        <c:if test="${canEdit}">
                            <th>修改</th>
                        </c:if>
                        <c:if test="${canDelete}">
                            <th>删除</th>
                        </c:if>
                        <th>显示顺序</th>
                        <th>菜单名称</th>
                        <th>菜单描述</th>
                        <th>菜单icon</th>
                        <th>链接跳转类型</th>
                        <th style="width: 103px">url</th>
                        <c:if test="${canDetail}">
                            <th>子菜单管理</th>
                        </c:if>
                    </tr>
                    <c:forEach items="${mainmenus}" var="mainMenu" varStatus="status">
                        <tr class="r${status.count%2}">
                            <c:if test="${canEdit}">
                                <td>
                                    <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/mainmenu/edit.do?id=${mainMenu.id}');" class="btn btn-primary" style="width: 37px" id="editMenu">
                                        <i class="fa fa-edit" title="修改主菜单"></i></a>
                                </td>
                            </c:if>
                            <c:if test="${canDelete}">
                                <td>
                                    <a href="javascript:void(0);" onclick="deleteMenu(${mainMenu.id});" class="btn btn-primary" style="width: 37px" id="deleteMenu">
                                        <i class="fa fa-trash-o" title="删除主菜单"></i>
                                    </a>
                                </td>
                            </c:if>
                            <td>${mainMenu.code}</td>
                            <td>${mainMenu.name}</td>
                            <td>${mainMenu.description}</td>
                            <td>${mainMenu.icon}</td>
                            <td>${mainMenu.linkType}</td>
                            <td>${mainMenu.url}</td>
                            <td><c:if test="${canDetail}">
                                <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/mainmenu/detail.do?id=${mainMenu.id}');" class="btn btn-primary" style="width: 37px" id="detailMenu">
                                    <i class="fa fa-table" title="进入子菜单"></i></a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </td>
    </tr>
</table>

