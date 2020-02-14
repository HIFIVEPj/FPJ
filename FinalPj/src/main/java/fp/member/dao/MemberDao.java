package fp.member.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fp.member.domain.Member;

@Repository
public class MemberDao {

	@Autowired
	SqlSession sqlSession;
	private String ns = "fp.member.mapper.MemberMapper";
	//로그인 체크
	public boolean loginCheck(Member member) {
		System.out.println("===> Mybatis로 loginCheck() 기능 처리");
		String name = sqlSession.selectOne(ns+".loginCheck",member);
		
		// 검색이 안되면 0을 반환해주기 때문에 0과 비교해서 참이면 false, 틀리면 true를 반환
		return (Integer.parseInt(name)==0)?false:true;
	}
	//로그 아웃
	public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();
	}

}

