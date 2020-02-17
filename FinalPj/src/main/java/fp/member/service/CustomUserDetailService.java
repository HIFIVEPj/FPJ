
package fp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.member.domain.CustomUser;
import fp.member.domain.Member;
import fp.member.mapper.MemberMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CustomUserDetailService implements UserDetailsService {
	
	@Setter(onMethod_ = {@Autowired})
	private MemberMapper memberMapper;
	
 	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		log.warn("##################################################3Load User By dmail : " + email );
		Member vo = memberMapper.selectMemList(email);
		if(vo ==null) {
			throw new UsernameNotFoundException(email);
		}
		log.warn("queried by member mapper: " + vo);
		return vo == null ? null : new CustomUser(vo);
	} 
		

}
