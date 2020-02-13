package fp.freelancerlist.service;

import java.util.*;

import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_PagingVO;



public interface FreeLancerListService {
	
	public int countFreeLancer();
	public List<List_FreeLancer> SelectList(List_PagingVO vo);

	
}
