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
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/controller.js"></script>
</head>
<body>
	<div class="admin-main">
		<blockquote class="layui-elem-quote">
			<span style="text-align: left">${html }</span> <span style="float: right"><a href="bbs/getAllBbs.action"
				class="layui-btn layui-btn-small"> <i class="layui-icon">&#x1002;</i>&nbsp;刷新数据
			</a></span>
		</blockquote>
		<fieldset class="layui-elem-field">
			<legend>留言交流数据列表</legend>
			<div class="layui-field-box layui-form">
				<table class="layui-table">
					<thead>
						<tr>
							<th style="text-align: center">发布人</th>
							<th style="text-align: center">标题</th>
							<th style="text-align: center">内容</th>
							<th style="text-align: center">发布日期</th>
							<th style="text-align: center">点击数</th>
							<th style="text-align: center">回复数</th>
							<th style="text-align: center" width="150">操作</th>
						</tr>
					</thead>
					<c:forEach items="${bbsList}" var="bbs">
						<tr align="center">
							<td>${bbs.username}</td>
							<td>${bbs.title}</td>
							<td>${bbs.contents}</td>
							<td>${bbs.addtime}</td>
							<td>${bbs.hits}</td>
							<td>${bbs.repnum}</td>
							<td><a href="bbs/deleteBbs.action?id=${bbs.bbsid}"
								onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</fieldset>
	</div>
</body>
</html>

