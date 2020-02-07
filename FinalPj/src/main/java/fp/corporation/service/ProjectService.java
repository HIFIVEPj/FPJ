package fp.corporation.service;

import java.util.List;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Keyword;
import fp.corporation.domain.Project;
import fp.corporation.vo.ProjectKeyNameVo;
import fp.corporation.vo.ProjectVo;

public interface ProjectService {
	List<Project> list (ProjectVo projectVo);
	long getTotalCount();
	List<Project> keywords();
	Project showContent(long pj_num);
	Corporation corInfo(long pj_num);
}
