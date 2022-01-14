package kr.co.goodee39.interceptor;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.goodee39.vo.MemberVO;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		if (member == null) { //session에 account가 없으면
			session.invalidate(); // 세션 완전 초기화
			response.sendRedirect("/member/signin");
			/* response.sendRedirect(request.getContextPath()); */ //Ex30BBSXML 경로를 태운다. request.getContextPath
			//로그인창(index)으로 강제 redirect
			//home페이지 아니고 원하는 페이지로 가고싶으면 request.getContextPath()+path로 주면 되는 것
			return false;
		}
		if(member.getVerify() != 9) {
			response.sendRedirect("/");
			return false;
		}

		return true;
	}
	
}
