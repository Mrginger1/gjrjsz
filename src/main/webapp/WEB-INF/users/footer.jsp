<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="footer">
	<div class="footer_center">
		<div id="bottomNav">
			<div class="bNavList clearfix">
				<div style="color: #FFFFFF"></div>
			</div>
		</div>
	</div>
	<div id="footer" class="block950">
		<div class="text" style="text-align: center; height: 36px; line-height: 18px; padding: 8px 0;">
			<a target="_blank" href="admin/index.action"><p style="font-size: 18px;color: red">管理员入口</p></a>
		</div>
		<div class="blank"></div>
	</div>
</div>
<%
	String message = (String) session.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	session.removeAttribute("message");
%>