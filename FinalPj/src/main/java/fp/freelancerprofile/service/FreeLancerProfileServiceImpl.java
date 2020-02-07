package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.mapper.FreeLancerProfileMapper;




@Service
public class FreeLancerProfileServiceImpl implements FreeLancerProfileService{
	
	
	@Autowired
	private FreeLancerProfileMapper mapper;

	@Override
	public List<FreeLancer> selectProfileList(){
		return mapper.selectProfileList();
	}
	@Override
	public List<FreeLancer> selectProfileContent(long PRO_NUM){
		return mapper.selectProfileContent(PRO_NUM);
	}	@Override
	public List<FreeLancer> selectProfileContent2(long PRO_NUM){
		return mapper.selectProfileContent(PRO_NUM);
	}
	@Override
	public List<FreeLancer> selectProfileContent3(long PRO_NUM){
		return mapper.selectProfileContent(PRO_NUM);
	}
	
	@Override
	public void listDelete(long PRO_NUM) {
		mapper.listDelete(PRO_NUM);
	}
	
	/*	@Override
	public void listDeleteAll(PRO_NUM) {
		mapper.listDelete(PRO_NUM);
	}
*/

}
