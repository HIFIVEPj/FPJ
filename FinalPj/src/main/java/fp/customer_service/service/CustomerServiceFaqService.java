package fp.customer_service.service;

import java.util.List;

import fp.customer_service.domain.CustomerServiceFaq;

public interface CustomerServiceFaqService {

	List<CustomerServiceFaq> faq_listS();

	CustomerServiceFaq faq_contentS(long faq_num);	
	long faq_writeS(CustomerServiceFaq customerServiceFaq);
	boolean faq_deleteS(long faq_num);
	boolean faq_modifyS(CustomerServiceFaq customerServiceFaq);
	
	// 카테고리 개수
	int faq_cate_count_projectS();
	int faq_cate_count_freemarketS();
	int faq_cate_count_freelancerS();
	int faq_cate_count_signS();
	int faq_cate_count_meminfoS();
	int faq_cate_count_paymentS();
	int faq_cate_count_discountS();
	int faq_cate_count_etcS();

}
