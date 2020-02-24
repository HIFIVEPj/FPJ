
package fp.corporation.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.PjPickKeyword;
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
	
	void insertpj(Project project);
	void insertPjpkeyword(Map<String, Object> map);
	
	void updatePj(Project project);
	void updateKeyword(Map<String, Object> map);
	void updateKeyword_Del(PjPickKeyword pjpkeyword);
	void updateKeyword_In(PjPickKeyword pjpkeyword);
	
	//mydash_cor에서 project 관리부분들
	List<Project> listMydashCor (Map<String, Object> map);
	long getTotalCountCor(long cor_code);
	
	//결제
	void payinsert(Map<String, Object> payinfo);
	void payStatusUpdate(Map<String, Object> payinfo);

}
