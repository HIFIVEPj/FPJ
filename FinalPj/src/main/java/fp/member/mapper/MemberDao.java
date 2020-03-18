
package fp.member.mapper;

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
		Member member1= sqlSession.selectOne(ns+".loginCheck",member);
		if(member1 ==null) {
			return null;
		}		
		return member1;
	}
	//로그 아웃
	public void logout(HttpSession session) {		
		session.invalidate();
	}
	
	@Transactional
	public int update_pw(Member member) throws Exception{
		return sqlSession.update(ns+".update_pw", member);
	}

}
