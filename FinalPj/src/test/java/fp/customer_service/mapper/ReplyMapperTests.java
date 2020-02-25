package fp.customer_service.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReplyMapperTests {
	
	private Long[] qa_numArr = {26L, 27L, 28L, 29L};
	
	@Autowired
	private ReplyMapper replyMapper;
	
	@Test
	public void testMapper() {

		log.info(replyMapper);
	}

}
