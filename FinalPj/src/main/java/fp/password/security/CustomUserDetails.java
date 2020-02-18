/*
package fp.password.security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import fp.member.domain.Member;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Getter
public class CustomUserDetails implements UserDetails {
	
	
	@Setter(onMethod_ = {@Autowired})
	private Member member;  
	
	private	static final long serialVersionUID =1L;

	private String email;
	private String pwd;	
	private boolean enabled;
	private String auth;
	

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		 ArrayList<GrantedAuthority> authTest = new ArrayList<GrantedAuthority>();
		 authTest.add(new SimpleGrantedAuthority(auth));
	        return authTest;
	
	}
	
	@Override
	public String getPassword() {		
		return pwd;
	}

	@Override
	public String getUsername() {
		return email;
	}

	@Override
	public boolean isAccountNonExpired() {
		 return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		 return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		 return true;
	}

	@Override
	public boolean isEnabled() {
		return enabled;
	}
	
} 

*/
