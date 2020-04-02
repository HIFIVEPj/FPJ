package fp.freelancerprofile.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PagingVO {
	//total:게시글총개수, cntPerPage:페이지당글개수  start, end : 쿼리용
	long total;
	private int nowPage, startPage, endPage,  cntPerPage, lastPage, start, end;
	private int cntPage=5;

	public PagingVO(long total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage()); //마지막페이지(총게시글개수,페이지당글개수)
		calcStartEndPage(getNowPage(), cntPage); //시작,끝페이지(현재페이지,페이지당글개수)
		clacStartEnd(getNowPage(), getCntPerPage()); //시작페이지(현재페이지, 페이지당글개수)
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
	
	@Override
	public String toString() {
		return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endpage=" + endPage + ", total=" + total +
				", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end +", cntPage=" + cntPage + "]";
	}
	
}
