<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="index/index.action">首页</a>
			<code> &gt; </code>
			订单评价
		</div>
	</div>
	<div class="blank"></div>

	<div class="blank"></div>
	<div class="block clearfix">

		<div class="AreaL">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox">
						<jsp:include page="usermenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>


		<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox boxCenterList clearfix" style="_height: 1%;">

						<h5>
							<span>订单评价</span>
						</h5>
						<div class="blank"></div>
						<form action="index/addTopic.action" name="myform" method="post">
							<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
								<thead>
									<tr align="center" bgcolor="#ffffff">
										<th>商品</th>
										<th>评分</th>
										<th>内容</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${itemsList}" var="orders" varStatus="st">
										<tr align="center" bgcolor="#ffffff">
											<td><a href="index/detail.action?id=${orders.goodsid }"><font color="black">${orders.goodsname }</font></a></td>
											<td><input type="radio" name="tnum_${st.index}" id="tnum" value="1"><img
												src="themes/ecmoban_jumei/images/stars1.gif" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
												name="tnum_${st.index}" id="tnum" value="2"><img src="themes/ecmoban_jumei/images/stars2.gif" />
												&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="tnum_${st.index}" id="tnum" value="3"><img
												src="themes/ecmoban_jumei/images/stars3.gif" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
												name="tnum_${st.index}" id="tnum" value="4"><img src="themes/ecmoban_jumei/images/stars4.gif" />
												&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="tnum_${st.index}" id="tnum" value="5" checked><img
												src="themes/ecmoban_jumei/images/stars5.gif" /></td>
											<td><textarea rows="" cols="" name="contents_${st.index}"></textarea></td>
										</tr>
									</c:forEach>
								</tbody>
								<tr align="center" bgcolor="#ffffff">
									<td colspan="3" align="center" bgcolor="#FFFFFF"><input type="hidden" name="id" value="${id }"> <input
										type="submit" class="bnt_blue_1" style="border: none;" value="订单评价" /></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="blank"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
