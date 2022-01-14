<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.aside li {
	font-size: 16px;
	text-align: center;
}

.aside li a {
	color: #000;
	display: block;
	padding: 10px 0;
}

.aside li a:hover {
	text-decoration: none;
	background: #eee;
}

.aside li {
	position: relative;
}

.aside li:hover {
	background: #eee;
}

.aside li>ul.low {
	display: none;
	position: absolute;
	top: 0;
	left: 180px;
}

.aside li:hover>ul.low {
	display: block;
}

.aside li:hover>ul.low li a {
	background: #eee;
	border: 1px solid #eee;
}

.aside li:hover>ul.low li a:hover {
	background: #fff;
}

.aside li>ul.low li {
	width: 180px;
}
</style>

<h3>카테고리</h3>
<div class="aside">
<ul>
	<li><a href="${pageContext.request.contextPath}/shop/list?c=100&l=1">상의</a>
	
		<ul class="low">
			<li><a href="${pageContext.request.contextPath}/shop/list?c=101&l=2">스웨터</a></li>
			<li><a href="${pageContext.request.contextPath}/shop/list?c=102&l=2">셔츠</a></li>
		</ul>
		
	</li>
	<li><a href="${pageContext.request.contextPath}/shop/list?c=200&l=1">하의</a>
	
		<ul class="low">
			<li><a href="${pageContext.request.contextPath}/shop/list?c=201&l=2">모직바지</a></li>
			<li><a href="${pageContext.request.contextPath}/shop/list?c=202&l=2">미디스커트</a></li>
		</ul>
		
		</li>
	<li><a href="${pageContext.request.contextPath}/shop/list?c=300&l=1">가방</a>
	
		<ul class="low">
			<li><a href="${pageContext.request.contextPath}/shop/list?c=301&l=2">레이디디올</a></li>
			<li><a href="${pageContext.request.contextPath}/shop/list?c=302&l=2">엘메</a></li>
		</ul>
		
		</li>
	<li><a href="${pageContext.request.contextPath}/shop/list?c=400&l=1">신발</a>
	
		<ul class="low">
			<li><a href="${pageContext.request.contextPath}/shop/list?c=401&l=2">지미추</a></li>
			<li><a href="${pageContext.request.contextPath}/shop/list?c=402&l=2">마놀로블라닉</a></li>
		</ul>
		
		</li>
</ul>
</div>