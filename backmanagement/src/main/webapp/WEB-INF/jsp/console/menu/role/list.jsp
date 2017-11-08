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
    #editRole , #deleteRole:visited{color:#efefef!important;}
    #editRole , #deleteRole:link{color:#efefef!important;}
</style>
<script>
    function deleteRole(id){
        if(confirm("确定要删除数据吗")) {
            $.ajax({
                url:"${webroot}/manage/role/save_delete.do",
                type:"post",
                dataType:"text",
                data:{id:id},
                success:function(result){
                    if(result == "deleteOk"){
                        alert("删除该角色成功");
                        menuopen('/manage/role/list.do');
                    }else if(result == "deleteError"){
                        alert("删除该角色失败");
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

    //新建角色
    $("#addRole").click(function(){
        menuopen('${pageContext.request.contextPath}/manage/role/add.do');
    });
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%" style="margin-bottom:65px">
    <tr>
        <td valign="top" class="mainContent">
            <table class="navigation" border="0" cellpadding="0" cellspacing="0" width="100%" height="30">
                <tr>
                    <td align="right">
                        <sec:authorize access="hasRole('OPT_ROLE_ADD')">
                            <button class="btn btn-primary" id="addRole">&nbsp;&nbsp;新建角色&nbsp;&nbsp;</button>
                        </sec:authorize>
                    </td>
                </tr>
            </table>
            <c:if test="${not empty roles}">
                <sec:authorize access="hasRole('OPT_ROLE_EDIT')"><c:set var="canEdit" value="True"/></sec:authorize>
                <sec:authorize access="hasRole('OPT_ROLE_DELETE')"><c:set var="canDelete" value="True"/></sec:authorize>
                <table class="table table-hover table-striped table-bordered mg-top" id="tableContent">
                    <tr>
                        <c:if test="${canEdit}">
                            <th>修改</th>
                        </c:if>
                        <c:if test="${canDelete}">
                            <th>删除</th>
                        </c:if>
                        <th>名称</th>
                        <th>描述</th>
                        <th>可用功能</th>
                    </tr>
                    <c:forEach items="${roles}" var="role" varStatus="status">
                        <tr class="r${status.count%2}">
                            <c:if test="${canEdit}">
                                <td><a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/role/edit.do?id=${role.id}');" class="btn btn-primary" style="width: 37px" id="editRole">
                                    <i class="fa fa-edit" title="修改角色功能"></i></a></td>
                            </c:if>
                            <c:if test="${canDelete}">
                                <td>
                                    <a href="javascript:void(0);" onclick="deleteRole(${role.id});" class="btn btn-primary" style="width: 37px" id="deleteRole">
                                    <i class="fa fa-trash-o" title="删除该角色"></i></a></td>
                            </c:if>
                            <td>${role.name}</td>
                            <td>${role.description}</td>
                            <td>
                                <c:forEach items="${role.resources}" var="resource">
                                    ${resource.menuItem.mainMenu.name} &gt; ${resource.menuItem.name} &gt; ${resource.name}
                                    <br>
                                </c:forEach>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </td>
    </tr>
</table>
