<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>控制中心 - ${webname}</title>
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="pragma" CONTENT="no-cache">
    <meta http-equiv="Cache-Control" CONTENT="no-cache, must-revalidate">
    <meta http-equiv="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
    <%@ include file="main/css.jsp" %>
</head>
<body class="sidebar-default header-fixed pace-done">
	<div>
		<%@ include file="main/topbar.jsp" %>
        <div id="wrapper">
            <%@ include file="main/sidebar.jsp" %>
            <div id="page-wrapper">
                <%@ include file="main/page-title.jsp" %>
                <div class="page-content"></div>
            </div>
            <%@ include file="main/footer.jsp" %>
        </div>
    </div>
    <%@ include file="main/js.jsp" %>
</body>
</html>