package fp.freelancerprofile.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;
@Log4j
public class OpenBankingController {
	public static String getToken(HttpServletRequest request,HttpServletResponse response
					,JSONObject json, String requestURL) throws Exception{
				// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보 

		String _token = "";
		try{
			String requestString = "";
			URL url = new URL(requestURL);
			log.info("requestURL: "+requestURL);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true); 				
			connection.setInstanceFollowRedirects(false);  
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json");
			OutputStream os= connection.getOutputStream();
			os.write(json.toString().getBytes());
			connection.connect();
			StringBuilder sb = new StringBuilder(); 
			log.info("커넥션코드: "+connection.getResponseCode());
			if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
				String line = null;  
				while ((line = br.readLine()) != null) {  
					sb.append(line + "\n");  
				}
				br.close();
				requestString = sb.toString();
			}
			os.flush();
			connection.disconnect();
			JSONParser jsonParser = new JSONParser();
			log.info("requestString: "+requestString);
			JSONObject jsonObj = (JSONObject) jsonParser.parse(requestString);
			if((Long)jsonObj.get("code")  == 0){
				JSONObject getToken = (JSONObject) jsonObj.get("response");
				System.out.println("getToken==>>"+getToken.get("access_token") );
				_token = (String)getToken.get("access_token");
			}
		}catch(Exception e){
			log.info("EXCEPTION E1: "+e);
			e.printStackTrace();
			_token = "";
		}
		return _token;
	}
	
	public static String getBankInfo(HttpServletRequest request,HttpServletResponse response
			,String token,String bank_code, String bank_num ) throws Exception {
		// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보 
		String requestURL = "https://api.iamport.kr/vbanks/holder";
		String bank_holder = "";
		JSONObject json = new JSONObject();
		try{
			bank_code = URLEncoder.encode(bank_code, "UTF-8");
			bank_num=URLEncoder.encode(bank_num, "UTF-8");
			json.put("bank_code",bank_code);
			json.put("bank_num",bank_num);
			
			String requestString = "";
			URL url = new URL(requestURL);
			log.info("requestURL: "+requestURL);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true); 				
			connection.setInstanceFollowRedirects(false);  
			connection.setRequestMethod("GET");
			connection.setRequestProperty("Authorization", "Bearer "+token);
			OutputStream os= connection.getOutputStream();
			os.write(json.toString().getBytes());
			connection.connect();
			StringBuilder sb = new StringBuilder(); 
			log.info("커넥션코드: "+connection.getResponseCode());
			if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
				String line = null;  
				while ((line = br.readLine()) != null) {  
					sb.append(line + "\n");  
				}
				br.close();
				requestString = sb.toString();
			}
			os.flush();
			connection.disconnect();
			JSONParser jsonParser = new JSONParser();
			log.info("requestString: "+requestString);
			JSONObject jsonObj = (JSONObject) jsonParser.parse(requestString);
			if((Long)jsonObj.get("code")  == 0){
				JSONObject getToken = (JSONObject) jsonObj.get("response");
				System.out.println("getToken==>>"+getToken.get("bank_holder") );
				bank_holder = (String)getToken.get("bank_holder");
			}
		}catch(Exception e){
			log.info("EXCEPTION E2: "+e);
			e.printStackTrace();
			bank_holder = "";
		}
		return bank_holder;
	}
}
