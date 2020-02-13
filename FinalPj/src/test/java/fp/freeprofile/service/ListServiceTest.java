package fp.freeprofile.service;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.service.FreeLancerListService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class ListServiceTest {

	@Setter(onMethod_ = {@Autowired})
	private FreeLancerListService service;
		
	@Test
	public void selectPageList() {
		List_PagingVO vo = new List_PagingVO(5,1,5);
		List<List_FreeLancer> SelectList = service.SelectList(vo);
		log.info("###list(1)### : " + SelectList);

	}
/*	s
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
