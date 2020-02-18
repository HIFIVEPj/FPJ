/*
package fp.password.security;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import fp.member.domain.Member;
import lombok.Getter;


@Getter
public class CustomUser extends User{

	private	static final long serialVersionUID =1L;
	private Member member;
	
	public CustomUser(String email, String pwd, Collection<? extends GrantedAuthority> authList) {
		super(email,pwd,authList);
	}
	
	public CustomUser(Member vo) {
		super(vo.getEmail(),vo.getPwd(), vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		this.member=vo;
	}
	
	
} */
