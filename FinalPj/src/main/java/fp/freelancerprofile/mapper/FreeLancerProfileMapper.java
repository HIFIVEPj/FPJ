package fp.freelancerprofile.mapper;

import java.util.*;


import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerPick;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreePickKeyWord;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.Freelnacer_account;
import fp.freelancerprofile.domain.KeyWord;



public interface FreeLancerProfileMapper {
	
	List<FreeLancer> selectProfileList();
	int countProfileList(List<Integer> pronum);
	
	
	List<FreeLancer> selectProfileContent(long PRO_NUM);
	public List<FreeLancerProfile> selectTel(long PRO_NUM);
	List<FreeLancerProfile> selectProfileContent2(long PRO_NUM);
	List<KeyWord> selectProfileContent3(long PRO_NUM);
	List<FreeLancer> selectProfileContent4(long free_code);
	
	void listDelete(long PRO_NUM);
	void listDelete2(long PRO_NUM);
	
	//게시물 총 갯수
	public long countProfileList(long free_code);

	
	//페이징처리 게시글 조회
	public List<FreeLancerProfile> selectPageList(Map<String, Object> map);
	public FreeLancerProfile selectProflie();

	//프로필 작성//
	public void listInsert(FreeLancerProfile freelancerprofile);
	//프로필 작성 후 프리랜서의 프로필 등록 여부 update
	public void free_profileoxUpdate(FreeLancerProfile freelancerprofile);
	
	//프로필 작성페이지 수정//
	public void listUpdate(FreeLancerProfile freelancerprofile);
	
	//public void keyUpdate(Map<String, Object> map);
	public void keyUpdate(FreePickKeyWord freepickkeyword);
	//public void keyDelete(Map<String, Object> map);
	void updateKeyword_Del(FreePickKeyWord freepickkeyword);
	void updateKeyword_In(FreePickKeyWord freepickkeyword);

	//체크박스 삭제//
	public void checkdelete1(Map<String, Object> map);
	
	
	public List<FreeLancerProfile> profile_free_select(String mem_email);
	public long getTotalCountFree(long free_code);
	
	//프로필 수정//
	public FreeLancerProfile showContent(long pro_num);
	//프로필 공개, 비공개//
	void choiceProfile(Map<String, Object> map);
	void closeProfile(Map<String, Object> map);
	
	//나영추가 + mydash_free
	public FreeLancer mydash_free_select(String mem_email);
	public void mydash_free_insert(FreeLancer freelancer);
	public void mydash_free_update(FreeLancer freelancer);
	public void mydash_update_classnum(String mem_email);
	public List<FreeLancer>select_pj_applied_free();
	List<FreeLancer>select_pj_applied_free_paging(long pj_num);
	
	public void insertPjpkeyword(Map<String, Object> map);
	//프리랜서 찜
	List<FreeLancerPick>freepick_list(long cor_code);
	void freepick_insert(Map<String, Object>map);
	void freepick_del(Map<String, Object>map);
	void freepick_pro_update_in(Map<String, Object>map);
	void freepick_pro_update_del(Map<String, Object>map);
	
	long getTotalCountFreep(long cor_code);
	List<FreeLancerProfile> freepick_cor(Map<String, Object>map);
	
	//profile keyword 전체뽑기
	List<FreeLancerProfile> selectAllFreeKeywords();
	//계좌추가
	void updateACCTOX(long free_code);
	void addACCT(Freelnacer_account freeacct);
	Freelnacer_account selectFreeACCT(long free_code);
	void updateACCT(Freelnacer_account freeacct);
	//프리랜서 활동점수 & 레벨
	void freePointUp(long free_code);
	void freeLevelUp1(long free_code);
	void freeLevelUp2(long free_code);
	

}