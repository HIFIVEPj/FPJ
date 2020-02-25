package fp.customer_service.domain;

//import lombok.Data;
import lombok.Getter;
//import lombok.Setter;
import lombok.ToString;

@Getter
@ToString

public class PagingInfo { 
	private int startPage; // 보고있는 페이지에서 시작번호 ( 예) 10개씩이라고하면 1 , 11 , 21 , 31 ..... )
	private int endPage; // 보고있는 페이지에서 끝번호 ( 예) 10개씩이라고하면 10, 20, 30 ,40 ,50 .....)
	private boolean prev,next; // 이번페이지가 있는지 다음페이지가 있는지 확인
	private int lastPage;
	private int total; // 전체 게시글 수
	private Criteria cri; // 요청이 온 페이지의 페이지번호와 몇개씩 보고 싶은지
	public PagingInfo(Criteria cri, int total) {
		this.cri = cri; // 요청 정보
		this.total = total; // 전체 게시글 수
		//this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0))*10;
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 5.0))*5;
		//this.startPage = this.endPage - 9;
		this.startPage = this.endPage - 4;
		int realEnd = (int) (Math.ceil((total*1.0)/cri.getAmount()));
		lastPage = realEnd;
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}


