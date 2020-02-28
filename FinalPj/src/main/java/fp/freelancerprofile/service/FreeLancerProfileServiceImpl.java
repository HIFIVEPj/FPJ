
package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.mapper.FreeLancerProfileMapper;




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
	public List<FreeLancer> selectProfileContent4(long PRO_NUM){
		return mapper.selectProfileContent4(PRO_NUM);
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
	public void checkdelete1(long PRO_NUM) {
		 mapper.checkdelete1(PRO_NUM);
	}
	
	//프로필 작성//
	@Override
	public void listInsert(FreeLancerProfile freelancerprofile){
		mapper.listInsert(freelancerprofile);
	}
	
	@Override
	public void insertPjpkeyword(Map<String, Object> map){
		 mapper.insertPjpkeyword(map);
	}

	@Override
	public List<FreeLancerProfile> profile_free_select(String mem_email){
		return mapper.profile_free_select(mem_email);
	}
	@Override
	public long getTotalCountFree(long free_code){
		return mapper.getTotalCountFree(free_code);
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



}
