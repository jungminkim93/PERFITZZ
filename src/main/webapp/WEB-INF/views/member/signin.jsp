
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--google font -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

<!-- style sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/page/default1.css" />
<style type="text/css">
.section1 .background {
	background:
		url("${pageContext.request.contextPath}/../img/bg/about.jpg")
		no-repeat;
	background-size: cover;
	height: 70vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* * {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	font-family: sans-serif;
} */

body {
	background-image: #34495e;
}

.loginForm {
	position: absolute;
	width: 300px;
	height: 400px;
	padding: 30px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
}

.loginForm h2 {
	text-align: center;
	margin: 30px;
}

.inputForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}


.id {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.pw {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btn:hover {
	background-position: right;
}

.bottomText {
	text-align: center;
}

.bottomText a {
	color: #89b8b3;
}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="section1">
		<section id="sec1" class="background">
			<div class="container">
				<div class="content">





					<form role="form" method="post" autocomplete="off"
						class="loginForm">
						<h2>Login</h2>
						<div class="input_area inputForm">
							<input type="email" name="userId" class="id"
								required="required" value="aaa@aaa.com" autofocus/>
						</div>

						<div class="input_area inputForm">
							<input type="password" class="pw" name="userPass"
								required="required" value="aaaa" />
						</div>

						<button type="submit" class="btn" id="signin_btn"
							name="signin_btn">로그인</button>
							
						<div class="bottomText">
							Don't you have ID? <a
								href="${pageContext.request.contextPath}/member/signup">sign
								up</a>
						</div>

						<c:if test="${msg == false}">
							<p style="color: #f00;">로그인에 실패했습니다.</p>
						</c:if>



					</form>







					<h1>관리자 aaa@aaa.com aaaa</h1>
					<h1>고객 min@gmail.com 1111</h1>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp"%>

</body>
</html>
