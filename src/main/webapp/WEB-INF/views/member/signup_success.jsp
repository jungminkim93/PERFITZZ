
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
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="section1">
		<section id="sec1" class="background">
			<div class="container">
				<div class="content">
					<h1>회원 가입에 성공 했음</h1>
					<h2>다시 로그인 해</h2>
					<a href="${pageContext.request.contextPath}/member/signin">로그인하러가기</a>

				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp"%>

</body>
</html>
