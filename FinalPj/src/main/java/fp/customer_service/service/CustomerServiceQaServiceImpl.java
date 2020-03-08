package fp.customer_service.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.ProjectPick;
import fp.customer_service.domain.BoardAttachVO;
import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServiceQa;
import fp.customer_service.domain.Qa_recommend;
import fp.customer_service.mapper.BoardAttachMapper;
import fp.customer_service.mapper.CustomerServiceQaMapper;
import fp.customer_service.mapper.ReplyMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CustomerServiceQaServiceImpl implements CustomerServiceQaService {

	@Setter(onMethod_= @Autowired)
	private CustomerServiceQaMapper customerServiceQaMapper;

	@Setter(onMethod_= @Autowired)
	private BoardAttachMapper attachMapper;
	
	@Setter(onMethod_= @Autowired)
	private ReplyMapper replymapper;
	
	/*
	@Override
	public List<CustomerServiceQa> qa_listS() {
		return customerServiceQaMapper.qa_list();
	}
	*/
	
	@Override
	public CustomerServiceQa qa_contentS(long qa_num) {
		return customerServiceQaMapper.qa_content(qa_num);
	}
	
	@Override
	public boolean qa_vcntS(long qa_num) {
		return customerServiceQaMapper.qa_vcnt(qa_num);
	}
	
	@Transactional
	@Override
	public long qa_writeS(CustomerServiceQa customerServiceQa) {
		log.info("&&&&&write : " + customerServiceQa);
		customerServiceQaMapper.qa_write(customerServiceQa);
		if(customerServiceQa.getAttachList() == null || customerServiceQa.getAttachList().size() <= 0) {
			//return customerServiceQaMapper.qa_write(customerServiceQa);
			return -1;
		}
		customerServiceQa.getAttachList().forEach(attach ->{
			attach.setQa_num(customerServiceQa.getQa_num());
			attachMapper.insert(attach);
		});
		//return customerServiceQaMapper.qa_write(customerServiceQa);
		return -1;
	}
	
	@Transactional
	@Override
	public boolean qa_deleteS(long qa_num) {
		attachMapper.deleteAll(qa_num);
		return customerServiceQaMapper.qa_delete(qa_num);
	}
	
	@Transactional
	@Override
	public boolean qa_modifyS(CustomerServiceQa customerServiceQa) {
		attachMapper.deleteAll(customerServiceQa.getQa_num());
		boolean modifyResult = customerServiceQaMapper.qa_modify(customerServiceQa) == true;
		if(modifyResult == true && customerServiceQa.getAttachList() != null && customerServiceQa.getAttachList().size() > 0) {
			customerServiceQa.getAttachList().forEach(attach -> {
				attach.setQa_num(customerServiceQa.getQa_num());
				attachMapper.insert(attach);				
			});			
		}
		//return customerServiceQaMapper.qa_modify(customerServiceQa);
		return modifyResult;
	}
	
	/*
	@Override
	public int qa_countS() {
		return customerServiceQaMapper.qa_count();
	}
	*/
	
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
	
	@Override
	public List<BoardAttachVO> getAttachList(Long qa_num) {
		return attachMapper.findByQa_num(qa_num);
	}
	
	@Override
	public int qa_cate_count_projectS() {
		return customerServiceQaMapper.qa_cate_count_project();
	}
	@Override
	public int qa_cate_count_freemarketS() {
		return customerServiceQaMapper.qa_cate_count_freemarket();
	}
	@Override
	public int qa_cate_count_freelancerS() {
		return customerServiceQaMapper.qa_cate_count_freelancer();
	}
	@Override
	public int qa_cate_count_signS() {
		return customerServiceQaMapper.qa_cate_count_sign();
	}
	@Override
	public int qa_cate_count_meminfoS() {
		return customerServiceQaMapper.qa_cate_count_meminfo();
	}
	@Override
	public int qa_cate_count_paymentS() {
		return customerServiceQaMapper.qa_cate_count_payment();
	}
	@Override
	public int qa_cate_count_discountS() {
		return customerServiceQaMapper.qa_cate_count_discount();
	}
	@Override
	public int qa_cate_count_etcS() {
		return customerServiceQaMapper.qa_cate_count_etc();
	}
	
	// 문의글 좋아요
	@Override
	public List<Qa_recommend>qa_recommend_listS(String mem_email){
		return customerServiceQaMapper.qa_recommend_list(mem_email);
	}
	@Override
	@Transactional
	public void qa_recommend_insertS(Map<String, Object>map) {
		customerServiceQaMapper.qa_recommend_insert(map);
		customerServiceQaMapper.qa_recommend_update_in(map);	
	}
	@Override
	@Transactional
	public void qa_recommend_delS(Map<String, Object>map) {
		customerServiceQaMapper.qa_recommend_del(map);
		customerServiceQaMapper.qa_recommend_update_del(map);
	}
	/*
	@Override
	public Map<String, Object> qa_recommend_update_inS(Map<String, Object>map) {
		return customerServiceQaMapper.qa_recommend_update_in(map);		
	}
	
	@Override
	public Map<String, Object> qa_recommend_update_delS(Map<String, Object>map) {
		return customerServiceQaMapper.qa_recommend_update_del(map);	
	}
	*/
}
