<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>shop</title>


<style>
a {
	color: #05f;
	text-decoration: none;
}

a:hover {
	/* text-decoration: underline; */
	
}

h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
}

ul, lo, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

/* ---------- */
div#root {
	width: 1200px;
	margin: 100px auto;
}

section#container {
	
}

section#content {
	float: right;
	width: 700px;
}

aside#aside {
	float: left;
	width: 180px;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

/* ---------- */
section#container {
	
}

aside#aside h3 {
	font-size: 22px;
	margin-bottom: 20px;
	text-align: center;
}

aside#aside li {
	font-size: 16px;
	text-align: center;
}

aside#aside li a {
	color: #000;
	display: block;
	padding: 10px 0;
}

aside#aside li a:hover {
	text-decoration: none;
	background: #eee;
}

aside#aside li {
	position: relative;
}

aside#aside li:hover {
	background: #eee;
}

aside#aside li>ul.low {
	display: none;
	position: absolute;
	top: 0;
	left: 180px;
}

aside#aside li:hover>ul.low {
	display: block;
}

aside#aside li:hover>ul.low li a {
	background: #eee;
	border: 1px solid #eee;
}

aside#aside li:hover>ul.low li a:hover {
	background: #fff;
}

aside#aside li>ul.low li {
	width: 180px;
}
</style>


<style>
/*
	section#content ul li { display:inline-block; margin:10px; }
	section#content div.goodsThumb img { width:200px; height:200px; }
	section#content div.goodsName { padding:10px 0; text-align:center; }
	section#content div.goodsName a { color:#000; }
*/
section#content ul li {
	border: 5px solid #eee;
	padding: 10px 20px;
	margin-bottom: 20px;
}

section#content .orderList span {
	font-size: 20px;
	font-weight: bold;
	display: inline-block;
	width: 90px;
	margin-right: 10px;
}
</style>

</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div id="root">
		<section id="container">
			<div id="container_box">

				<section id="content">

					<ul class="orderList">
						<c:forEach items="${orderList}" var="orderList">
							<li>
								<div>
									<p>
										<span>주문번호</span><a
											href="/shop/orderView?n=${orderList.orderId}">${orderList.orderId}</a>
									</p>
									<p>
										<span>수령인</span>${orderList.orderRec}</p>
									<p>
										<span>주소</span>(${orderList.userAddr1}) ${orderList.userAddr2}
										${orderList.userAddr3}
									</p>
									<p>
										<span>가격</span>
										<fmt:formatNumber pattern="###,###,###"
											value="${orderList.amount}" />
										원
									</p>
									<p>
										<span>상태</span>${orderList.delivery}</p>
								</div>
							</li>
						</c:forEach>
					</ul>

				</section>

				<aside id="aside">
					<%@ include file="../include/aside.jsp"%>
				</aside>

			</div>
		</section>

	</div>
	<%@ include file="../include/footer.jsp"%>

</body>
</html>
