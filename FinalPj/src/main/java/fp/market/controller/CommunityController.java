package fp.market.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {
	
	@RequestMapping("community_list")
	public String community_list() {
		return "community_list";
	}

	@RequestMapping("community_notice")
	public String community_notice() {
		return "community_notice";
	}
	@RequestMapping("community_notice_content")
	public String community_notice_content() {
		return "community_notice_content";
	}
	@RequestMapping("community_notice_write")
	public String community_notice_write() {
		return "community_notice_write";
	}
	
	@RequestMapping("community_qna")
	public String community_qna() {
		return "community_qna";
	}
	@RequestMapping("community_qna_content")
	public String community_qna_content() {
		return "community_qna_content";
	}
	@RequestMapping("community_qna_write")
	public String community_qna_write() {
		return "community_qna_write";
	}	
	
	@RequestMapping("community_faq")
	public String community_faq() {
		return "community_faq";
	}
}
