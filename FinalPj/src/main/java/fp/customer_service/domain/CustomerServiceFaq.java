package fp.customer_service.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerServiceFaq {
	private long faq_num;
	private String mem_email;
	private String faq_sub;
	private String faq_cont;
	private String faq_cate;
	
	private int faq_cate_count_project;
	private int faq_cate_count_freemarket;
	private int faq_cate_count_freelancer;
	private int faq_cate_count_sign;
	private int faq_cate_count_meminfo;
	private int faq_cate_count_payment;
	private int faq_cate_count_discount;
	private int faq_cate_count_etc;	
}