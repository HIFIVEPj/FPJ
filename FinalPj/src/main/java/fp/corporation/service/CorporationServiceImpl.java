package fp.corporation.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import fp.corporation.domain.Corporation;
import fp.corporation.mapper.CorporationMapper;

@Service
public class CorporationServiceImpl implements CorporationService {
	@Autowired
	CorporationMapper mapper;
	
	@Override
	public Corporation mydash_cor_select(String mem_email) {
		return mapper.mydash_cor_select(mem_email);
	} 
	
	@Override
	@Transactional
	public void insert(Corporation corporation) {
		mapper.insert(corporation);
		mapper.update_cor_auth(corporation.getMem_email());
	}
	
	@Override
	public void mydash_cor_update(Corporation corporation) {
		mapper.mydash_cor_update(corporation);
	}

}

