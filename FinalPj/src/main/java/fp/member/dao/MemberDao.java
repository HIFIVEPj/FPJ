package fp.member.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import fp.member.domain.Member;

@Repository
public class MemberDao {

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	private String ns = "fp.member.mapper.MemberMapper";
	//로그인 체크
	public Member loginCheck(Member member) {
		System.out.println("===> Mybatis로 loginCheck() 기능 처리");
		Member member1= sqlSession.selectOne(ns+".loginCheck",member);
		
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~daodao:"+member1);
		//return (suc==0)?false:true;
		// 검색이 안되면 0을 반환해주기 때문에 0과 비교해서 참이면 false, 틀리면 true를 반환
		return member1;
	}
	//로그 아웃
	public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();
	}

}

