
package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
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
	public int countProfileList() {
		return mapper.countProfileList();
	}
	@Override
	public List<FreeLancer> selectPageList(PagingVO vo){
		return mapper.selectPageList(vo);
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

	//삭제//
	@Transactional
	@Override
	   public void listDelete(long PRO_NUM) {
		   mapper.listDelete(PRO_NUM);
		   mapper. listDelete2(PRO_NUM);
	}

			
	@Override
	public void checkdelete1() {
		 mapper.checkdelete1();
		 
	}

	

	@Override
	public String listInsert(FreeLancerProfile freelancerprofile){
		return mapper.listInsert(freelancerprofile);
	}
	
	@Override
	public String insertPjpkeyword(Map<String, Object> map){
		return mapper.insertPjpkeyword(map);
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
