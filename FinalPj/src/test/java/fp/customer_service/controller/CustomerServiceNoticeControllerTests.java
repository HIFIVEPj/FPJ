package fp.customer_service.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@Log4j
@RunWith(SpringJUnit4ClassRunner.class) //이걸 넣어야 JUnit test 가능
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) //이걸 넣어야 JUnit test 가능
public class CustomerServiceNoticeControllerTests {

	@Autowired
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@Before //JUnit이 실행되기 전에 실행되는 메소드
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	

	@Test
	public void test_Notice_List() throws Exception {
		MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/customer_service_notice");
		ModelMap mm = mockMvc.perform(builder).andReturn().getModelAndView().getModelMap();
		log.info("#CustomerServiceNoticeControllerTests test_Notice_List() mm : " + mm);
	}

	
	/*
	@Test
	public void testWrite() throws Exception {
		ResultActions ra = mockMvc.perform(MockMvcRequestBuilders.post("/address/write.do").param("name", "장현봉").param("addr", "Seoul"));
		String result = ra.andReturn().getModelAndView().getViewName();
		log.info("AddressControllerTests testWrite() result : " + result);
	}
	
	@Test
	public void testDelete() throws Exception {
		String result = mockMvc.perform(MockMvcRequestBuilders.get("/address/del.do").param("seq", "5")).andReturn().getModelAndView().getViewName();
		log.info("#AddressControllerTests testDelete() result : " + result);
	}
	*/
}