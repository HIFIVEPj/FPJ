package fp.customer_service.mapper;

import java.util.List;
import fp.customer_service.domain.CustomerServiceFaq;

public interface CustomerServiceFaqMapper {

	List<CustomerServiceFaq> faq_list();

	CustomerServiceFaq faq_content(long faq_num);
	long faq_write(CustomerServiceFaq customerServiceFaq);
	boolean faq_delete(long faq_num);
	boolean faq_modify(CustomerServiceFaq customerServiceFaq);
		
	// 카테고리 개수
	int faq_cate_count_project(); 
	int faq_cate_count_freemarket();
	int faq_cate_count_freelancer();
	int faq_cate_count_sign();
	int faq_cate_count_meminfo();
	int faq_cate_count_payment();
	int faq_cate_count_discount();
	int faq_cate_count_etc();
	
}
