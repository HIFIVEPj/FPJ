/*
package fp.password.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserAuthDAO userAuthDAO;
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
       CustomUserDetails user = userAuthDAO.getUserById(email);
		
       log.info("*****************************************************************"+user);
       log.info("###################################"+email);
        if(user==null) {
            throw new UsernameNotFoundException(email);
        }
        return user;
    }


}
*/