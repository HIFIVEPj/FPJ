package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.context.annotation.Profile;
import org.springframework.transaction.annotation.Transactional;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;

public interface FreeLancerProfileService {
	
	List<FreeLancer> selectProfileList();
	
	///프로필 리스트 페이징///
	public int countProfileList();

	//페이징처리 게시글 조회
	public  List<FreeLancer> selectPageList(PagingVO vo);
	//////
	
	///프로필 컨텐츠//
	List<FreeLancer> selectProfileContent(long PRO_NUM);
	List<FreeLancerProfile> selectProfileContent2(long PRO_NUM);
	List<KeyWord> selectProfileContent3(long PRO_NUM);

	//삭제//
	public void listDelete(long PRO_NUM);

		   

}
