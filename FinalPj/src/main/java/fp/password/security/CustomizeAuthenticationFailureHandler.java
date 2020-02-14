package fp.password.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class CustomizeAuthenticationFailureHandler implements AuthenticationFailureHandler {

	   @Autowired
	   private BCryptPasswordEncoder new_encoder;


	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
        new_encoder = new BCryptPasswordEncoder();
        System.err.println("로그인 실패");

//      System.err.println("user_passwd : " + encoder.encode(req.getParameter("user_passwd")));
        
        
        response.sendRedirect(request.getContextPath() + "/member/login?error=true");
        
       // request.getRequestDispatcher("/member/login").forward(request, response);        
    }


}
