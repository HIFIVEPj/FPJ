package fp.password.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import fp.member.domain.CustomUser;
import fp.member.domain.Member;
import fp.member.service.CustomUserDetailService;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	CustomUserDetailService customService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String userId =(String)authentication.getPrincipal(); //아이디 받기
		String userPw=(String)authentication.getCredentials(); //비밀번호 받기
		CustomerUserDetail customUserDetail =new CustomerUserDetail();
		
		UsernamePasswordAuthenticationToken result= new UsernamePasswordAuthenticationToken(userId, userPw);
		result.setDetails(customUserDetail);
		return result;
	
			
		/*CustomerUser customUser = new CustomerUser(vo);

		Member vo = CustomUserDetailService.loadUserByUsername(authToken.getName()); //UserDetailsService에서 유저정보를 불러온다.
	    if (vo == null) {
	      throw new UsernameNotFoundException(authToken.getName());
	    }

	    if (!matchPassword(vo.getPwd(), authToken.getCredentials())) {
	      throw new BadCredentialsException("not matching username or password");
	    }

	    List<GrantedAuthority> authorities = (List<>>) vo.getAuthList();

	    return new UsernamePasswordAuthenticationToken(vo,null,authorities); */
	}

	 private boolean matchPassword(String password, Object credentials) {
		    return password.equals(credentials);
		 }
	@Override
	public boolean supports(Class<?> authentication) {
		
		  return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}

}
