package fp.freelancerlist.mapper;

import java.util.List;


import fp.freelancerlist.domain.FreeLancerListVO;
import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.domain.List_Type;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;


public interface FreeLancerlistMapper {	

	//게시물 총 갯수
	public int countFreeLancer();
	//페이징처리 게시글 조회
	public List<List_FreeLancer> SelectList(List_PagingVO vo);
	public List<List_FreeLancerProfile> SelectList2();
	public List<Project> SelectList3();

	public List<Freelancer_FreeLancerProfile> freelancercontent(long free_code);
	public List<Freelancer_FreeLancerProfile> freelancercontent2(long free_code);
	public List<Freelancer_FreeLancerProfile> freelancercontent3(long free_code);
	public List<Type> freelancercontent4(long free_code);
	public List<Project> freelancercontent5(long free_code);
}
