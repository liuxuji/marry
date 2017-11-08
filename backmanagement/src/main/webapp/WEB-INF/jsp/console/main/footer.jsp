<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="footer">
	<div class="copyright">
	<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy" />
	&copy; bizunited - BBC Platform manage v1.0</div>
</div>