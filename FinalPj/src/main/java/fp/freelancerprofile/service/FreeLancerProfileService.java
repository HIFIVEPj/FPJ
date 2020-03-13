
package fp.freelancerprofile.service;

import java.util.*;

import fp.corporation.domain.PjPickKeyword;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerPick;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreePickKeyWord;
import fp.freelancerprofile.domain.Freelnacer_account;
import fp.freelancerprofile.domain.KeyWord;


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
	List<FreeLancer> selectProfileContent4(long free_code);
	//삭제//
	public void listDelete(long PRO_NUM);

	
	//작성//
	public void listInsert(FreeLancerProfile freelancerprofile);
	public void insertPjpkeyword(Map<String, Object> map);
	
	//수정//
	public void listUpdate(FreeLancerProfile freelancerprofile);
	//public void keyUpdate(Map<String, Object> map);
	public void keyUpdate(FreePickKeyWord freepickkeyword);
	//public void keyDelete(Map<String, Object> map);


	//체크박스 삭제//
	void checkdelete1(Map<String, Object> map);

	long getTotalCountFree(long free_code);


	//프로필 수정//
	public FreeLancerProfile showContent(long pro_num);
	List<FreeLancerProfile> profile_free_select(String mem_email);
	
	//나영추가 + mydash_free
	public FreeLancer mydash_free_select(String mem_email);
	public void mydash_free_insert(FreeLancer freelancer);
	public void mydash_free_update(FreeLancer freelancer);
	public List<FreeLancer>select_pj_applied_free();
	public List<FreeLancer>select_pj_applied_free_paging(long pj_num);
	//프리랜서 찜
	List<FreeLancerPick>freepick_list(long cor_code);
	void freepick_insert(Map<String, Object>map);
	void freepick_del(Map<String, Object>map);

	//mydash_cor에서 프리랜서찜한 목록 보기
	long getTotalCountFreep(long cor_code);
	List<FreeLancerProfile> freepick_cor(Map<String, Object>map);
	
	//profile keyword 전체뽑기
	List<FreeLancerProfile> selectAllFreeKeywords();
	
	//계좌추가
	void updateACCTOX(long free_code);
	void addACCT(Freelnacer_account freeacct);
	Freelnacer_account selectFreeACCT(long free_code);
	void updateACCT(Freelnacer_account freeacct);
}
