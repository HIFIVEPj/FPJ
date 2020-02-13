package fp.freelancerlist.mapper;

import java.util.List;

import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerprofile.domain.FreeLancer;


public interface FreeLancerlistMapper {	

	//게시물 총 갯수
	public int countFreeLancer();
	//페이징처리 게시글 조회
	public List<List_FreeLancer> SelectList(List_PagingVO vo);

	

}
