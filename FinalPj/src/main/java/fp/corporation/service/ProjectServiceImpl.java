package fp.corporation.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Project;
import fp.corporation.mapper.ProjectMapper;
import fp.corporation.vo.ProjectVo;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProjectServiceImpl implements ProjectService {
	private ProjectMapper mapper;
	
	@Override
	public List<Project> list(ProjectVo projectVo) {
		return mapper.list(projectVo);
	}

	@Override
	public long getTotalCount() {
		return mapper.getTotalCount();
	}

	@Override
	public List<Project> keywords(){
		return mapper.pjKeywords();
	}
	
	@Override
	public Project showContent(long pj_num) {
		return mapper.content(pj_num);
	}
	@Override
	public Corporation corInfo(long pj_num) {
		return mapper.corInfo(pj_num);
	}
	
	@Override
	@Transactional
	public void deletePj(long pj_num) {
		mapper.deleteKeyword(pj_num);
		mapper.deletePj(pj_num);
		
	}

}