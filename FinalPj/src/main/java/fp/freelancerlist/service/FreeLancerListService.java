package fp.freelancerlist.service;

import java.util.*;


import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;

import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.domain.List_Type;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.List_FreeLancerReview;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;



public interface FreeLancerListService {
	
	//리스트//
	public FreeLancerProfile profile_select(String mem_email);
	public int countFreeLancer();
	public int countFreeLancerPaging(Map<String, Object> map);
	public List<List_FreeLancer> SelectList(Map<String, Object> map);
	public List<List_FreeLancerProfile> SelectList2();
	public List<Project> SelectList3();
	
	//컨텐츠//
	public List<Freelancer_FreeLancerProfile> freelancercontent(Map<String, Object> map);
	public List<Freelancer_FreeLancerProfile> selectTel(Map<String, Object> map);
	public List<Freelancer_FreeLancerProfile> freelancercontent2(long free_code);
	public List<Freelancer_FreeLancerProfile> freelancercontent3(long free_code);
	public List<Type> freelancercontent4(long free_code);
	public List<Project> freelancercontent5(long free_code);

	//프로필 조회수 및 별점//
	public void vcnt(long pro_num);
	public List<List_FreeLancerReview> selectStar(long free_code);
	public List<List_FreeLancerReview> selectReviewCount();
	public int selectStar_list();
	//리뷰//
	public long countReview(Map<String, Object> map);
	public List<List_FreeLancerReview> freelancerReview(List_FreeLancerReview freelancerreview);
	
	
	public FreeLancer free_list_select(String mem_email);
	public long getTotalCountFree(long free_code);
	
	//리뷰 crud//
	public void reviewInsert(Map<String, Object> map);
	public void reviewDelete(long freerev_num);
	public void reviewUpdate(Map<String, Object> map);
	public List<FreeLancer> selectFile(String mem_email);




	


	

	
	

	
	
	
	
}
