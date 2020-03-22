package fp.customer_service.service;

import java.util.List;
import java.util.Map;

import fp.customer_service.domain.CustomerServiceNotice;
import fp.customer_service.domain.Notice_recommend;

public interface CustomerServiceNoticeService {
	List<CustomerServiceNotice> notice_listS();
	CustomerServiceNotice notice_contentS(long notice_num);
	boolean notice_countS(long notice_num);
	long notice_writeS(CustomerServiceNotice customerServiceNotice);
	boolean notice_deleteS(long notice_num);
	boolean notice_modifyS(CustomerServiceNotice customerServiceNotice);

	// 문의글 좋아요
	List<Notice_recommend>notice_recommend_listS(String mem_email);
	void notice_recommend_insertS(Map<String, Object>map);
	void notice_recommend_delS(Map<String, Object>map);
}
