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
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

<!-- fontawesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous" />

<!-- jQuery -->
<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>

<!-- style sheet -->
<link rel="stylesheet" href="resources/css/page/default1.css" />
<link rel="stylesheet" href="resources/css/page/index.css" />

<!-- animate 효과 링크 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<!-- 신상품 슬라이드용 링크-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<!-- 지도 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0cc3752f1f472ea390e9e16bd4d5f29a"></script>
<!--header 색상 변경-->
<script>
      /*   $(function () {
            var $header = $('header'); //헤더를 변수에 넣기
            var $page = $('.page-start'); //색상이 변할 부분
            var $window = $(window);
            var pageOffsetTop = $page.offset().top;//색상 변할 부분의 top값 구하기

            $window.resize(function () { //반응형을 대비하여 리사이즈시 top값을 다시 계산
                pageOffsetTop = $page.offset().top;
            });

            $window.on('scroll', function () { //스크롤시
                var scrolled = $window.scrollTop() >= pageOffsetTop; //스크롤된 상태; true or false
                $header.toggleClass('down', scrolled); //클래스 토글
            });
        });
         */
        <!-- top 상품 슬라이드ㄹ -->
        $(function () {
                let slides = document.querySelector(".slides");
                let slideImg = document.querySelectorAll(".slides li");
                currentIdx = 0;
                slideCount = slideImg.length;
                prev = document.querySelector(".prev");
                next = document.querySelector(".next");
                slideWidth = 1200; slideMargin = 100;
                slides.style.width = (slideWidth + slideMargin) * slideCount + "px";

                function moveSlide(num) { // 왼쪽으로 400px씩 이동
                    slides.style.left = -num * 1200 + "px"; currentIdx = num;
                } prev.addEventListener('click', function () { // 첫 번째 슬라이드로 표시 됐을때는 이전 버튼 눌러도 아무런 반응 없게 하기 위해 // currentIdx !==0일때만 moveSlide 함수 불러옴 
                    if (currentIdx !== 0) moveSlide(currentIdx - 1);
                }); next.addEventListener('click', function () { // 마지막 슬라이드로 표시 됐을때는 다음 버튼 눌러도 아무런 반응 없게 하기 위해 // currentIdx !==slideCount - 1 일때만 moveSlide 함수 불러옴 
                    if (currentIdx !== slideCount - 1) moveSlide(currentIdx + 1);
                })
        });
    </script>



</head>
<body>
	<%@ include file="include/header.jsp" %>

	<!--main 1번쨰  여자 모델 걷는 것-->
	<div class="section1" id="top">
		<section id="sec1" class="img_wrap">
			<img class="img1" src="resources/img/bg/main.jpg" alt="photo">
			<!-- <img class="img2" src="resources/img/bg/model.gif"> -->
			<div class="bottomOuter">
				<div class="bottomInner">
					<span class="bottomWord">the Perfect Fit</span>
				</div>
			</div>
		</section>

		<!--ㅡmain 2번째. 사진 밑의 작은 바. 회원가입 링크 보유-->
		<section id="sec1_bottom" class="page-start">
			<div class="container ">
				<div class="content">
					<div>
						<span class="wait">PERFITZZ Codinating consultant <br>
							waiting just for you
						</span>
					</div>
					<div>
						<a href="#" title="회원가입 하러가기">
							<div class="join">
								<span>J</span><span>O</span><span>I</span><span>N</span><span>&nbsp;</span><span>U</span><span>S</span><span>&nbsp;</span><span>N</span><span>O</span><span>W</span><span>&nbsp;</span><span>></span><span>></span><span>></span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>



	<!-- main 2번쨰 best-codination 슬라이드 -->
	<div class="section2">
		<section id="sec2">
			<div class="container">
				<div class="content">
					<div class="title">
						<h1>TOP CODINATION</h1>
						<h3>OF THIS WEEK</h3>
					</div>
					<div class="slide">
						<input type="radio" name="pos" id="pos1" checked> <input
							type="radio" name="pos" id="pos2"> <input type="radio"
							name="pos" id="pos3"> <input type="radio" name="pos"
							id="pos4">
						<ul class="seperate">
							<li class="seperate">
								<div class="img">
									<img src="resources/img/gallery/1.jpg" alt="">
								</div>
								<div class="exp">
									<h3
										class="animate__animated animate__flash animate__infinite animate__slower">
										#1 TOP SELLING CODINATAION</h3>
									<h1>
										THE PERFECT WEAR FOR YOUR <br> HOLIDAY SCENE
									</h1>
									<p>
										You will know why this is the best-selling codination.<br>
										From top to bottom, everything is just PERFECT.<br> Never
										miss this opprotunity! Maybe, someone will ask you out!
									</p>
									<button>BUY NOW</button>
								</div>
							</li>
							<li class="seperate">
								<div class="img">
									<img src="resources/img/gallery/1.jpg" alt="">
								</div>
								<div class="exp">
									<h3
										class="animate__animated animate__flash animate__infinite animate__slower">#2
										TOP SELLING CODINATAION</h3>
									<h1>
										THE PERFECT WEAR FOR YOUR <br> HOLIDAY SCENE
									</h1>
									<p>
										You will know why this is the best-selling codination.<br>
										From top to bottom, everything is just PERFECT.<br> Never
										miss this opprotunity! Maybe, someone will ask you out!
									</p>
									<button>BUY NOW</button>
								</div>
							</li>
							<li class="seperate">
								<div class="img">
									<img src="resources/img/gallery/1.jpg" alt="">
								</div>
								<div class="exp">
									<h3
										class="animate__animated animate__flash animate__infinite animate__slower">#3
										TOP SELLING CODINATAION</h3>
									<h1>
										THE PERFECT WEAR FOR YOUR <br> HOLIDAY SCENE
									</h1>
									<p>
										You will know why this is the best-selling codination.<br>
										From top to bottom, everything is just PERFECT.<br> Never
										miss this opprotunity! Maybe, someone will ask you out!
									</p>
									<button>BUY NOW</button>
								</div>
							</li>
							<li class="seperate">
								<div class="img">
									<img src="resources/img/gallery/1.jpg" alt="">
								</div>
								<div class="exp">
									<h3
										class="animate__animated animate__flash animate__infinite animate__slower">#4
										TOP SELLING CODINATAION</h3>
									<h1>
										THE PERFECT WEAR FOR YOUR <br> HOLIDAY SCENE
									</h1>
									<p>
										You will know why this is the best-selling codination.<br>
										From top to bottom, everything is just PERFECT.<br> Never
										miss this opprotunity! Maybe, someone will ask you out!
									</p>
									<button>BUY NOW</button>
								</div>
							</li>
						</ul>
						<p class="bullet">
							<label for="pos1">1</label> <label for="pos2">2</label> <label
								for="pos3">3</label> <label for="pos4">4</label>
						</p>
					</div>





				</div>

			</div>
	</div>




	<!-- main 3번쨰 top review -->
	<div class="section3">

		<section id="sec3">
			<div class="container">
				<div class="content">


					<div class="title">
						<h1>Top Reviews of the Week</h1>
						<p>From those who loves Perfitzz.. Writing a honest review
							helps us, and our customers alot! Please share your experiences
							with us. If you are selected as ‘the best reviewer’, you can earn
							$100!</p>
					</div>
					<div class="bottom">
						<div class="review">
							<div class="box review1">
								<div class="nameRate">
									<div class="name">Jimmy Kim</div>
									<div class="star-ratings">
										<div class="star-ratings-fill space-x-2 text-lg"
											:style="{ width: ratingToPercent + '%' }">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
										<div class="star-ratings-base space-x-2 text-lg">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
									</div>
									<script>
                                        ratingToPercent() {
                                            const score = +this.restaurant.averageScore * 20;
                                            return score + 1.5;
                                        }
                                    </script>
								</div>
								<div class="comment">This was such a staple for me in the
									fall. Living in Minnesota we have very cold winters, and this
									being thick made it perfect to dress up or dress down. Are
									usually in between a small and a medium, and I stayed with a
									small and it fit oversized just like I would want it to. And
									you definitely don’t need to size up to get that look. It isn’t
									super soft, but I also didn’t find myself being itchy either.
									Definitely want to purchase and other colors.</div>
							</div>
							<div class="box review2">
								<div class="nameRate">
									<div class="name">Jimmy Kim</div>
									<div class="star-ratings">
										<div class="star-ratings-fill space-x-2 text-lg"
											:style="{ width: ratingToPercent + '%' }">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
										<div class="star-ratings-base space-x-2 text-lg">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
									</div>
								</div>
								<div class="comment">This was such a staple for me in the
									fall. Living in Minnesota we have very cold winters, and this
									being thick made it perfect to dress up or dress down. Are
									usually in between a small and a medium, and I stayed with a
									small and it fit oversized just like I would want it to. And
									you definitely don’t need to size up to get that look. It isn’t
									super soft, but I also didn’t find myself being itchy either.
									Definitely want to purchase and other colors.</div>
							</div>
							<div class="box review3">
								<div class="nameRate">
									<div class="name">Jimmy Kim</div>
									<div class="star-ratings">
										<div class="star-ratings-fill space-x-2 text-lg"
											:style="{ width: ratingToPercent + '%' }">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
										<div class="star-ratings-base space-x-2 text-lg">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
									</div>
								</div>
								<div class="comment">This was such a staple for me in the
									fall. Living in Minnesota we have very cold winters, and this
									being thick made it perfect to dress up or dress down. Are
									usually in between a small and a medium, and I stayed with a
									small and it fit oversized just like I would want it to. And
									you definitely don’t need to size up to get that look. It isn’t
									super soft, but I also didn’t find myself being itchy either.
									Definitely want to purchase and other colors.</div>
							</div>
							<div class="box review4">
								<div class="nameRate">
									<div class="name">Jimmy Kim</div>
									<div class="star-ratings">
										<div class="star-ratings-fill space-x-2 text-lg"
											:style="{ width: ratingToPercent + '%' }">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
										<div class="star-ratings-base space-x-2 text-lg">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
									</div>
								</div>
								<div class="comment">This was such a staple for me in the
									fall. Living in Minnesota we have very cold winters, and this
									being thick made it perfect to dress up or dress down. Are
									usually in between a small and a medium, and I stayed with a
									small and it fit oversized just like I would want it to. And
									you definitely don’t need to size up to get that look. It isn’t
									super soft, but I also didn’t find myself being itchy either.
									Definitely want to purchase and other colors.</div>
							</div>
							<script>
                                $(document).ready(function () {
                                    var boxTime = 600;

                                    $('.review1').animate({
                                        opacity: '1'
                                    }, boxTime, function () {
                                        $('.review2').animate({
                                            opacity: '1'
                                        }, boxTime, function () {
                                            $('.review3').animate({
                                                opacity: '1'
                                            }, boxTime, function () {
                                                $('.review4').animate({
                                                    opacity: '1'
                                                });

                                            });
                                        });
                                    }),
                                });
                            </script>
						</div>
						<div class="image">
							<div class="border"></div>
							<img src="resources/img/shoes/shoe1.jpg" alt="shoe1">
						</div>
					</div>







				</div>
			</div>
		</section>
	</div>



	<!-- main 중간에 옷 아이콘으로 나누기 용-->
	<div class="section4">
		<img src="resources/img/icon/dress2.png" alt="">
	</div>



	<!-- main 쿠폰 공 튕기기 -->

	<div class="section5_1">
		<div class="section5">
			<section id="secs5">
				<div class="container">
					<div class="content">

						<div class="word">
							<div class="line1">
								Earn a discount coupon for<br> New Arrivals
							</div>
							<div class="line2">30% OFF</div>
							<div>
								<div class="line3">Select from new Arrival Items and type
									in the coupon code when checking out.</div>
								<div class="line4">Click the ball to earn the coupon</div>
							</div>
						</div>




					</div>
				</div>
			</section>
		</div>

	</div>



	<!-- 신상 슬라이드 -->

	<!-- 신상 슬라이드 -->

	<div class="section6">
		<section id="sec6">
			<div class="container">
				<div class="content">
					<div class="word">
						<h1>NEW ARRIVALS</h1>
						<h3>
							COME AND HAVE A LOOK!</br> We’ve got these for ya!
						</h3>
					</div>

					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide box1">
								<form action="#">
									<div class="new">NEW</div>
									<img src="resources/img/bottom/skirt1_1.png" alt="">
									<div class="name">TWINKLE TTWINKLE MOONLIGHT</div>
									<div class="price">$160</div>
									<button type="button">Add to Cart</button>
								</form>
							</div>
							<div class="swiper-slide box1">
								<form action="#">
									<div class="new">NEW</div>
									<img src="resources/img/bottom/skirt1_1.png" alt="">
									<div class="name">TWINKLE TTWINKLE MOONLIGHT</div>
									<div class="price">$160</div>
									<button type="button">Add to Cart</button>
								</form>
							</div>
							<div class="swiper-slide box1">
								<form action="#">
									<div class="new">NEW</div>
									<img src="resources/img/bottom/skirt1_1.png" alt="">
									<div class="name">TWINKLE TTWINKLE MOONLIGHT</div>
									<div class="price">$160</div>
									<button type="button">Add to Cart</button>
								</form>
							</div>
							<div class="swiper-slide box1">
								<form action="#">
									<div class="new">NEW</div>
									<img src="resources/img/bottom/skirt1_1.png" alt="">
									<div class="name">TWINKLE TTWINKLE MOONLIGHT</div>
									<div class="price">$160</div>
									<button type="button">Add to Cart</button>
								</form>
							</div>
							<div class="swiper-slide box1">
								<form action="#">
									<div class="new">NEW</div>
									<img src="resources/img/bottom/skirt1_1.png" alt="">
									<div class="name">TWINKLE TTWINKLE MOONLIGHT</div>
									<div class="price">$160</div>
									<button type="button">Add to Cart</button>
								</form>
							</div>
							<div class="swiper-slide box1">
								<form action="#">
									<div class="new">NEW</div>
									<img src="resources/img/bottom/skirt1_1.png" alt="">
									<div class="name">TWINKLE TTWINKLE MOONLIGHT</div>
									<div class="price">$160</div>
									<button type="button">Add to Cart</button>
								</form>
							</div>
						</div>

						<div class="swiper-button-next button">
							<i class="fas fa-chevron-right"></i>
						</div>
						<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
						<div class="swiper-button-prev button">
							<i class="fas fa-chevron-left"></i>
						</div>
						<!-- 이전 버튼 -->

						<!-- 페이징 -->
						<div class="swiper-pagination"></div>

					</div>


				</div>
			</div>
		</section>
	</div>
	<!-- 신상품 슬라이드 swiper 사용 -->
	<script>
        new Swiper('.swiper-container', {

            slidesPerView: 4,
            slidesPerGroup: 4,
            observer: true,
            observeParents: true,
            spaceBetween: 24,
            // 그룹수가 맞지 않을 경우 빈칸으로 메우기
            // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
            loopFillGroupWithBlank: true,
            loop: true, // 무한 반복
            autoplay: { delay: 6000 },
            autoplayDisableOnInteraction: true,
            pagination: { // 페이징
                el: '.swiper-pagination',
                clickable: true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
                type: 'progressbar', // And if we need scrollbar 진행바
            },
            navigation: { // 네비게이션
                nextEl: '.fa-chevron-right', // 다음 버튼 클래스명
                prevEl: '.fa-chevron-left', // 이번 버튼 클래스명
            },

            // 반응형
            breakpoints: {
                900: {
                    slidesPerView: 3,
                    slidesPerGroup: 3,
                },
                400: {
                    slidesPerView: 1,
                    slidesPerGroup: 1,
                },

            }
        });
    </script>




	<!-- 연락처 -->
	<div class="section7">
		<section id="sec7">
			<div class="container">
				<div class="content">

					<section class="contact">
						<div class="contact-information">

							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-map-marker-alt"></i>
								</div>
								<div class="contact-text">
									<h3>Address</h3>
									<p>대한민국</p>
								</div>
							</div>


							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-phone-alt"></i>
								</div>
								<div class="contact-text">
									<h3>Call</h3>
									<p>010-2462-6423</p>
								</div>
							</div>

							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-envelope"></i>
								</div>
								<div class="contact-text">
									<h3>Email</h3>
									<p>jungmink_im@naver.com</p>
								</div>
							</div>

							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-share"></i>
								</div>
								<div class="contact-text">
									<h3>contact us!</h3>
									<div class="contact-social">
										<a href="https://www.instagram.com/jungminki_m/"><i
											class="fab fa-instagram"></i></a> <a href=""><i
											class="fas fa-sms"></i></a> <a
											href="mailto:jungmink_im@naver.com"><i class="fas fa-at"></i></a>
									</div>
								</div>
							</div>
						</div>

						<div class="contact-form">
							<div id="map" style="width: 500px; height: 400px;"></div>
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0cc3752f1f472ea390e9e16bd4d5f29a"></script>
							<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.19860085660598, 128.70273139761844), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨128.6402609, 35.2538433
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(35.19860085660598, 128.70273139761844); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">PERFITZZ <br><a href="https://map.kakao.com/link/map/PERFITZZ,35.19860085660598, 128.70273139761844" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/PERFITZZ,35.19860085660598, 128.70273139761844" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(35.19860085660598, 128.70273139761844); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>


							<div class="email">
								<div id="success"></div>
								<form name="sentMessage"
									action="mailto:jessicasla@nate.com?subject=회원 가입"
									enctype="text/plain" method="post" id="contactForm"
									novalidate="novalidate">
									<div class="control-group">
										<input type="text" class="form-control" id="name"
											placeholder="Your Name" required="required"
											data-validation-required-message="Please enter your name" />
										<p class="help-block text-danger"></p>
									</div>
									<div class="control-group">
										<input type="email" class="form-control" id="email"
											placeholder="Your Email" required="required"
											data-validation-required-message="Please enter your email" />
										<p class="help-block text-danger"></p>
									</div>
									<div class="control-group">
										<input type="text" class="form-control" id="subject"
											placeholder="Subject" required="required"
											data-validation-required-message="Please enter a subject" />
										<p class="help-block text-danger"></p>
									</div>
									<div class="control-group">
										<textarea class="form-control" id="message"
											placeholder="Message" required="required"
											data-validation-required-message="Please enter your message"></textarea>
										<p class="help-block text-danger"></p>
									</div>
									<div class="button">
										<button class="btn" type="submit" id="sendMessageButton">Send
											Message</button>
									</div>
								</form>
							</div>
						</div>
					</section>
				</div>
			</div>
		</section>
	</div>

<%@ include file="include/footer.jsp" %>
</body>
</html>