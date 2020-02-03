package fp.corporation.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//import fp.corporation.domain.Project;
//import fp.corporation.vo.ProjectVo;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProjectTests {
	/*@Autowired
	private ProjectMapper projectMapper;
	
	@Test
	public void testList() {
		ProjectVo projectVo = new ProjectVo();
		List<Project>list = projectMapper.list(projectVo);
		log.info("@#projectMapper : "+projectMapper.getClass().getName());
		for(Project project : list) {
			log.info("pj_num: "+project.getPj_num());
		}
	}*/
}
