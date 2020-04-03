package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import fp.market.domain.Member;
import lombok.AllArgsConstructor;
import fp.market.domain.Member;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class List_FreeLancerReview {
	
	private long freerev_num; //프리랜서 리뷰번호
	private long pro_num; //개인프로필번호
	private long free_code; //개인등록번호
	private String mem_email; //이메일
	private String freerev_cont; //내용
	private int freerev_star; //별점
	private Date freerev_rdate; //등록일
	
	private List<List_FreeLancerReview> freelancerreview;
	private Member mmember;
	private List<FreeLancerProfile> freeLancerProfile;
	private List<FreeLancer> freelancer;
	
	private int nowPage, startPage, endPage, cntPerPage, lastPage, start, end;
	private long total;
	private int cntPage=5;
	private int firstPage=1;


	public List_FreeLancerReview(long total, int nowPage, int cntPerPage, long free_code, long pro_num) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		setFree_code(free_code);
		setPro_num(pro_num);
		calcLastPage(getTotal(), getCntPerPage()); //마지막페이지(총게시글개수,페이지당글개수)
		calcStartEndPage(getNowPage(), cntPage); //시작,끝페이지(현재페이지,페이지당글개수)
		clacStartEnd(getNowPage(), getCntPerPage()); //시작페이지(현재페이지, 페이지당글개수)
		getFree_code();
		getPro_num();
	}
	
	//쿼리용 start, end계산
	private void clacStartEnd(int nowPage, int cntPerPage) {
		setEnd(nowPage * cntPerPage);
		setStart(getEnd() - cntPerPage +1);
	}

	//제일 마지막페이지 계산
	private void calcLastPage(long total, int cntPerPage) {
		setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
	}
	//마지막페이지 계산
	public void calcStartEndPage(int nowPage, int cntPage) {
		setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
		if (getLastPage() < getEndPage()) {
				setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if(getStartPage() <1) {
			setStartPage(1);
		}
	}

	/*@Override
	public String toString() {
		return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endpage=" + endPage + ", total=" + total +
				", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end +", cntPage=" + cntPage + ", free_code: " + free_code + ", pro_num:" +  pro_num+mMember+"]";
	}*/
}
