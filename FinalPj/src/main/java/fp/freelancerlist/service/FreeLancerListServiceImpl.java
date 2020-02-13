package fp.freelancerlist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.mapper.FreeLancerlistMapper;


	@Service
	public class FreeLancerListServiceImpl implements FreeLancerListService {
	
	@Autowired
	private FreeLancerlistMapper mapper;
	
	@Override
	public int countFreeLancer(){
		return mapper.countFreeLancer();
	}

	@Override
	public List<List_FreeLancer> SelectList(List_PagingVO vo) {
		return mapper.SelectList(vo);
	}
}
