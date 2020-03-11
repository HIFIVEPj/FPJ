
package fp.corporation.mapper;

import fp.corporation.domain.Corporation;

public interface CorporationMapper {
	Corporation mydash_cor_select(String mem_email); 
	void insert(Corporation corporation);
	void mydash_cor_update(Corporation corporation);
	//void update_cor_auth(String mem_email);

}
