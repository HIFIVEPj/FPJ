
package fp.freelancerprofile.mapper;

import java.util.*;

import org.springframework.context.annotation.Profile;

import fp.corporation.domain.Project;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;

import fp.freelancerprofile.domain.KeyWord;



public interface FreeLancerProfileMapper {
	
	List<FreeLancer> selectProfileList();
	int countProfileList(List<Integer> pronum);
	
	
	List<FreeLancer> selectProfileContent(long PRO_NUM);
	List<FreeLancerProfile> selectProfileContent2(long PRO_NUM);
	List<KeyWord> selectProfileContent3(long PRO_NUM);
	List<FreeLancer> selectProfileContent4(long free_code);
	
	void listDelete(long PRO_NUM);
	void listDelete2(long PRO_NUM);
	
	//게시물 총 갯수
	public long countProfileList(long free_code);
	//페이징처리 게시글 조회
	public List<FreeLancerProfile> selectPageList(Map<String, Object> map);
	public List<FreeLancerProfileFile> selectFilename();

	//프로필 작성//
	public void listInsert(FreeLancerProfile freelancerprofile);
	
	public void insertPjpkeyword(Map<String, Object> map);

	//체크박스 삭제//
	public void checkdelete1(long PRO_NUM);
	public void checkdelete1();
	
	public List<FreeLancerProfile> profile_free_select(String mem_email);
	public long getTotalCountFree(long free_code);
	
	//나영추가 + mydash_free
	public FreeLancer mydash_free_select(String mem_email);
	public void mydash_free_insert(FreeLancer freelancer);
	public void mydash_free_update(FreeLancer freelancer);
	public void mydash_update_classnum(String mem_email);
	public List<FreeLancer>select_pj_applied_free();
	List<FreeLancer>select_pj_applied_free_paging(long pj_num);
	//public long totalCount_pj_applied_free(long pj_num);

	
	
}