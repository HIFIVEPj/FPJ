package fp.freelancer.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.mapper.FreeLancerProfileMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class FreeLancerMapperTests {
	@Autowired
	private FreeLancerProfileMapper mapper;	
	/*
	@Test
	public void test_Notice_List() {
		log.info("#customerServiceNoticeMapper : " + customerServiceNoticeMapper.getClass().getName());
		log.info("#CustomerServiceNoticeTests test_Notice_List" + customerServiceNoticeMapper.notice_list()); 
	}
	*/
	
	@Test
	public void testInsert() {
		FreeLancerProfile freelancerprofile = new FreeLancerProfile(); //클라이언트가 줘야 하는 데이터인데 지금은 없으니 임의로 데이터 만들어줘야 함
		mapper.listInsert(freelancerprofile);
		log.info("#FreeLancerMapperTests insert() 수행 완료");		
	}
	
	/*	@Test
	public void testDelete() {
		long seq = 26L; //클라이언트가 줘야 하는 데이터인데 지금은 없으니 임의로 데이터 만들어줘야 함
		addressMapper.delete(seq);
		log.info("#AddressTests delete() 수행완료");
	}
	*/
}
