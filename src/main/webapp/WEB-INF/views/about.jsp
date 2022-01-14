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
   <script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>

    <!-- style sheet -->
    <link rel="stylesheet" href="resources/css/page/default1.css" />
        <link rel="stylesheet" href="resources/css/page/about.css" />

    <!-- animate 효과 링크 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
      <script>
       
        
        <!--scoreBoard 숫자 증가 애니메이션-->
        $(function () {
            var count0 = count1 = count2 = count3 = 0;

            timeCounter();

            function timeCounter() {

              id0 = setInterval(count0Fn, 10);

              function count0Fn() {
                count0++;
                if (count0 > 325) {
                  clearInterval(id0);
                } else {
                  $(".number").eq(0).text(count0);
                }

              }

              id1 = setInterval(count1Fn, 5);

              function count0Fn() {
                count1++;
                if (count1 > 856) {
                  clearInterval(id1);
                } else {
                  $(".number").eq(1).text(count1);
                }

              }

              id2 = setInterval(count2Fn, 10);

              function count2Fn() {
                count2++;
                if (count2 > 253) {
                  clearInterval(id2);
                } else {
                  $(".number").eq(2).text(count2);
                }
              }

              id3 = setInterval(count3Fn, 10);

              function count1Fn() {
                count3++;
                if (count3 > 182) {
                  clearInterval(id3);
                } else {
                  $(".number").eq(3).text(count3);
                }
              }


            }
          });
    </script>
  



</head>
<body>
	<%@ include file="include/header.jsp" %>

<!-- about1 배경이미지 -->
  <div class="section1" id="top">
    <section class="background">
    <!--  <img class="img" src="resources/img/bg/about.jpg" alt="photo">  -->
      <div class="word">
        <div class="title">ABOUT US</div>
        <div class="exp">
          Thanks again for vising us! We appreciate your interest on us.
          <br />
          Since the foundation, we have been working hard to satisfy our
          customer’s standards.
        </div>
      </div>
    </section>
  </div>

  <!-- about2 상단 페이지 이동 링크-->
  <div class="section2 page-start">
    <div class="container">
      <div class="content">
        <a href="#">HOME</a><span>></span><a href="#">ABOUT</a>
      </div>
    </div>
  </div>

  <div class="section3">
    <section id="sec3">
      <div class="container">
        <div class="content">
          <div class="word">
            <h1>WHAT DOES PERFITZZ DO?</h1>
            <h2>THE #1 TOP SALES IN CATEGORY</h2>
            <p>
              We provide the best service to our customers. Among our
              competitors, no company can follow our services. Providing the
              best service ain’t easy. However we always think for the
              customers and try to find the answer.
            </p>
            <br />
            <p>
              Our moto is ‘For the customer satisfaction’. We don’t exist
              unless our customer visits or have an interest on us. Never
              forget the thankfulness. That’s what we work for. To return your
              loves.
            </p>
          </div>

          <div class="chart">
            <div class="chart_bar">
              <div class="skill-bar">
                <div data-width="55">Sale Growth<span>65%</span></div>
              </div>
              <div class="skill-bar">
                <div data-width="73">
                  Product Satisfaction<span>83%</span>
                </div>
              </div>
              <div class="skill-bar">
                <div data-width="83">
                  Customer Positive Comment Rate<span>93%</span>
                </div>
              </div>
              <div class="skill-bar">
                <div data-width="87">CS Satisfaction<span>97%</span></div>
              </div>
            </div>

            <script type="text/javascript">
              (function ($) {
                "use strict";
                $(function () {
                  function animated_contents() {
                    $(".skill-bar > div ").each(function (i) {
                      var $this = $(this),
                        skills = $this.data("width");
                      $this.css({ width: skills + "%" });
                    });
                  }

                  if (jQuery().appear) {
                    $(".skill-bar")
                      .appear()
                      .on("appear", function () {
                        animated_contents();
                      });
                  } else {
                    animated_contents();
                  }
                });
              })(jQuery);
            </script>
          </div>
        </div>
      </div>
    </section>
  </div>

  <div class="section4">
    <section id="sec4">
      <div class="container">
        <div class="content">
          <div class="word">
            <h1>MEET OUR TEAM</h1>
            <p>
              Nation’s #1 Top fahion school graduated dsginers and MD’s are
              our most essential part. The are the root supporting us
            </p>
          </div>

          <div class="mds">
            <div class="md">
              <img src="./resources/img/about/md1.jpg" alt="md1" />
              <div class="name">
                <h2>Elisha Schrolor</h2>
                <h3>Designer</h3>
              </div>
            </div>

            <div class="md">
              <img src="./resources/img/about/md2.jpg" alt="md2" />
              <div class="name">
                <h2>Melis Hesuiser</h2>
                <h3>MD</h3>
              </div>
            </div>

            <div class="md">
              <img src="./resources/img/about/md3.jpg" alt="md3" />
              <div class="name">
                <h2>Davivd McDonalds</h2>
                <h3>Customer Support</h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <div class="section5">
    <section id="sec5">
      <div class="container">
        <div class="content">
          <h1>SCORE BOARD</h1>
          <div class="icon">
            <div>
              <div class="font"><i class="fas fa-wallet"></i></div>
              <div class="num">
                <div class="number">325</div><br /><span class="span2"></span>Billion Dollar Sales last year</span>
              </div>
            </div>
            <div>
              <div class="font"><i class="fas fa-plus"></i></div>
              <div class="num">
                <div class="number">856</div><br /><span class="span2"></span>Products updated this month</span>
              </div>
            </div>

            <div>
              <div class="font"><i class="fas fa-bell"></i></div>
              <div class="num">
                <div class="number">253</div><br /><span class="span2"></span>PERFITZZ alarm set</span>
              </div>
            </div>

            <div>
              <div class="font"><i class="fas fa-hand-holding-usd"></i></div>
              <div class="num">
                <div class="number">182</div><br /><span class="span2">million Donation to the Charity</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>


  <div class="section6">
    <section id="sec5">
      <div class="container">
        <div class="content">
          <div class="top">
            <h1>PERFETZZ MEMBERSHIP PLAN</h1>
            <div class="desc">Select monthly plan at an affordable price</div>
            <div class="line"></div>
          </div>
          <div class="plans">

            <div class="plan">
              <div class="month">1 Month Subscription</div>
              <div class="cat">SHOES</div>
              <img src="./resources/img/shoes/manolo4-1.png" alt="">

              <div class="opt">
                <ul>
                  <li class="item">1 pair Designer shoes</li>
                  <li class="item">2 pair sport shoes </li>
                  <li class="item">free dryclean</li>
                  <li class="item">invite a friend and earn 1 month extra</li>
                </ul>
              </div>
              <div class="price">
                <h1>$73</h1>
                <button>SUBSCRIBE</button>
              </div>
            </div>

            <div class="plan">
              <div class="month">1 Month Subscription</div>
              <div class="cat">SHOES</div>
              <img src="./resources/img/product/set3-2.png" alt="">

              <div class="opt">
                <ul>
                  <li class="item">1 pair Designer shoes</li>
                  <li class="item">2 pair sport shoes </li>
                  <li class="item">free dryclean</li>
                  <li class="item">invite a friend and earn 1 month extra</li>
                </ul>
              </div>
              <div class="price">
                <h1>$73</h1>
                <button>SUBSCRIBE</button>
              </div>
            </div>

            <div class="plan">
              <div class="month">1 Month Subscription</div>
              <div class="cat">SHOES</div>
              <img src="./resources/img/product/set1-2.png" alt="">

              <div class="opt">
                <ul>
                  <li class="item">1 pair Designer shoes</li>
                  <li class="item">2 pair sport shoes </li>
                  <li class="item">free dryclean</li>
                  <li class="item">invite a friend and earn 1 month extra</li>
                </ul>
              </div>
              <div class="price">
                <h1>$73</h1>
                <button>SUBSCRIBE</button>
              </div>
            </div>

          </div>

        </div>
      </div>
    </section>
  </div>
  <!-- plan의 글자들 하나씩 나열하기-->
  <script>
    var item = document.querySelectorAll('.item');
    var cnt = 0;

    function activeFunc() {
      item[cnt].classList.add('active');
      cnt++;
      if (cnt >= item.length) {
        clearInterval(addActive);
      }
    }

    var addActive = setInterval(activeFunc, 130);

  </script>
  <img class="middleImg" src="./resources/img/icon/dress2.png" alt="">


  <div class="section7_1">
    <div class="container">
      <div class="content">
        <div class="title">OUR SERVICES</div>
        <div class="exp">We are always here for you</div>
      </div>
    </div>

  </div>

  <div class="section7">
    <div class="container">
      <div class="content">

        <div class="box">
          <div><img src="./resources/img/icon/girl1.jpg" alt=""></div>
          <div>Shop Reservation</div>
          <button>RESERVE</button>
        </div>
        <div class="box">
          <div><img src="./resources/img/icon/girl1.jpg" alt=""></div>
          <div>Shop Reservation</div>
          <button>RESERVE</button>
        </div>
        <div class="box">
          <div><img src="./resources/img/icon/girl1.jpg" alt=""></div>
          <div>Shop Reservation</div>
          <button>RESERVE</button>
        </div>
        <div class="box">
          <div><img src="./resources/img/icon/girl1.jpg" alt=""></div>
          <div>Shop Reservation</div>
          <button>RESERVE</button>
        </div>
        <div class="box">
          <div><img src="./resources/img/icon/girl1.jpg" alt=""></div>
          <div>Shop Reservation</div>
          <button>RESERVE</button>
        </div>
        <div class="box">
          <div><img src="./resources/img/icon/girl1.jpg" alt=""></div>
          <div>Shop Reservation</div>
          <button>RESERVE</button>
        </div>



      </div>
    </div>
  </div>


  <div class="section8">
    <section id="sec8">
      <div class="container">
        <div class="content">

          <div class="head">
            <p class="title">LATEST BLOG UPDATES</p>
            <p class="word">Look around what our bloggers has written about us!
              You can also share your experience with us to the world.
              Review is our biggest support.</p>
          </div>

          <div class="wrapper">
            <div class="main">
              <div class="blogs">

                <div class="blog">
                  <img src="./resources/img/blog/blog1.jpg" alt="">
                  <div class="bottom">
                    <div class="line"></div>
                    <div class="word">
                      <p class="title">LIGTHHOUSE TO THE SHORE</p>
                      <p class="writer">By DYLAN WOODS | 5 NOVEMBER</p>
                      <p class="cont">A wonderful serenity has taken possession of my entire soul,
                        like these sweet mornings of spring which I enjoy with my whole heart.</p>
                      <p class="more"><a href="#">Read more</a></p>
                    </div>
                  </div>
                </div>

                <div class="blog">
                  <img src="./resources/img/blog/blog2.jpg" alt="">
                  <div class="bottom">
                    <div class="line"></div>
                    <div class="word">
                      <p class="title">WE IN NEW ZEALAND</p>
                      <p class="writer">By DYLAN WOODS | 5 NOVEMBER</p>
                      <p class="cont">A wonderful serenity has taken possession of my entire soul,
                        like these sweet mornings of spring which I enjoy with my whole heart.</p>
                      <p class="more"><a href="#">Read more</a></p>
                    </div>
                  </div>
                </div>

                <div class="blog">
                  <img src="./resources/img/blog/blog3.jpg" alt="">
                  <div class="bottom">
                    <div class="line"></div>
                    <div class="word">
                      <p class="title">SHORE AFTER THE TIDE</p>
                      <p class="writer">By DYLAN WOODS | 5 NOVEMBER</p>
                      <p class="cont">A wonderful serenity has taken possession of my entire soul,
                        like these sweet mornings of spring which I enjoy with my whole heart.</p>
                      <p class="more"><a href="#">Read more</a></p>
                    </div>
                  </div>
                </div>

                <div class="blog">
                  <img src="./resources/img/blog/blog4.jpg" alt="">
                  <div class="bottom">
                    <div class="line"></div>
                    <div class="word">
                      <p class="title">CLOCK</p>
                      <p class="writer">By DYLAN WOODS | 5 NOVEMBER</p>
                      <p class="cont">A wonderful serenity has taken possession of my entire soul,
                        like these sweet mornings of spring which I enjoy with my whole heart.</p>
                      <p class="more"><a href="#">Read more</a></p>
                    </div>
                  </div>
                </div>

                <div class="blog">
                  <img src="./resources/img/blog/blog5.jpg" alt="">
                  <div class="bottom">
                    <div class="line"></div>
                    <div class="word">
                      <p class="title">OUR TRIP TO THE ALPS</p>
                      <p class="writer">By DYLAN WOODS | 5 NOVEMBER</p>
                      <p class="cont">A wonderful serenity has taken possession of my entire soul,
                        like these sweet mornings of spring which I enjoy with my whole heart.</p>
                      <p class="more"><a href="#">Read more</a></p>
                    </div>
                  </div>
                </div>

                <div class="blog">
                  <img src="./resources/img/blog/blog6.jpg" alt="">
                  <div class="bottom">
                    <div class="line"></div>
                    <div class="word">
                      <p class="title">PLANE IN THE FIELD</p>
                      <p class="writer">By DYLAN WOODS | 5 NOVEMBER</p>
                      <p class="cont">A wonderful serenity has taken possession of my entire soul,
                        like these sweet mornings of spring which I enjoy with my whole heart.</p>
                      <p class="more"><a href="#">Read more</a></p>
                    </div>
                  </div>
                </div>

              </div>
            </div>


            <div class="side">

              <div class="cat top">
                <p class="title">BLOG CATEGORIES</p>
                <div class="line"></div>
                <ul>
                  <li><a href="#">Photograpy <span>- 136</span></a></li>
                  <li><a href="#">Codination <span>- 37</span></a></li>
                  <li><a href="#">Daily Life <span>-25</span></a></li>
                  <li><a href="#">Design <span>- 86</span></a></li>
                  <li><a href="#">Fashion <span>- 39</span></a></li>
                </ul>
              </div>

              <div class="popular top">
                <p class="title">POPULAR POSTS</p>
                <div class="line"></div>
                <div class="wrap1">
                  <div class="wrap wrap2">
                    <a href="#">
                      <img src="./resources/img/blog/blog1.jpg" alt="ddd">
                      <div class="word">
                        <p class="title">Designer Dem-usk Essentials</p>
                        <p class="date">23 January</p>
                      </div>
                    </a>
                  </div>
                  <div class="wrap">
                    <a href="" #><img src="./resources/img/blog/blog2.jpg" alt="ddd">
                      <div class="word">
                        <p class="title">Designer Desk Essentials</p>
                        <p class="date">23 January</p>
                      </div>
                    </a>
                  </div>
                </div>
              </div>

              <div class="tags top">
                <p class="title">TAGS</p>
                <div class="line"></div>
                <button>#BAG</button>
                <button>#CLOTHE</button>
                <button>#SHOES</button>
                <button>#DRESS</button>
                <button>#VIDEO</button>
                <button>#CODI</button>
                <button>#POPULAR</button>
                <button>#DAILY</button>
                <button>#PHOTO</button>
                <button>#FASHION</button>
                <button>#BLOG</button>
                <button>#DESIGNER</button>
              </div>

              <div class="comments top">
                <p class="title">RECENT COMMENTS</p>
                <div class="line"></div>
                <ul>
                  <li><a href="#"><span>Maria.....</span>Very Well, I enjoy your reivews!</a></li>
                  <li><a href="#"><span>John.....</span>Have a nice day :) </a></li>
                  <li><a href="#"><span>Andy.....</span>Eco work essential today</a></li>
                  <li><a href="#"><span>Jack.....</span>Your skirt looks good</a></li>
                  <li><a href="#"><span>Mark.....</span>I bought the same thing!</a></li>
                </ul>
              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  </div>























	<%@ include file="include/footer.jsp" %>
</body>
</html>