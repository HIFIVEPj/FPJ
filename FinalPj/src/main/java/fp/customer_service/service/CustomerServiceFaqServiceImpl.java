package fp.customer_service.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.customer_service.domain.CustomerServiceFaq;
import fp.customer_service.mapper.CustomerServiceFaqMapper;

@Service
public class CustomerServiceFaqServiceImpl implements CustomerServiceFaqService {

	@Autowired
	private CustomerServiceFaqMapper customerServiceFaqMapper;

	@Override
	public List<CustomerServiceFaq> faq_listS() {
		return customerServiceFaqMapper.faq_list();
	}
	
	@Override
	public CustomerServiceFaq faq_contentS(long faq_num) {
		return customerServiceFaqMapper.faq_content(faq_num);
	}
	
	@Override
	public long faq_writeS(CustomerServiceFaq customerServiceFaq) {
		return customerServiceFaqMapper.faq_write(customerServiceFaq);
	}
	
	@Override
	public boolean faq_deleteS(long faq_num) {
		return customerServiceFaqMapper.faq_delete(faq_num);
	}
	
	@Override
	public boolean faq_modifyS(CustomerServiceFaq customerServiceFaq) {
		return customerServiceFaqMapper.faq_modify(customerServiceFaq);
	}

	
	@Override
	public int faq_cate_count_projectS() {
		return customerServiceFaqMapper.faq_cate_count_project();
	}
	@Override
	public int faq_cate_count_freemarketS() {
		return customerServiceFaqMapper.faq_cate_count_freemarket();
	}
	@Override
	public int faq_cate_count_freelancerS() {
		return customerServiceFaqMapper.faq_cate_count_freelancer();
	}
	@Override
	public int faq_cate_count_signS() {
		return customerServiceFaqMapper.faq_cate_count_sign();
	}
	@Override
	public int faq_cate_count_meminfoS() {
		return customerServiceFaqMapper.faq_cate_count_meminfo();
	}
	@Override
	public int faq_cate_count_paymentS() {
		return customerServiceFaqMapper.faq_cate_count_payment();
	}
	@Override
	public int faq_cate_count_discountS() {
		return customerServiceFaqMapper.faq_cate_count_discount();
	}
	@Override
	public int faq_cate_count_etcS() {
		return customerServiceFaqMapper.faq_cate_count_etc();
	}

}
