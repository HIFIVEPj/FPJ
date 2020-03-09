package fp.member.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.ToString;

@ToString
public class MemberVo {
	private long total;
	private int nowPage, startPage, endPage, cntPerPage, lastPage, start ,end;
	private int cntPage =5;
	private List<Member> list;
	//cntPerPage 리스트 갯수(amount)
	//nowPage 현재페이지
	private String type;
	private String keyword;
	
	private Date startDate;
	private Date endDate;
	
	public MemberVo() {
	}
	//여기 추가해봄
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}
	public String getListLink() {
		UriComponentsBuilder buildrer = UriComponentsBuilder.fromPath("")
				.queryParam("nowPage", this.nowPage)
				.queryParam("cntPerPage", this.getCntPerPage())
				.queryParam("keyword",this.getKeyword());
		return buildrer.toUriString();
	}
	
	//여기까지 추가해봄
	
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public MemberVo(long total, int nowPage, int cntPerPage, List<Member> list ,String keyword) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		this.list=list;
		this.keyword=keyword;
		calcStartEnd(getNowPage(), getCntPerPage());
	}
	public MemberVo(long total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage());
	}
	public MemberVo(long total, int nowPage, int cntPerPage,String type, String keyword, Date startDate, Date endDate) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		this.type=type;
		this.keyword=keyword;
		this.startDate=startDate;
		this.endDate=endDate;
		calcStartEnd(getNowPage(), getCntPerPage());
	}
	// 제일 마지막 페이지 계산
	public void calcLastPage(long total, int cntPerPage) {
		setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
	}
	// 시작, 끝 페이지 계산
	public void calcStartEndPage(int nowPage, int cntPage) {
		setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}
	// DB 쿼리에서 사용할 start, end값 계산
	public void calcStartEnd(int nowPage, int cntPerPage) {
		setEnd(nowPage * cntPerPage);
		setStart((nowPage-1) * cntPerPage);
	}
	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public int getCntPerPage() {
		return cntPerPage;
	}
	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}	
	public int setCntPage() {
		return cntPage;
	}
	public void getCntPage(int cntPage) {
		this.cntPage = cntPage;
	}
	
	public List<Member> getList() {
		return list;
	}
	public void setList(List<Member> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "MemberVo [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
				+ ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
				+ ", cntPage=" + cntPage + ", list=" + list + ", type=" + type + ", keyword=" + keyword+ ", startDate =" + startDate+ ", endDate=" + endDate  + "]" ;
	}

}
