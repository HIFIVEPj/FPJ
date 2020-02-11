package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	//////
	
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
	public void listDelete(long PRO_NUM) {
		mapper.listDelete(PRO_NUM);
	}

	/*		
	@Override
	public void listDeleteAll(PRO_NUM) {
		mapper.listDelete(PRO_NUM);
	}
*/

}
