package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.context.annotation.Profile;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;

public interface FreeLancerProfileService {
	List<FreeLancer> selectProfileList();
	//프로필 컨텐츠//
	List<FreeLancer> selectProfileContent(long PRO_NUM);
	List<FreeLancerProfile> selectProfileContent2(long PRO_NUM);
	List<KeyWord> selectProfileContent3(long PRO_NUM);

	
	void listDelete(long PRO_NUM);
	

}
