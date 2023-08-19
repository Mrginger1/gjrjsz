<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
<link href="themes/ecmoban_jumei/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="themes/ecmoban_jumei/js/index.js"></script>
</head>

<body class="index_page">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="main_bg">
		<div class="block clearfix">
			<div style="float: right; width: 1200px; margin-top: 10px;">
				<div class="container" id="idTransformView">
					<ul class="slider" id="idSlider">
						<li><img src="pic/001.jpg" /></li>
						<li><img src="pic/002.jpg" /></li>
						<li><img src="pic/003.jpg" /></li>
						<li><img src="pic/004.jpg" /></li>
					</ul>
					<ul class="num" id="idNum">
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<div class="blank5"></div>
				<div class="blank"></div>
			</div>
			<div class="blank"></div>
			<div class="goodsBox_1">
				<!-- 循环开始 -->
				<c:forEach items="${frontList}" var="cate">
					<div class="xm-box">
						<h4 class="title">
							<span>${cate.catename}</span> <a class="more" href="index/cate.action?id=${cate.cateid }">查看更多</a>
						</h4>
						<div class="blank"></div>
						<div id="show_new_area" class="clearfix">
							<!-- 循环开始 -->
							<c:forEach items="${cate.goodsList}" var="goods">
								<div class="goodsItem">
									<a href="index/detail.action?id=${goods.goodsid}"><img src="${goods.image }" alt="${goods.goodsname }"
										class="goodsimg" /> </a> <br />
									<p class="f1">
										<a href="index/detail.action?id=${goods.goodsid}" title="${goods.goodsname }">${goods.goodsname }</a>
									</p>
									价格： <font class="f1"> ￥${goods.price }元 </font>
								</div>
							</c:forEach>
							<!-- 循环结束 -->
						</div>
					</div>
					<div class="blank"></div>
				</c:forEach>
				<!-- 循环结束 -->
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
