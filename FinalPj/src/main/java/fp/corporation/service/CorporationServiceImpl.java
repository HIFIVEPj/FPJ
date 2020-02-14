package fp.corporation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.corporation.domain.Corporation;
import fp.corporation.mapper.CorporationMapper;

@Service
public class CorporationServiceImpl implements CorporationService {
	@Autowired
	CorporationMapper mapper;
	
	@Override
	public void insert(Corporation corporation) {
		mapper.insert(corporation);
	}

}
