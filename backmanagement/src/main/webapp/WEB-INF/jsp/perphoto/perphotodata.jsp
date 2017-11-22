<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.per.vo.perphoto.BasePhotoInfoVo" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="hp" tagdir="/WEB-INF/tags/perphoto" %>
<%
    List<BasePhotoInfoVo> list = new ArrayList<BasePhotoInfoVo>();
    list.add(new BasePhotoInfoVo());
    request.setAttribute("emptyElement", list);
%>
<hp:programStaticElements elements="${emptyElement}" startIndex="${param.index}" fieldNamePrefix="" />
