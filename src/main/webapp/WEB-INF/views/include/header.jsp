<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- fontawesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous" />

<!-- jQuery -->
<!-- <script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script> -->

<!-- style sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/page/default1.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/page/header.css" />

<!-- animate 효과 링크 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<!-- <script>
	$(function() {
		var $header = $('header'); //헤더를 변수에 넣기
		var $page = $('.page-start'); //색상이 변할 부분
		var $window = $(window);
		var pageOffsetTop = $page.offset().top;//색상 변할 부분의 top값 구하기

		$window.resize(function() { //반응형을 대비하여 리사이즈시 top값을 다시 계산
			pageOffsetTop = $page.offset().top;
		});

		$window.on('scroll', function() { //스크롤시
			var scrolled = $window.scrollTop() >= pageOffsetTop; //스크롤된 상태; true or false
			$header.toggleClass('down', scrolled); //클래스 토글
		});
	});
</script> -->
</head>
<body>
	<header id="header">
		<div class="container inner">
			<div class="content">
				<nav class="navbar">
					<div class="navbar_logo">
						<a href="${pageContext.request.contextPath}/index"><span
							class="logo">PERFITZZ</span></a>
					</div>
					<div class="nav_menu">
						<ul class="navbar_icons">
							<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
							<li><a href="#"><i class="far fa-user"></i></a></li>
							<li><a href="#" class="navbar_togglebtn"><i
									class="fas fa-bars"></i></a></li>
						</ul>
						<ul class="navbar_menu">

							<c:if test="${member == null}">
								<li><a
									href="${pageContext.request.contextPath}/member/signin"><span
										class="nav">로그인</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/member/signup"><span
										class="nav">회원가입</span></a></li>
								<li><a href="${pageContext.request.contextPath}/gallery"><span
										class="nav">갤러리</span></a></li>
								<li><a href="${pageContext.request.contextPath}/about"><span
										class="nav">about</span></a></li>
							</c:if>
							<c:if test="${member != null}">

								<c:if test="${member.verify == 9}">
									<li><a
										href="${pageContext.request.contextPath}/admin/index"><span
											class="nav">관리자 화면</span></a></li>
								</c:if>

								<li>${member.userName}님 환영합니다.</li>
								<li><a href="${pageContext.request.contextPath}/gallery"><span
										class="nav">갤러리</span></a></li>
								<li><a href="${pageContext.request.contextPath}/about"><span
										class="nav">about</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/bbs/bbsmain"><span
										class="nav">게시판</span></a></li>

								<li><a
									href="${pageContext.request.contextPath}/shop/cartList"><span
										class="nav">카트 리스트</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/shop/orderList"><span
										class="nav">주문 리스트</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/member/signout"><span
										class="nav">로그아웃</span></a></li>
							</c:if>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>

</body>
</html>
