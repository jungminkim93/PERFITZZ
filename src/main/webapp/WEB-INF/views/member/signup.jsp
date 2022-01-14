
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
	/* height: 70vh; */
	display: flex;
	justify-content: center;
	align-items: center;
}

/* .registerForm {
	position: absolute;
	width: 300px;
	height: auto;
	padding: 30px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
} */
.registerForm {
	margin: 0 auto;
	width: 400px;
	height: auto;
	padding: 100px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	border-radius: 15px;
}

.registerForm h2 {
	text-align: center;
	margin: 30px;
	padding-top: 30px;
}

.inputForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
	display: flex;
}

.info {
	width: 50%;
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

label {
	font-size: 10px;
	min-width: 10%;
	
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
						class="registerForm">
						<h2>회원가입</h2>
						<div class="input_area inputForm">
							<label for="userId">아이디 : </label> <input type="email"
								id="userId" name="userId" placeholder="example@email.com"
								required="required" value="aaa@aaa.com" class="info" />
						</div>

						<div class="input_area inputForm">
							<label for="userPass">패스워드 : </label> <input type="password"
								id="userPass" name="userPass" required="required" value="aaaa"
								class="info" />
						</div>
						<div class="input_area inputForm">
							<label for="userPassCk">패스워드 확인 : </label> <input type="password"
								id="userPassCk" name="userPassCk" required="required"
								value="aaaa" class="info" />
						</div>

						<div class="input_area inputForm">
							<label for="userName">닉네임 : </label> <input type="text"
								id="userName" name="userName" placeholder="닉네임을 입력해주세요"
								required="required" value="미니2" class="info" />
						</div>

						<div class="input_area inputForm">
							<label for="userPhone">연락처 : </label> <input type="text"
								id="userPhone" name="userPhone" placeholder="연락처를 입력해주세요"
								required="required" value="01000000000" class="info" />
						</div>

						<div class="input_area inputForm">
							<label for="userAddr1">주소1 : </label> <input type="text"
								id="userAddr1" name="userAddr1" placeholder="주소1 입력해주세요"
								required="required" value="주소1" class="info" />
						</div>

						<div class="input_area inputForm">
							<label for="userAddr3">주소2 : </label> <input type="text"
								id="userAddr2" name="userAddr2" placeholder="주소2 입력해주세요"
								required="required" value="주소2" class="info" />
						</div>

						<div class="input_area inputForm">
							<label for="userAddr3">주소3 : </label> <input type="text"
								id="userAddr3" name="userAddr3" placeholder="주소3 입력해주세요"
								required="required" value="주소3" class="info" />
						</div>

						<button type="submit" id="signup_btn" name="signup_btn"
							id="signin_btn" class="btn">회원가입</button>

					</form>
				</div>
			</div>
		</section>
	</div>

	<script>
		const form = document.getElementById("form");

		document.getElementById("signup_btn").addEventListener("click",
				function(e) {
					let pw = document.getElementById("userPass").value;
					let pwd = document.getElementById("userPassCk").value;

					if (pw != pwd) {
						alert("패스워드가 일치하지 않습니다.");
						return false;
					} else {
						form.submit();
					}
				});
	</script>

	<%@ include file="../include/footer.jsp"%>

</body>
</html>
