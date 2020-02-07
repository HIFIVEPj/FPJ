package fp.freelancerprofile.service;

import java.util.*;

import org.springframework.context.annotation.Profile;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;

public interface FreeLancerProfileService {
	List<FreeLancer> selectProfileList();
	List<FreeLancer> selectProfileContent(long PRO_NUM);
	List<FreeLancer> selectProfileContent2(long PRO_NUM);
	List<FreeLancer> selectProfileContent3(long PRO_NUM);
	
	void listDelete(long PRO_NUM);
	

}
