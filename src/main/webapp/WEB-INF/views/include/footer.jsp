<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!--google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet" />

    <!-- fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous" />

    <!-- jQuery -->
   <script type="text/javascript" src="${pageContext.request.contextPath}resources/js/jquery-3.6.0.min.js"></script>

    <!-- style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/page/default1.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/page/footer.css" />

    <!-- animate 효과 링크 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

</head>
<body>
   <footer>
        <div class="container">
            <div class="content">
                <div class="firstFooter">
                    <div class="conts">
                        <ul class="list-menu">
                            <li><a href="${pageContext.request.contextPath}/about">회사소개</a></li>
                            <li class="line">|</li>
                            <li><a href="${pageContext.request.contextPath}/reservation">매장 방문 예약하기</a></li>
                            <li class="line">|</li>
                            <li><a href="${pageContext.request.contextPath}/codination">코디네이션 하기</a></li>
                            <li class="line">|</li>
                            <li><a href="${pageContext.request.contextPath}/bbs">게시판</a></li>
                            <li class="line">|</li>
                            <li><a href="#">마이페이지</a></li>
                            <li class="line">|</li>
                            <li><a href="${pageContext.request.contextPath}/admin/index">관리자 화면</a></li>
                        </ul>
                       <!--  <div class="portfolio">
                            <select name="portfolio" id="portfolio" title="portfolio">
                                <option value="portfolio">
                                    PORTFOLIO
                                </option>
                                <option value="portfolio4">PORTFOLIO1</option>
                                <option value="portfolio4">PORTFOLIO2</option>
                                <option value="portfolio4">PORTFOLIO3</option>
                                <option value="portfolio4">PORTFOLIO4</option>
                            </select>
                        </div> -->
                    </div>
                </div>
                <div class="secondFooter">
                    <div class="logoWord">
                        <div class="inner">
                            <a href="${pageContext.request.contextPath}/index" title="PERFITZZ HOME"><span class="logo">PERFITZZ</span></a>
                            <p><span class="exp">THE PERFECT FIT FOR YOUR LIFE</span></p>
                        </div>
                    </div>
                    <div class="info">
                        <h2>PERFITZZ</h2>
                        <p>대표이사: 김정민</p>
                        <p>주소: 경상남도 창원시 성산구</p>
                        <p>이메일: jungmink_im@naver.com</p>
                        <p>연락처: 010-2462-6423</p>
                    </div>
                    <div class="rights">
                        <p><a href="#">이용약관</a></p>
                        <p><a href="#">개인정보처리방침</a></p>
                        <p><a href="#">청소년보호방침</a></p>
                        <p><a href="#">영상정보처리기기 운영/관리 방침</a></p>
                        <p><a href="#">이메일무단수집거부</a></p>
                    </div>
                </div>
                <div class="thirdFooter">
                    Copyright ⓒPERFITZZ. All Rights Reserved
                </div>
            </div>
        </div>
        <div class="arrowTop">
            <div class="arrow slide-top">
                <a href="${pageContext.request.contextPath}/member/signin" title="내 정보" class="side"><i class="far fa-user"></i></a>
            </div>
            <div class="arrow slide-top">
                <a href="${pageContext.request.contextPath}/shop/cartList"><i class="fas fa-shopping-cart"></i></a>
            </div>
            <div class="arrow slide-top">
                <a href="#top" title="위로 올라가기" class="side"><i class="fas fa-arrow-circle-up"></i></a>
            </div>
        </div>
    </footer>
</body>
</html>