<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="css/table.css" />
<script src="echart/jquery-1.11.1.min.js" charset="UTF-8"></script>
<script src="echart/echarts.min.js" charset="UTF-8"></script>
<script src="echart/chartline.js" charset="UTF-8"></script>
</head>
<body>
	<div class="admin-main">
		<fieldset class="layui-elem-field">
			<legend>订单收入统计</legend>
			<div class="layui-field-box layui-form">
				<table class="layui-table">
					<tr align="center">
						<td><div class="text-center" id="chartmain" style="width: 99%; height: 500px;"></div></td>
					</tr>
				</table>
			</div>
		</fieldset>
		<input type="hidden" name="basepath" id="basepath" value="<%=basePath%>">
	</div>
</body>
</html>

