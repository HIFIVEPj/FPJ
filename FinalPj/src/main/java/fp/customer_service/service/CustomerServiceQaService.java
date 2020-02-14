package fp.customer_service.service;

import java.util.List;

import fp.customer_service.domain.CustomerServiceQa;

public interface CustomerServiceQaService {
	List<CustomerServiceQa> qa_listS();
	CustomerServiceQa qa_contentS(long qa_num);	
	boolean qa_countS(long qa_num);
	long qa_writeS(CustomerServiceQa customerServiceQa);
	boolean qa_deleteS(long qa_num);
	boolean qa_modifyS(CustomerServiceQa customerServiceQa);
	/*
	void insertS(Address address);
	void deleteS(long seq);
	*/
}
