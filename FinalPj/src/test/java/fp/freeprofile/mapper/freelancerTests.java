package fp.freeprofile.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.ui.ModelMap;

import fp.freelancerlist.mapper.FreeLancerlistMapper;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.mapper.FreeLancerProfileMapper;
import lombok.extern.log4j.Log4j;




@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class freelancerTests {
	@Autowired
	private FreeLancerlistMapper mapper;
	long free_code = 1;
		
	@Test
	public void testContent() throws Exception{
		log.info("#######freeProfileMapper: #######" + mapper.getClass().getName());
		List<Project>list = mapper.freelancercontent5(free_code);
		log.info("#######freeProfileMapperTests testList(): #######"+list);
	}
	
	
/*		@Test
	public void testInsert() {
		Address address = new Address(-1, "오늘은", "금요일", null);
		addressMapper.insert(address);
		log.info("#AddressTests insert() 수행 완료");
	}*/
	
	/*	@Test
	public void testDelete() {
		long seq= 6L;
		addressMapper.delete(seq);
		log.info("#AddressTests delete() 수행완료");
	} 
	}*/
	
		/*	
	@Test
	public int countFreeLancer();
	//페이징처리 게시글 조회
	public List<PagingVO> selectListPaging(PagingVO vo);
*/
}
