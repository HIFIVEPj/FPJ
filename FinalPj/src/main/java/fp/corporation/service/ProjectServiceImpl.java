
package fp.corporation.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.PjPickKeyword;

import fp.corporation.domain.Project;
import fp.corporation.domain.ProjectPick;
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

	//mydash_cor에서 project 관리부분들
	@Override
	public List<Project> listMydashCor(Map<String, Object> map){
		return mapper.listMydashCor(map);
	}
	@Override
	public long getTotalCountCor(long cor_code) {
		return mapper.getTotalCountCor(cor_code);
	}
	//------
	
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
	@Override
	public void insertpj(Project project) {
		mapper.insertpj(project);
	};
	@Override
	public void insertPjpkeyword(Map<String, Object> map) {
		mapper.insertPjpkeyword(map);
	}
	@Override
	public void updatePj(Project project) {
		mapper.updatePj(project);
	}
	@Override
	public void updateKeyword(Map<String, Object> map) {
		mapper.updateKeyword(map);
	}
	@Override
	@Transactional
	public void updateKeyword(PjPickKeyword pjpkeyword) {
		mapper.updateKeyword_Del(pjpkeyword);
		mapper.updateKeyword_In(pjpkeyword);
	}
	
	@Override
	@Transactional
	public void payinsert(Map<String, Object> payinfo) {
		mapper.payinsert(payinfo);
		mapper.payStatusUpdate(payinfo);
	}
	
	//프로젝트 찜
	@Override
	public List<ProjectPick>pjpick_list(long free_code){
		return mapper.pjpick_list(free_code);
	}
	@Override
	@Transactional
	public void pjpick_insert(Map<String, Object>map) {
		mapper.pjpick_insert(map);
		mapper.pjpick_pj_update_in(map);
	}
	@Override
	public void pjpick_del(Map<String, Object>map) {
		mapper.pjpick_del(map);
		mapper.pjpick_pj_update_del(map);
	}
}
