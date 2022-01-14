package kr.co.goodee39.persistence;

import javax.inject.Inject;



import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.goodee39.vo.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sql;
	
	// 매퍼 
	private static String namespace = "member";
	
	// 회원 가입
	@Override
	public void signup(MemberVO vo) throws Exception {
		sql.insert(namespace + ".signup", vo);
	}
	
	// 로그인
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".signin", vo);
	}

}