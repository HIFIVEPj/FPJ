package fp.customer_service.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.customer_service.domain.CustomerServiceNotice;
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
	
	/*
	@Override
	public void insertS(Address address) {
		//addressDao.insert(address);
		addressMapper.insert(address);//AddressServiceImpl1는 mapper를 참조할 것임
	}
	@Override
	public void deleteS(long seq) {
		//addressDao.delete(seq);
		addressMapper.delete(seq);//AddressServiceImpl1는 mapper를 참조할 것임
	}
	*/

}
