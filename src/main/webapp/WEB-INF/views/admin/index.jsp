<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>admin</title>

<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery-3.3.1.min.js"></script>
<!--google font -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.js"></script>

<!-- style sheet -->
<link rel="stylesheet" href="resources/css/page/default1.css" />
<link rel="stylesheet" href="resources/css/page/index.css" />

<style>
section#container {
	padding: 20px 0;
	border-top: 2px solid #eee;
	border-bottom: 2px solid #eee;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

aside {
	float: left;
	width: 200px;
}

div#container_box {
	float: right;
	width: calc(100% - 200px - 20px);
}

aside ul li {
	text-align: center;
	margin-bottom: 10px;
}

aside ul li a {
	display: block;
	width: 100%;
	padding: 10px 0;
}

aside ul li a:hover {
	background: #eee;
}
</style>

</head>
<body>

	<%@ include file="include/header.jsp"%>

	<div class="section6">
		<section id="sec6">
			<div class="container">
				<div class="content">
					<aside>
						<%@ include file="include/aside.jsp"%>
					</aside>
					<div id="container_box">본문 영역</div>
				</div>
			</div>
		</section>
	</div>


	<%@ include file="include/footer.jsp"%>



</body>
</html>
