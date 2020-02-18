/*
package fp.password.security;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.log4j.Log4j;

@Repository("userAuthDAO")
@Log4j
public class UserAuthDAO {
	 
	
    @Autowired
    private SqlSessionTemplate sqlSession;
    //private String ns1="fp.member.mapper.MemberMapper";
    //private String ns="fp.member.domain.member";
    public CustomUserDetails getUserById(String email) {
    	 //return sqlSession.selectOne(ns+".selectMemList", email);
    	log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+ email);
    	 return sqlSession.selectOne("user.selectUserById", email);
    } 


}
*/