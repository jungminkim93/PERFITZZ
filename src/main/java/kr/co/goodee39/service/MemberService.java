package kr.co.goodee39.service;

import javax.servlet.http.HttpSession;



import kr.co.goodee39.vo.MemberVO;


public interface MemberService {

	// 회원 가입
	public void signup(MemberVO vo) throws Exception;

	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;
	
	// 로그아웃
	public void signout(HttpSession session) throws Exception;
	
	/*
	 * @Autowired SqlSessionTemplate sqlSessionTemplate;
	 * 
	 * public String getMember(MemberVO vo, HttpSession session) { MemberVO vo1 =
	 * sqlSessionTemplate.selectOne("member.selectMember", vo); String path = ""; if
	 * (vo1 != null) { session.setAttribute("account", vo1);
	 * path="redirect:/bbs/main"; } else { path="index"; } return path; } public
	 * void setMember(MemberVO vo) {
	 * sqlSessionTemplate.insert("member.insertMember", vo); }
	 */
}