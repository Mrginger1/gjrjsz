<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link href="themes/ecmoban_jumei/style.css" rel="stylesheet" type="text/css" />

<div class="top_nav">
	<div class="block">
		<ul class="top_bav_l">
		</ul>
		<div class="header_r">
			<font id="ECS_MEMBERZONE"> <c:if test="${sessionScope.userid == null }">
					<a href="index/preLogin.action">[用户登录]</a>&nbsp;<a href="index/preReg.action">[用户注册]</a>
				</c:if> <c:if test="${sessionScope.userid != null }">
									你好
									<b>${sessionScope.username }</b>
					<a href="index/cart.action">[购物车]</a>&nbsp; <a href="index/usercenter.action">[用户中心]</a>&nbsp; <a
						href="index/exit.action">[退出系统]</a>
				</c:if>
			</font>
		</div>
	</div>
</div>
<div id="get_top" style="position: relative;">
	<div id="logo" class="block header">
		<a href="index/index.action" id="home" style="background: url(themes/ecmoban_jumei/images/logo.gif) no-repeat top left;">${title
			}</a>
	</div>
</div>
<div style="clear: both"></div>
<div class="mainNav ">
	<div class="block nav_list">
		<ul>
			<li><a href="index/index.action">首页</a></li>
			<c:forEach items="${bannerList}" var="banner">
				<li><a href="index/article.action?id=${banner.bannerid}">${banner.bannername } </a></li>
			</c:forEach>
			<li><a href="index/recommend.action">推荐商品</a></li>
			<li>
		<a href="index/special.action">特价商品</a>
			</li>
			<li>
			<a href="index/all.action">全部商品</a>
			</li>
			<li>
			<a href="index/bbs.action">留言交流</a>
			</li>
			</ul>
		<div class="search_box ">
			<form id="searchForm" name="searchForm" method="post" action="index/query.action" style="width: 208px; height: 24px;">
				<input name="name" type="text" id="keyword" value="" class="top_search_input" /> <input type="submit"
					class="search_bnt" value=" " style="vertical-align: middle;" />
			</form>
			<div style=""></div>
		</div>
	</div>
</div>