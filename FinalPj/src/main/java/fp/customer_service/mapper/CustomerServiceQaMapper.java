package fp.customer_service.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServiceQa;
import fp.customer_service.domain.Qa_recommend;

public interface CustomerServiceQaMapper {
	/*
	List<CustomerServiceQa> qa_list();
	*/
	CustomerServiceQa qa_content(long qa_num);
	boolean qa_vcnt(long qa_num);
	long qa_write(CustomerServiceQa customerServiceQa);
	boolean qa_delete(long qa_num);
	boolean qa_modify(CustomerServiceQa customerServiceQa);
		
	//int qa_count(); // 페이징 게시물 총 개수
	
	//List<CustomerServiceQa> qa_list(CustomerServicePagingVO customerServicePagingVO); // 페이징 처리 게시글 조회
	
	// 카테고리 sorting
	int qa_cate_count_project(); 
	int qa_cate_count_freemarket();
	int qa_cate_count_freelancer();
	int qa_cate_count_sign();
	int qa_cate_count_meminfo();
	int qa_cate_count_payment();
	int qa_cate_count_discount();
	int qa_cate_count_etc();
	
	public void updateReplyCnt(@Param("qa_num") Long qa_num, @Param("amount") int amount); // 댓글 개수, amount : 증감 의미
	
	//List<CustomerServiceQa> qa_list(CustomerServicePagingVO customerServicePagingVO);
	
	List<CustomerServiceQa> qa_list(Criteria cri);
	
	int qa_count(Criteria cri);
	
	// 좋아요
	List<Qa_recommend>qa_recommend_list(String mem_email);
	void qa_recommend_insert(Map<String, Object>map);
	void qa_recommend_del(Map<String, Object>map);
	void qa_recommend_update_in(Map<String, Object>map);
	//boolean qa_recommend_update_in(long qa_num);
	void qa_recommend_update_del(Map<String, Object>map);
	//boolean qa_recommend_update_del(long qa_num);
	List<Qa_recommend>qa_recommend_names(long qa_num);

	// 이전글, 다음글
	long qa_prev(long qa_num);
	long qa_next(long qa_num);
	
	// 비슷한 문의
	List<CustomerServiceQa> qa_same_cate(String qa_cate);
}
