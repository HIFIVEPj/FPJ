
package fp.member.mapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import fp.member.dao.MemberDao;
import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.mapper.MemberMapper;



@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberTests {
	/*
	@Autowired
	private MemberMapper memberMapper;
	*/
	@Autowired
	private MemberDao dao;
	
	/*
	@Autowired
	private UserAuthDAO userAuthDAO; */
	
	@Setter(onMethod_ = @Autowired)
	private BCrypt pwcoder;
	
	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	 
	/*	
	//로그인테스트
	@Test
	public void selectMemList() {
		//Member member=memberMapper.selectMemList("kim@gmail.com");
		Member member =userAuthDAO.
		//log.info("#selectMemList() member: " + member );
		member.getAuthList().forEach(MemberAuth ->log.info(MemberAuth));
	} 
	/* 이메일인증 테스트
	@Test
	public void selectEmailAuth() {
		List<EmailAuth> emailAuth = memberMapper.selectEmailAuth("dam9112@naver.com");
		log.info("#selectEmailAuth() email: " + emailAuth );
	} */
	
	
	@Test
	public void insertMem() {
		String sql ="update MEMBER set MEM_PWD=? where MEM_EMAIL=?";
<<<<<<< HEAD
			Connection con =null;
			PreparedStatement pstmt =null;
		
=======
			//dao.hashCode("pw");
			Connection con =null;
			PreparedStatement pstmt =null;
			//BCrypt.hashpw(rawPassword.toString(), salt);
>>>>>>> 66928d0945675f40d16aa344255e94d26080ed14
			try {
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				//pstmt.setString(1, pwcoder.encode("pw"));
<<<<<<< HEAD
				pstmt.setString(1, BCrypt.hashpw("1234", BCrypt.gensalt(10)));
				pstmt.setString(2,"se@naver.com");
=======
				pstmt.setString(1, BCrypt.hashpw("pwd", BCrypt.gensalt(10)));
				pstmt.setString(2,"hun@gmail.com");
>>>>>>> 66928d0945675f40d16aa344255e94d26080ed14
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(pstmt != null) try{pstmt.close();}catch(Exception e) {}
				if(con != null) try{con.close();}catch(Exception e) {}
			}
		
	}

    /*
	@Test
	public void testUpdate() {
		Board board = new Board(17, "가1", "나1", "다1", "라1", null);
		boardMapper.update(board);
		log.info("#BoardTests testUpdate() 수행 완료");
	}*/
	/*
	@Test
	public void testDelete() {
		boardMapper.delete(17);
		log.info("#BoardTests testDelete() 수행 완료");
	}*/
}
