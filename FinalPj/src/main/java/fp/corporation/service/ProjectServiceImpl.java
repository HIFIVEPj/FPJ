package fp.corporation.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.AppliedProject;
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
	public List<Project> list(Map<String, Object> map) {
		return mapper.list(map);
	}
	@Override
	public long getTotalCount(Map<String, Object> map) {
		return mapper.getTotalCount(map);
	}

	//sorting 할때 필요한 매퍼들
	@Override
	public long getTotalCount_select(int type_nums){
		return mapper.getTotalCount_select(type_nums);
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
		mapper.updateProjectVcnt(pj_num);
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
		Corporation cor = mapper.corInfo((long)payinfo.get("pj_num"));
		mapper.corPointUp(cor.getCor_code());
		mapper.corLevelUp1(cor.getCor_code());
		mapper.corLevelUp2(cor.getCor_code());
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
	
	//프리랜서 마이페이지에서 찜한프로젝트리스트 뽑기
	@Override
	public List<Project>pjpick_free(Map<String, Object>map){
		return mapper.pjpick_free(map);
	}
	
	@Override
	public long getTotalCountPickPj(long free_code) {
		return mapper.getTotalCountPickPj(free_code);
	}
	
	//프로젝트지원
	@Override
	@Transactional
	public void applied_pj(Map<String, Object>map) {
		mapper.applied_pj(map);
		List<Long> pjNumLong = new ArrayList<Long>();
		
		List<ProjectPick>list = mapper.pjpick_list((long)map.get("free_code"));
		for(int i=0; i<list.size(); i++) {
			pjNumLong.add(list.get(i).getPj_num());
		}
		if(pjNumLong.contains((long)map.get("pro_num"))) {
			pjpick_del(map);
		}
	}
	@Override
	public AppliedProject select_applied_pj(Map<String, Object>map) {
		return mapper.select_applied_pj(map);
	}
	@Override
	public List<Project>select_appp_pj_free(Map<String, Object>map){
		return mapper.select_appp_pj_free(map);
	}
	@Override
	public void appp_status_update(Map<String, Object>map) {
		mapper.appp_status_update(map);
	}
	@Override
	public int appp_count(long pj_num) {
		return mapper.appp_count(pj_num);
	}
	@Override
	public void pj_status_update(long pj_num) {
		mapper.pj_status_update(pj_num);
	}
}