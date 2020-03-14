package fp.customer_service.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.customer_service.domain.CustomerServiceNotice;
import fp.customer_service.domain.Notice_recommend;
import fp.customer_service.domain.Qa_recommend;
import fp.customer_service.mapper.CustomerServiceNoticeMapper;

@Service
public class CustomerServiceNoticeServiceImpl implements CustomerServiceNoticeService {
	@Autowired
	private CustomerServiceNoticeMapper customerServiceNoticeMapper;	
	
	@Override
	public List<CustomerServiceNotice> notice_listS() {
		return customerServiceNoticeMapper.notice_list();
	}
	
	@Override
	public CustomerServiceNotice notice_contentS(long notice_num) {
		return customerServiceNoticeMapper.notice_content(notice_num);
	}
	
	@Override
	public boolean notice_countS(long notice_num) {
		return customerServiceNoticeMapper.notice_count(notice_num);
	}
	
	@Override
	public long notice_writeS(CustomerServiceNotice customerServiceNotice) {
		return customerServiceNoticeMapper.notice_write(customerServiceNotice);
	}
	
	@Override
	public boolean notice_deleteS(long notice_num) {
		return customerServiceNoticeMapper.notice_delete(notice_num);
	}
	
	@Override
	public boolean notice_modifyS(CustomerServiceNotice customerServiceNotice) {
		return customerServiceNoticeMapper.notice_modify(customerServiceNotice);
	}
	
	// 공지글 좋아요
	@Override
	public List<Notice_recommend>notice_recommend_listS(String mem_email){
		return customerServiceNoticeMapper.notice_recommend_list(mem_email);
	}
	@Override
	@Transactional
	public void notice_recommend_insertS(Map<String, Object>map) {
		customerServiceNoticeMapper.notice_recommend_insert(map);
		customerServiceNoticeMapper.notice_recommend_update_in(map);	
	}
	@Override
	@Transactional
	public void notice_recommend_delS(Map<String, Object>map) {
		customerServiceNoticeMapper.notice_recommend_del(map);
		customerServiceNoticeMapper.notice_recommend_update_del(map);
	}

}
