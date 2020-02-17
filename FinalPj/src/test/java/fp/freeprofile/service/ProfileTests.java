package fp.freeprofile.service;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.service.FreeLancerProfileService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class ProfileTests {

	@Setter(onMethod_ = {@Autowired})
	private FreeLancerProfileService service;
	
	@Test
	public void testList() {
		List<FreeLancer> selectProfileList = service.selectProfileList();
		log.info("list(1): " + selectProfileList);
	}

/*	
	@Test
	public void testInsert() {
			Address address = new Address(-1, "이순신", "광주", null);
			addressService.insertS(address);
			
			List<Address> list = addressService.listS();
			log.info("list(2): " + list);
	}
	@Test
	public void testDelete() {
		addressService.deleteS(5);
		List<Address> list = addressService.listS();
		log.info("list(3): " + list);
	}	*/
}
