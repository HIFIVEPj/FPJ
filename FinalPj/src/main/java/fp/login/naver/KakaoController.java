
package fp.login.naver;

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

public class KakaoController {
		 private final static String K_CLIENT_ID = "f07c6ec422b1d9826d801eb9e9c78e91";
	      //이런식으로 REDIRECT_URI를 써넣는다.                                                                                                  //                                                //
		//private final static String K_REDIRECT_URI = "http://13.209.113.112:8090/kakaologin";
		 private final static String K_REDIRECT_URI = "http://www.hifive.store/kakaologin";
		 
		public static String getAuthorizationUrl(HttpSession session) {
		String kakaoUrl = "https://kauth.kakao.com/oauth/authorize?" + "client_id=" + K_CLIENT_ID + "&redirect_uri="
		+ K_REDIRECT_URI + "&response_type=code";
		return kakaoUrl;
		}
		
		
		public static JsonNode getAccessToken(String autorize_code) {
		final String RequestUrl = "https://kauth.kakao.com/oauth/token";
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
		postParams.add(new BasicNameValuePair("client_id", "f07c6ec422b1d9826d801eb9e9c78e91")); // REST API KEY
		postParams.add(new BasicNameValuePair("redirect_uri", "http://www.hifive.store/kakaologin")); // 리다이렉트 URI                                                              
		postParams.add(new BasicNameValuePair("code", autorize_code)); // 로그인 과정중 얻은 code 값
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);
		
		JsonNode returnNode = null;
		try {
		post.setEntity(new UrlEncodedFormEntity(postParams));
		final HttpResponse response = client.execute(post);
		
		// JSON 형태 반환값 처리
		ObjectMapper mapper = new ObjectMapper();
		returnNode = mapper.readTree(response.getEntity().getContent());
		
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
		
		public static JsonNode getKakaoUserInfo(JsonNode accessToken) {
			final String RequestUrl = "https://kapi.kakao.com/v2/user/me";
			final HttpClient client = HttpClientBuilder.create().build();
			final HttpPost post = new HttpPost(RequestUrl);
			
			// add header
			post.addHeader("Authorization", "Bearer " + accessToken);
			JsonNode returnNode = null;
		
		try {
			final HttpResponse response = client.execute(post);
			// JSON 형태 반환값 처리
			ObjectMapper mapper = new ObjectMapper();
			returnNode = mapper.readTree(response.getEntity().getContent());
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