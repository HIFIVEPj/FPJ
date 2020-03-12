package fp.freelancerprofile.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.log4j.Log4j;

@Log4j
public class OpenBankingController {
	public static JsonNode getAccessTokenIMPORT() {
	final String RequestUrl = "https://api.iamport.kr/users/getToken";
	final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
	postParams.add(new BasicNameValuePair("imp_key", "5114851490149044"));
	postParams.add(new BasicNameValuePair("imp_secret", "Z2qlDMfbUrEK0OdXOnqJrRcwAK9cycLyfbUSY94SBJDBxQzmeZ6FQibq3kDBxoaNz4GxeKqQt4r1U0o8"));
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
	
	public static JsonNode getBankInfo(String accessToken) {
		final String RequestUrl = "https://api.iamport.kr/vbanks/holder?bank_code=020&bank_num=1002234782602";
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpGet httpget = new HttpGet(RequestUrl);
		//httpget.setHeader("Content-Type","application/json");
		httpget.addHeader("Authorization", "Bearer "+accessToken);
		JsonNode returnNode = null;
		   Header[] headers = httpget.getAllHeaders(); 
		      String txt = "1:::::";
		         for(Header header : headers) { 
		             txt += header.getName() + " : " + header.getValue(); 
		             log.info("ㅎㅔ더 확인: "+txt);
		         }      
	
	try {
		final HttpResponse response = client.execute(httpget);
		// JSON 형태 반환값 처리
		ObjectMapper mapper = new ObjectMapper();
		returnNode = mapper.readTree(response.getEntity().getContent());
		log.info("상태번호 : "+response.getStatusLine().getStatusCode());
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
