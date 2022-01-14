<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
li {
	font-size: 16px;
	text-align: center;
}

li a {
	color: #000;
	display: block;
	padding: 10px 0;
}

li a:hover {
	text-decoration: none;
	background: #eee;
}

li {
	position: relative;
}

li:hover {
	background: #eee;
}

li>ul.low {
	display: none;
	position: absolute;
	top: 0;
	left: 180px;
}

li:hover>ul.low {
	display: block;
}

li:hover>ul.low li a {
	background: #eee;
	border: 1px solid #eee;
}

li:hover>ul.low li a:hover {
	background: #fff;
}

li>ul.low li {
	width: 180px;
}
</style>
<ul>
	<li><a href="${pageContext.request.contextPath}/admin/goods/register">상품 등록</a></li>
	<li><a href="${pageContext.request.contextPath}/admin/goods/list">상품 목록</a></li>
	<li><a href="${pageContext.request.contextPath}/admin/shop/orderList">주문 목록</a></li>
	
	<li><a href="${pageContext.request.contextPath}/admin/shop/allReply">상품 소감</a></li>
	
	<li><a href="">유저 목록</a></li>
</ul>