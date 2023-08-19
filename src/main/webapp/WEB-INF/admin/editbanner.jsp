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
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/controller.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/banner.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
</head>
<body>
	<div style="margin: 15px;">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
			<legend>修改网站栏目信息</legend>
		</fieldset>
		<form id="addForm" class="layui-form" action="banner/updateBanner.action" name="myform" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">栏目名称</label>
				<div class="layui-input-inline" style="width: 45%;">
					<input type="text" name="bannername" class="layui-input" id="bannername" value="${banner.bannername}" />
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">备注</label>
				<div class="layui-input-inline" style="width: 45%;">
					<input type="text" name="memo" class="layui-input" id="memo" value="${banner.memo}" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="hidden" name="bannerid" id="bannerid" value="${banner.bannerid}" /><input type="hidden"
						name="addtime" id="addtime" value="${banner.addtime}" />

					<button class="layui-btn" type="submit" id="sub">立即提交</button>
					<button type="reset" class="layui-btn" id="res">取消重置</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

