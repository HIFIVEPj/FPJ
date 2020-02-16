package fp.customer_service.service;

import java.util.List;

import fp.customer_service.domain.CustomerServiceNotice;

public interface CustomerServiceNoticeService {
	List<CustomerServiceNotice> notice_listS();
	CustomerServiceNotice notice_contentS(long notice_num);
	boolean notice_countS(long notice_num);
	long notice_writeS(CustomerServiceNotice customerServiceNotice);
	boolean notice_deleteS(long notice_num);
	boolean notice_modifyS(CustomerServiceNotice customerServiceNotice);
	/*
	void insertS(Address address);
	void deleteS(long seq);
	*/
}
