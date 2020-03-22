
package fp.login.api;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;
@Log4j
public class GoogleController {
	 private final static String G_CLIENT_ID = "49171940423-qp63alvth2nt9734s5pom3cioudkvn3g.apps.googleusercontent.com";
	 private final static String G_CLIENT_SECRET = "E9Avtsc6Y2v0PkHebnbHEvis";
     //이런식으로 REDIRECT_URI를 써넣는다.                                                                                                  //                                                //
	private final static String G_REDIRECT_URI = "http://127.0.0.1:8090/google";
	
	public static String getAuthorizationUrl(HttpSession session) {
		String googleUrl = "https://accounts.google.com/o/oauth2/v2/auth?" + "client_id=" + G_CLIENT_ID +"&redirect_uri="
		+ G_REDIRECT_URI + "&response_type=code"+"&scope=https://www.googleapis.com/auth/userinfo.email&access_type=offline";
			
		return googleUrl;
		}
	//"&scope=https://www.googleapis.com/auth/contacts.readonly"
	//&scope=https://www.googleapis.com/auth/userinfo.email&approval_prompt=force&access_type=offline"
		
		public static JsonNode getAccessToken(String autorize_code) {
		final String RequestUrl = "https://www.googleapis.com/oauth2/v4/token";
		log.info("여기오니?: ");
		
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
		postParams.add(new BasicNameValuePair("client_id", "49171940423-qp63alvth2nt9734s5pom3cioudkvn3g.apps.googleusercontent.com")); // REST API KEY
		postParams.add(new BasicNameValuePair("client_secret", "E9Avtsc6Y2v0PkHebnbHEvis")); // G_CLIENT_SECRET
		postParams.add(new BasicNameValuePair("redirect_uri", "http://127.0.0.1:8090/google")); // 리다이렉트 URI                                                              
		postParams.add(new BasicNameValuePair("code", autorize_code)); // 로그인 과정중 얻은 code 값
		
		log.info("autorize_code: "+autorize_code);
		
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);
		
		JsonNode returnNode = null;
		try {
		post.setEntity(new UrlEncodedFormEntity(postParams));
		final HttpResponse response = client.execute(post);
		
		// JSON 형태 반환값 처리
		ObjectMapper mapper = new ObjectMapper();
		returnNode = mapper.readTree(response.getEntity().getContent());
		log.info("returnNode 코드코드코드 받아옴 : "+returnNode);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
		// clear resources
		}
		return returnNode;
		}
		
		
		public static JsonNode getGoogleUserInfo(JsonNode accessToken) {
			log.info("토큰 1: " + accessToken );
			final String RequestUrl = "https://accounts.google.com";
			//https://www.googleapis.com/oauth2/v2/userinfo
			final HttpClient client = HttpClientBuilder.create().build();
			final HttpPost post = new HttpPost(RequestUrl);
			log.info("토큰 2: " + post );
			// add header
			post.addHeader("Authorization", "Bearer " + accessToken);
			JsonNode returnNode = null;
			
		try {
			final HttpResponse response = client.execute(post);
			log.info("response: "+response);
			// JSON 형태 반환값 처리
			ObjectMapper mapper = new ObjectMapper();
			returnNode = mapper.readTree(response.getEntity().getContent());
			log.info("returnNode: "+returnNode);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
		// clear resources
		}
		return returnNode;
		} 

}