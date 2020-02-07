package fp.corporation.mapper;

import java.util.List;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Project;
import fp.corporation.vo.ProjectVo;

public interface ProjectMapper {
	List<Project> list (ProjectVo projectVo);
	long getTotalCount();
	List<Project> pjKeywords();
	Project content(long pj_num);
	Corporation corInfo(long pj_num);
	void deletePj(long pj_num);
	void deleteKeyword(long pj_num);
}
