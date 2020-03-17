package fp.customer_service.mapper;

import java.util.List;
import java.util.Map;

import fp.customer_service.domain.CustomerServiceNotice;
import fp.customer_service.domain.Notice_recommend;

public interface CustomerServiceNoticeMapper {
	List<CustomerServiceNotice> notice_list();
	CustomerServiceNotice notice_content(long notice_num);
	boolean notice_count(long notice_num);
	long notice_write(CustomerServiceNotice customerServiceNotice);
	boolean notice_delete(long notice_num);
	boolean notice_modify(CustomerServiceNotice customerServiceNotice);
	
	// 좋아요
	List<Notice_recommend>notice_recommend_list(String mem_email);
	void notice_recommend_insert(Map<String, Object>map);
	void notice_recommend_del(Map<String, Object>map);
	void notice_recommend_update_in(Map<String, Object>map);
	void notice_recommend_update_del(Map<String, Object>map);
}
