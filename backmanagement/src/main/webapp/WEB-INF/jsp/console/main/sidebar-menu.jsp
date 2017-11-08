<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- 从 spring security获取 -->
<sec:authentication property="principal.menus" var="menus"/>
<c:forEach var="menu" items="${menus}">
	<li>
		<a ${menu.target} href="${menu.url}">
			<i class="${menu.icon} fa-fw"></i>
			<span class="menu-title"><c:out value="${menu.text}"/></span>
			<c:if test="${menu.submenu!=null && fn:length(menu.submenu) > 0}">
				<span class="fa arrow"></span>
			</c:if>
			<c:if test="${menu.label != null}">
				<span class="label label-${menu.label.color}"><c:out value="${menu.label.text}"/></span>
			</c:if>
		</a>
		<c:if test="${menu.submenu!=null && fn:length(menu.submenu) > 0}">
			<ul class="nav nav-second-level">
				<c:forEach var="menu2" items="${menu.submenu}">
					<li>
						<a ${menu2.target} href="${menu2.url}">
							<i class="${menu2.icon}"></i>
							<span class="submenu-title"><c:out value="${menu2.text}"/></span>
							<c:if test="${menu2.submenu!=null && fn:length(menu2.submenu) > 0}">
								<span class="fa arrow"></span>
							</c:if>
							<c:if test="${menu2.label != null}">
								<span class="label label-${menu2.label.color}"><c:out value="${menu2.label.text}"/></span>
							</c:if>
						</a>
						<c:if test="${menu2.submenu!=null && fn:length(menu2.submenu) > 0}">
							<ul class="nav nav-third-level">
								<c:forEach var="menu3" items="${menu2.submenu}">
									<li>
										<a ${menu3.target} href="${menu3.url}">
											<i class="${menu3.icon}"></i>
											<span class="submenu-title"><c:out value="${menu3.text}"/></span>
											<c:if test="${menu3.label != null}">
												<span class="label label-${menu3.label.color}"><c:out value="${menu3.label.text}"/></span>
											</c:if>
										</a>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</li>
				</c:forEach>
			</ul>
		</c:if>
	</li>
</c:forEach>

<%-- <c:forEach var="demomenu" items="${demomenus}">
	<li>
		<a ${demomenu.target} href="${demomenu.url}">
			<i class="${demomenu.icon} fa-fw"></i>
			<span class="menu-title"><c:out value="${demomenu.text}"/></span>
			<c:if test="${demomenu.submenu!=null && fn:length(demomenu.submenu) > 0}">
				<span class="fa arrow"></span>
			</c:if>
			<c:if test="${demomenu.label != null}">
				<span class="label label-${demomenu.label.color}"><c:out value="${demomenu.label.text}"/></span>
			</c:if>
		</a>
		<c:if test="${demomenu.submenu!=null && fn:length(demomenu.submenu) > 0}">
			<ul class="nav nav-second-level">
				<c:forEach var="demomenu2" items="${demomenu.submenu}">
					<li>
						<a ${demomenu2.target} href="${demomenu2.url}">
							<i class="${demomenu2.icon}"></i>
							<span class="submenu-title"><c:out value="${demomenu2.text}"/></span>
							<c:if test="${demomenu2.submenu!=null && fn:length(demomenu2.submenu) > 0}">
								<span class="fa arrow"></span>
							</c:if>
							<c:if test="${demomenu2.label != null}">
								<span class="label label-${demomenu2.label.color}"><c:out value="${demomenu2.label.text}"/></span>
							</c:if>
						</a>
						<c:if test="${demomenu2.submenu!=null && fn:length(demomenu2.submenu) > 0}">
							<ul class="nav nav-third-level">
								<c:forEach var="demomenu3" items="${demomenu2.submenu}">
									<li>
										<a ${demomenu3.target} href="${demomenu3.url}">
											<i class="${demomenu3.icon}"></i>
											<span class="submenu-title"><c:out value="${demomenu3.text}"/></span>
											<c:if test="${demomenu3.label != null}">
												<span class="label label-${demomenu3.label.color}"><c:out value="${demomenu3.label.text}"/></span>
											</c:if>
										</a>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</li>
				</c:forEach>
			</ul>
		</c:if>
	</li>
</c:forEach>
 --%>