package fp.customer_service.domain;

import org.springframework.web.util.UriComponentsBuilder;

//import org.springframework.web.util.UriComponentsBuilder;

//import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class Criteria { // 페이징에 필요한 클래스 // 검색 기준
	private int pageNum; // 현재 페이지
	private int amount; // 한 페이지 당 게시물 수
	private String type; // 검색 종류
	private String keyword; // 검색어
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
			.queryParam("pageNum", this.pageNum)
			.queryParam("amount", this.amount)
			.queryParam("type", this.type)
			.queryParam("keyword", this.keyword);
		return builder.toUriString();
	}
}