<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<style>
    #tableContent th , #tableContent td {
        text-align: center;
        vertical-align:middle
    }
    #tableContent th {
        font-size: 15px;
    }
    #editAdmin , #deleteAdmin , #resetPasswordAdmin:visited{color:#efefef!important;}
    #editAdmin , #deleteAdmin , #resetPasswordAdmin:link{color:#efefef!important;}
</style>
<script>
    //删除管理员
    function deleteAdmin(username){
        if(confirm("确定要删除数据吗")){
            $.ajax({
                url:"${webroot}/manage/admin/save_delete.do?username="+username,
                type:"get",
                dataType:"text",
                success:function(result){
                    if(result == "deleteOk"){
                        alert("删除管理员成功");
                        menuopen('/manage/admin/list.do');
                    }else if(result == "deleteError"){
                        alert("删除管理员失败");
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

    //展示管理员列表
    $("#managerList").click(function(){
        menuopen('${pageContext.request.contextPath}/manage/admin/list.do?enabled=true');
    });

    //展示已禁用管理员列表
    $("#disabledManagerList").click(function(){
        menuopen('${pageContext.request.contextPath}/manage/admin/list.do?enabled=false');
    });

    //展示“新建管理员”列表
    $("#addManager").click(function(){
        menuopen('${pageContext.request.contextPath}/manage/admin/add.do');
    });

</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
    <tr>
        <td valign="top" class="mainContent">
            <table class="navigation" border="0" cellpadding="0" cellspacing="0" width="100%" height="30">
                <tr>
                    <td align="right">
                        <c:if test="${not enabled}">
                            <button class="btn btn-primary" id="managerList">管理员列表</button>
                        </c:if>
                        <c:if test="${enabled}">
                            <button class="btn btn-primary" id="disabledManagerList">已禁用管理员</button>
                        </c:if>&nbsp;
                        <sec:authorize access="hasRole('OPT_ADMIN_ADD')">
                            <button class="btn btn-primary" id="addManager">新建管理员</button>
                        </sec:authorize>
                    </td>
                </tr>
            </table>
            <c:if test="${not empty admins}">
                <sec:authorize access="hasRole('OPT_ADMIN_EDIT')"><c:set var="canEdit" value="True"/></sec:authorize>
                <sec:authorize access="hasRole('OPT_ADMIN_DELETE')"><c:set var="canDelete"
                                                                           value="True"/></sec:authorize>
                <sec:authorize access="hasRole('OPT_ADMIN_RESET')"><c:set var="canReset" value="True"/></sec:authorize>
                <table class="table table-hover table-striped table-bordered mg-top" id="tableContent">
                    <tr>
                        <c:if test="${canEdit}">
                            <th>修改</th>
                        </c:if>
                        <c:if test="${canDelete}">
                            <th>删除</th>
                        </c:if>
                        <th>账号</th>
                        <th>姓名</th>
                        <th>电子邮件</th>
                        <th>手机</th>
                        <th>MSN</th>
                        <th>QQ</th>
                        <th>角色</th>
                        <c:if test="${canReset}">
                            <th>重置密码</th>
                        </c:if>
                    </tr>
                    <c:forEach items="${admins}" var="admin" varStatus="status">
                        <tr class="r${status.count%2}">
                            <c:if test="${canEdit}">
                                <td>
                                    <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/admin/edit.do?username=${admin.username}');" class="btn btn-primary" style="width: 37px" id="editAdmin">
                                        <i class="fa fa-edit" title="修改管理员"></i></a></td>
                            </c:if>
                            <c:if test="${canDelete}">
                                <td>
                                    <a href="javascript:void(0);" onclick="deleteAdmin('${admin.username}');" class="btn btn-primary" style="width: 37px" id="deleteAdmin">
                                        <i class="fa fa-trash-o" title="删除管理员"></i></a></td>
                            </c:if>
                            <td class="admin-username">${admin.username}</td>
                            <td>${admin.name}</td>
                            <td>${admin.email}</td>
                            <td>${admin.mobile}</td>
                            <td>${admin.msn}</td>
                            <td>${admin.qq}</td>
                            <td>
                                <c:forEach items="${admin.roles}" var="role">
                                    ${role.name}<br>
                                </c:forEach>
                            </td>
                            <c:if test="${canReset}">
                                <td>
                                    <a href="javascript:void(0);" onclick="menuopen('${pageContext.request.contextPath}/manage/admin/reset.do?username=${admin.username}');" class="btn btn-primary" style="width: 37px" id="resetPasswordAdmin">
                                        <i class="fa fa-pencil" title="重置密码"></i></a>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </td>
    </tr>
</table>
