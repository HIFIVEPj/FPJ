package fp.customer_service.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.ReplyPageDTO;
import fp.customer_service.domain.ReplyVO;
import fp.customer_service.service.ReplyService;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/replies/")
@RestController
public class ReplyController {
	@Autowired
	private ReplyService replyService;

	@PostMapping(value="/new", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		int insertCount = replyService.register(vo);
		return insertCount==1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@GetMapping(value = "/{qacomm_num}", 
			produces = { MediaType.APPLICATION_XML_VALUE, 
					     MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<ReplyVO> get(@PathVariable("qacomm_num") Long qacomm_num) {

		return new ResponseEntity<>(replyService.get(qacomm_num), HttpStatus.OK);
	}
	
	
	@RequestMapping(method = { RequestMethod.PUT,
			RequestMethod.PATCH }, value = "/{qacomm_num}", consumes = "application/json", produces = {
					MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(
			 @RequestBody ReplyVO vo, 
			 @PathVariable("qacomm_num") Long qacomm_num) {

		vo.setQacomm_num(qacomm_num);
		
		return replyService.modify(vo) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

	@DeleteMapping(value = "/{qacomm_num}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@PathVariable("qacomm_num") Long qacomm_num) {

		return replyService.remove(qacomm_num) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	@GetMapping(value = "/pages/{qa_num}/{page}", 
			produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("qa_num") Long qa_num) {		
		Criteria cri = new Criteria(page, 5);
		log.info("@@@qa_num : " + qa_num);
		log.info("###cri : " + cri);
		return new ResponseEntity<>(replyService.getListPage(cri, qa_num), HttpStatus.OK);
	}
	
}
