package fp.member.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fp.member.domain.Member;

@Repository
public class MemberDao {

	@Autowired
	SqlSession sqlSession;
	

	private String ns = "fp.member.mapper.MemberMapper";
	//로그인 체크
	public Member loginCheck(Member member) {
		System.out.println("===> Mybatis로 loginCheck() 기능 처리");
		Member member1= sqlSession.selectOne(ns+".loginCheck",member);
		
		System.out.println("꺄아아아아앙아아아아아아아아앙아아아아아아아아:"+member1.getPwd());
		return member1;
	}
	//로그 아웃
	public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();
	}
	
	@Transactional
	public int update_pw(Member member) throws Exception{
		return sqlSession.update(ns+".update_pw", member);
	}

}

