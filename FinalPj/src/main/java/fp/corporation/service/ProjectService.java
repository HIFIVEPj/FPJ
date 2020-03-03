package fp.corporation.service;

import java.util.List;
import java.util.Map;

import fp.corporation.domain.AppliedProject;
import fp.corporation.domain.Corporation;
import fp.corporation.domain.PjPickKeyword;
import fp.corporation.domain.Project;
import fp.corporation.domain.ProjectPick;
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
	
	//프리랜서 마이페이지에서 찜한프로젝트리스트 뽑기
	List<Project>pjpick_free(Map<String, Object>map);
	long getTotalCountPickPj(long free_code);
	
	//프로젝트지원
	void applied_pj(Map<String, Object>map);
	AppliedProject select_applied_pj(Map<String, Object>map);
	List<Project>select_appp_pj_free(Map<String, Object>map);
}

