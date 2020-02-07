package fp.hifive.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class) //이걸 넣어야 JUnit test 가능
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //이걸 넣어야 JUnit test 가능
public class JdbcTests {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException cnfe) {
			log.info("#오라클 드라이버 인식 실패");
		}
	}
	@Test //이걸 넣어야 JUnit test 가능
	public void testConnectionJdbc() {//앞에 test를 붙이는게 관례
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:JAVA";
		try {
			Connection con = DriverManager.getConnection(url, "final", "dongo");
			log.info("#con from Jdbc : " + con);
		}catch(SQLException se) {
			log.info("#testConnectionJdbc() exception : " + se);
		}
	}
}
