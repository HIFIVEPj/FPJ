package fp.customer_service.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServiceNotice;
import fp.customer_service.domain.CustomerServicePagingVO;
import fp.customer_service.domain.CustomerServiceQa;
import fp.customer_service.mapper.CustomerServiceQaMapper;

@Service
public class CustomerServiceQaServiceImpl implements CustomerServiceQaService {

	@Autowired
	private CustomerServiceQaMapper customerServiceQaMapper;
	
	/*
	@Override
	public List<CustomerServiceQa> qa_listS() {
		return customerServiceQaMapper.qa_list();
	}
	*/
	
	@Override
	public CustomerServiceQa qa_contentS(long notice_num) {
		return customerServiceQaMapper.qa_content(notice_num);
	}
	
	@Override
	public boolean qa_vcntS(long notice_num) {
		return customerServiceQaMapper.qa_vcnt(notice_num);
	}

	@Override
	public long qa_writeS(CustomerServiceQa customerServiceQa) {
		return customerServiceQaMapper.qa_write(customerServiceQa);
	}
	
	@Override
	public boolean qa_deleteS(long qa_num) {
		return customerServiceQaMapper.qa_delete(qa_num);
	}
	
	@Override
	public boolean qa_modifyS(CustomerServiceQa customerServiceQa) {
		return customerServiceQaMapper.qa_modify(customerServiceQa);
	}
	
	/*
	@Override
	public int qa_countS() {
		return customerServiceQaMapper.qa_count();
	}
	*/
	
	@Override
	public int qa_cate_count_projectS() {
		return customerServiceQaMapper.qa_cate_count_project();
	}

	/*
	@Override
	public List<CustomerServiceQa> qa_listS(CustomerServicePagingVO customerServicePagingVO) {
		return customerServiceQaMapper.qa_list(customerServicePagingVO);
	}
	*/
	@Override
	public List<CustomerServiceQa> qa_listS(Criteria cri) {
		return customerServiceQaMapper.qa_list(cri);
	}
	
	@Override
	public int qa_countS(Criteria cri) {
		return customerServiceQaMapper.qa_count(cri);
	}
	
}
