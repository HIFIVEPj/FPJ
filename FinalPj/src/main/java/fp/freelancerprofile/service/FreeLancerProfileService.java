
package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.context.annotation.Profile;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.market.domain.FreelancerProfile;

public interface FreeLancerProfileService {
	
	List<FreeLancer> selectProfileList();
	
	///프로필 리스트 페이징///
	public long countProfileList(long free_code);

	//페이징처리 게시글 조회
	public  List<FreeLancerProfile> selectPageList(Map<String, Object> map);
	public List<FreeLancerProfileFile> selectFilename();
	
	///프로필 컨텐츠//
	List<FreeLancer> selectProfileContent(long PRO_NUM);
	List<FreeLancerProfile> selectProfileContent2(long PRO_NUM);
	List<KeyWord> selectProfileContent3(long PRO_NUM);
	List<FreeLancer> selectProfileContent4(long PRO_NUM);
	//삭제//
	public void listDelete(long PRO_NUM);

	
	//작성//
	public void listInsert(FreeLancerProfile freelancerprofile);
	public void insertPjpkeyword(Map<String, Object> map);
	
	//체크박스 삭제//
	void checkdelete1(long PRO_NUM);
		
	long getTotalCountFree(long free_code);

	List<FreeLancerProfile> profile_free_select(String mem_email);

	
	
	
	
	
	
	
	//나영추가 + mydash_free
	public FreeLancer mydash_free_select(String mem_email);
	public void mydash_free_insert(FreeLancer freelancer);
	public void mydash_free_update(FreeLancer freelancer);








}
