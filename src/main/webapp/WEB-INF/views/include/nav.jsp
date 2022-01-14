<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul>
<c:if test="${member == null}">
	<li>
		<a href="${pageContext.request.contextPath}/member/signin"><span class="nav">로그인</span></a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/member/signup" ><span class="nav">회원가입</span></a>
	</li>
</c:if>
<c:if test="${member != null}">

<c:if test="${member.verify == 9}">
<li>
	<a href="${pageContext.request.contextPath}/admin/index"><span class="nav">관리자 화면</span></a>	
</li>	
</c:if>

	<li>
		${member.userName}님 환영합니다.
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/about"><span class="nav">about</span></a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/bbs/bbsmain"><span class="nav">게시판</span></a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/gallery"><span class="nav">갤러리</span></a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/shop/cartList"><span class="nav">카트 리스트</span></a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/shop/orderList"><span class="nav">주문 리스트</span></a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/member/signout"><span class="nav">로그아웃</span></a>
	</li>
</c:if>

</ul>