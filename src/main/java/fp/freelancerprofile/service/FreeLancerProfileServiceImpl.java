
package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.PjPickKeyword;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerPick;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.FreePickKeyWord;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.mapper.FreeLancerProfileMapper;
import fp.market.domain.MarketPick;




@Service
public class FreeLancerProfileServiceImpl implements FreeLancerProfileService{
	
	
	@Autowired
	private FreeLancerProfileMapper mapper;

	@Override
	public List<FreeLancer> selectProfileList(){
		return mapper.selectProfileList();
	}
	///리스트페이지 페이징///
	@Override
	public long countProfileList(long free_code) {
		return mapper.countProfileList(free_code);
	}
	@Override
	public List<FreeLancerProfile> selectPageList(Map<String, Object> map){
		return mapper.selectPageList(map);
	}
	@Override
	public List<FreeLancerProfileFile> selectFilename(){
		return mapper.selectFilename();
	}
	
	//프로필컨텐츠//
	@Override
	public List<FreeLancer> selectProfileContent(long PRO_NUM){
		return mapper.selectProfileContent(PRO_NUM);
	}	
	@Override
	public List<FreeLancerProfile> selectProfileContent2(long PRO_NUM){
		return mapper.selectProfileContent2(PRO_NUM);
	}
	@Override
	public List<KeyWord> selectProfileContent3(long PRO_NUM){
		return mapper.selectProfileContent3(PRO_NUM);
	}
	@Override
	public List<FreeLancer> selectProfileContent4(long free_code){
		return mapper.selectProfileContent4(free_code);
	}	
	//삭제//
	@Transactional
	@Override
	   public void listDelete(long PRO_NUM) {
		   mapper.listDelete(PRO_NUM);
		   mapper. listDelete2(PRO_NUM);
	}

	//체크박스 삭제//
	@Override
	public void checkdelete1(Map<String, Object> map) {
		 mapper.checkdelete1(map);
	}
	
	//프로필 작성//
	@Override
	@Transactional
	public void listInsert(FreeLancerProfile freelancerprofile){
		mapper.listInsert(freelancerprofile);
		
	}

	@Override
	public void insertPjpkeyword(Map<String, Object> map){
		 mapper.insertPjpkeyword(map);
	}
	//프로필 작성페이지 수정//
	@Override
	@Transactional
	public void listUpdate(FreeLancerProfile freelancerprofile){
		mapper.listUpdate(freelancerprofile);
		mapper.typeUpdate(freelancerprofile.getType_num());
	  //  mapper.keyUpdate(map);
	}

	/*@Override
	@Transactional
	public void keyUpdate(Map<String, Object> map) {
		 mapper.keyDelete(map);
		 mapper.keyUpdate(map);
		
	}*/
	@Override
	@Transactional
	public void keyUpdate(FreePickKeyWord freepickkeyword) {
		mapper.updateKeyword_Del(freepickkeyword);
		mapper.updateKeyword_In(freepickkeyword);
	}
/*	@Override
	public void keyDelete(Map<String, Object> map) {
		 mapper.keyDelete(map);
	}*/

	@Override
	public List<FreeLancerProfile> profile_free_select(String mem_email){
		return mapper.profile_free_select(mem_email);
	}
	@Override
	public long getTotalCountFree(long free_code){
		return mapper.getTotalCountFree(free_code);
	}

	//프로필 수정//
	@Override
	public FreeLancerProfile showContent(long pro_num) {
		return mapper.showContent(pro_num);
	}
	@Override	
	public void choiceProfile(Map<String, Object> map) {
		mapper.choiceProfile(map);
	}
	
	
	//나영추가 + mydash_free
	@Override
	public FreeLancer mydash_free_select(String mem_email) {
		return mapper.mydash_free_select(mem_email);
	}
	@Override
	@Transactional
	public void mydash_free_insert(FreeLancer freelancer) {
		mapper.mydash_free_insert(freelancer);
		mapper.mydash_update_classnum(freelancer.getMem_email());
	}
	@Override
	public void mydash_free_update(FreeLancer freelancer) {
		mapper.mydash_free_update(freelancer);
	}
	@Override
	public List<FreeLancer>select_pj_applied_free(){
		return mapper.select_pj_applied_free();
	}
	@Override
	public List<FreeLancer>select_pj_applied_free_paging(long pj_num){
		return mapper.select_pj_applied_free_paging(pj_num);
	}
	//프리랜서 찜
	@Override
	public List<FreeLancerPick>freepick_list(long cor_code){
		return mapper.freepick_list(cor_code);
	}
	@Override
	@Transactional
	public void freepick_insert(Map<String, Object>map){
		mapper.freepick_insert(map);
		mapper.freepick_pro_update_in(map);
	}
	@Override
	@Transactional
	public void freepick_del(Map<String, Object>map) {
		mapper.freepick_del(map);
		mapper.freepick_pro_update_del(map);
	}
	@Override
	public long getTotalCountFreep(long cor_code) {
		return mapper.getTotalCountFreep(cor_code);
	}
	@Override
	public List<FreeLancerProfile> freepick_cor(Map<String, Object>map){
		return mapper.freepick_cor(map);
	}
	
	//profile keyword 전체뽑기
	@Override
	public List<FreeLancerProfile> selectAllFreeKeywords(){
		return mapper.selectAllFreeKeywords();
	}

}

