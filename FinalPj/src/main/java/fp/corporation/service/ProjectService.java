package fp.corporation.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Keyword;
import fp.corporation.domain.PjPickKeyword;
import fp.corporation.domain.Project;
import fp.corporation.domain.ProjectPick;
import fp.corporation.vo.ProjectKeyNameVo;
import fp.corporation.vo.ProjectVo;

public interface ProjectService {
	List<Project> list (ProjectVo projectVo);
	long getTotalCount();
	List<Project> keywords();
	Project showContent(long pj_num);
	Corporation corInfo(long pj_num);
	void deletePj(long pj_num);
	
	void insertpj(Project project);
	void insertPjpkeyword(Map<String, Object> map);
	
	void updatePj(Project project);

	void updateKeyword(Map<String, Object> map);

	void updateKeyword(PjPickKeyword pjpkeyword);	
	//mydash_cor에서 project 관리부분들
	List<Project> listMydashCor (Map<String, Object> map);
	long getTotalCountCor(long cor_code);

	//결제
	void payinsert(Map<String, Object> payinfo);
	//프로젝트 찜
	List<ProjectPick>pjpick_list(long free_code);
	void pjpick_insert(Map<String, Object>map);
	void pjpick_del(Map<String, Object>map);
}

