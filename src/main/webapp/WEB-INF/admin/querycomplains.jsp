<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/controller.js"></script>
</head>
<body>
	<div class="admin-main">
		<fieldset class="layui-elem-field">
			<legend>意见反馈数据查询</legend>
			<div class="layui-field-box layui-form">
				<table class="layui-table">

					<thead>
						<tr>
							<th style="text-align: center">用户</th>
							<th style="text-align: center">标题</th>
							<th style="text-align: center">内容</th>
							<th style="text-align: center">发布日期</th>
							<th style="text-align: center">状态</th>
							<th style="text-align: center">管理员回复</th>
						</tr>
					</thead>
					<c:forEach items="${complainsList}" var="complains">
						<tr align="center">
							<td>${complains.username}</td>
							<td>${complains.title}</td>
							<td>${complains.contents}</td>
							<td>${complains.addtime}</td>
							<td>${complains.status}</td>
							<td>${complains.reps}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</fieldset>
		<blockquote class="layui-elem-quote" style="text-align: right">
			<form action="complains/queryComplainsByCond.action" name="myform" method="post">
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">查询条件</label>
						<div class="layui-input-block">
							<select name="cond" class="layui-input">
								<option value="usersid">按用户查询</option>
								<option value="title">按标题查询</option>
								<option value="contents">按内容查询</option>
								<option value="addtime">按发布日期查询</option>
								<option value="status">按状态查询</option>
								<option value="reps">按管理员回复查询</option>
							</select>
						</div>
					</div>
					<div class="layui-inline">
						<div class="layui-input-block">
							<input type="text" name="name" required style="width: 200px" class="layui-input" />
						</div>
					</div>
					<div class="layui-inline">
						<input type="submit" value="查询" class="layui-btn" />
					</div>
				</div>
			</form>
		</blockquote>
	</div>
</body>
</html>
