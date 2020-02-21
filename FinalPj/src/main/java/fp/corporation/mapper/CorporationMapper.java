
package fp.corporation.mapper;

import fp.corporation.domain.Corporation;

public interface CorporationMapper {
	Corporation mydash_cor_select(String mem_email); 
	void insert(Corporation corporation);
}
