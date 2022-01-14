package kr.co.goodee39.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService service;

	/*
	 * @Autowired BCryptPasswordEncoder passEncoder; // 비밀번호 암호화
	 */
	/*
	 * @PostMapping("/login") public String isLogin(MemberVO vo, HttpSession
	 * session) {
	 * 
	 * return memberService.getMember(vo, session); }
	 * 
	 * @GetMapping("/signUp") public String signUp(MemberVO vo) {
	 * 
	 * return "signup"; }
	 * 
	 * @PostMapping("/signupResult") public String signupResult(MemberVO vo) {
	 * memberService.setMember(vo); return "index"; }
	 */
	// 로그인으로 링크
	@GetMapping("/signin")
	public void getSignin() throws Exception {

	}

	// 회원가입으로 링크
	@GetMapping("/signup")
	public void getSignup() throws Exception {

	}

	// 로그인 post
	@PostMapping("/signin")
	public String postSignin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		System.out.println("vo : " + vo); // db에 저장된 vo주소

		MemberVO login = service.signin(vo); // MemverVO형 변수 login에 로그인 정보를 저장
		HttpSession session = req.getSession(); // 현재 세션 정보를 가져옴

		System.out.println("login : " + login); // login을 통해 저장된 vo 주소
		// des 암호화, saas sas 암호화
		// 평문 비문일치..... hasing 16진수 255 512?으로 저장. spring security...

		/*
		 * boolean passMatch = passEncoder.matches(vo.getUserPass(),
		 * login.getUserPass()); // DB의 비밀번호와 입력된 비밀번호를 비교
		 * System.out.println("passMatch : " + passMatch);
		 */

		if (login != null) { // 아이디가 존재하고(!=null), 비밀번호가 맞으면(PassMatch = true)
			session.setAttribute("member", login); // member 세션에 로그인 정보를 부여

		} else { // 아이디가 존재하지 않고, 비밀번호가 틀리면
			session.setAttribute("member", null); // member 세션에 null 부여
			System.out.println("member : " + session.getAttribute("member"));
			rttr.addFlashAttribute("msg", false); // 1회성인 변수인 msg에 false 부여
			return "redirect:/member/signin"; // 로그인 화면 유지
		}

		return "redirect:/"; // 홈으로 이동
	}

	// 회원 가입 post
	@PostMapping("/signup")
	public String postSignup(MemberVO vo) throws Exception {

		String inputPass = vo.getUserPass(); //
		
		vo.setUserPass(inputPass);
		service.signup(vo);

		return "member/signup_success"; 
	}


	// 로그아웃
	@GetMapping("/signout")
	public String signout(HttpSession session) throws Exception {
		service.signout(session); // 세션 정보를 제거

		return "redirect:/";
	}

}
