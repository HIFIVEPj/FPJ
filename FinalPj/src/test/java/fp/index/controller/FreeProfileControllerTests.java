package fp.index.controller;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.queryParam;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;


@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class FreeProfileControllerTests {
	@Autowired
	
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
/*	@Test
	public void testList() throws Exception{
		MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/community_list");
		ModelMap mm = mockMvc.perform(builder).andReturn().getModelAndView().getModelMap();
		log.info("AddressControllerTests tstList() mm: "+ mm);
	}	*/
	/*	@Test
	public void testWrite() throws Exception{
		ResultActions ra = mockMvc
				.perform(MockMvcRequestBuilders.post("/address/write.do")
				.param("name", "장현봉")
				.param("addr", "seoul"));
				
				String result = ra.andReturn().getModelAndView().getViewName();
				log.info("AddressControllerTests testWrite() result: " + result);
	}*/
	/*	@Test
	public void testDelete() throws Exception{
			String result = mockMvc
					.perform(MockMvcRequestBuilders.get("/address/del.do")
					.param("seq", "2"))
					.andReturn()
					.getModelAndView().getViewName();
			
			log.info("#AddressControllerTests testDelete() result: " + result);
	}	
		*/
}
	

