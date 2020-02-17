package fp.freelancerprofile.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.service.FreeLancerProfileService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerProfileController {
	
	@Autowired
	private FreeLancerProfileService service;
	
	@RequestMapping("freelancerMyprofile_write") //프로필등록
	public String freelancerMyprofile_write() { 
		return "profile/freelancerMyprofile_write";
	}
	
	@RequestMapping("freelancerProfile_content") //프로필내용
	public String Profile_content() { 
		return "profile/freelancerProfile_content";
	}
	/*
	//프로필 리스트 **
	@RequestMapping("freelancerProfile_list") 
	public ModelAndView Profile_list() { 
		
		List<FreeLancer> profile_list = service.selectProfileList();
	//	log.info("#0: " + profile_list.size()); //5
	//	log.info("#1: " + profile_list.get(0).getFreelancerprofile().size()); //1
	//	log.info("#2: " + profile_list.get(0).getFreelancerprofile().get(0)); //1

		ModelAndView mv = new ModelAndView();
		mv.setViewName("profile/freelancerProfile_list");
		mv.addObject("profile_list",profile_list);
		return mv;
	}
	
	//프로필 리스트 페이징//
	@GetMapping("freelancerProfile_list")
	public String ProfileList(PagingVO vo, Model model
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		int total = service.countProfileList();
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "4";
			}else if(nowPage == null) {
				nowPage="1";
			}else if(cntPerPage ==null) {
				cntPerPage="4";
			}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", service.selectPageList(vo));
			return "profile/freelancerProfile_list";
	}
	*/
	@GetMapping("freelancerProfile_list")
	public ModelAndView ProfileList(PagingVO vo
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		int total = service.countProfileList();
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "4";
			}else if(nowPage == null) {
				nowPage="1";
			}else if(cntPerPage ==null) {
				cntPerPage="4";
			}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));	
		   
		List<FreeLancer> profile_list = service.selectPageList(vo);
		ModelAndView mv = new ModelAndView("profile/freelancerProfile_list");
		mv.addObject("paging", vo);
		mv.addObject("profile_list", profile_list);

		return mv;
	}

	
	//프로필 컨텐츠//
	@GetMapping("freelancerProfile_content") 
	public ModelAndView ProFileContent(@RequestParam long PRO_NUM) {
		List<FreeLancer> content = service.selectProfileContent(PRO_NUM);
		List<FreeLancerProfile> content2 = service.selectProfileContent2(PRO_NUM);	
		List<KeyWord> content3 = service.selectProfileContent3(PRO_NUM);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("profile/freelancerProfile_content");
		mv.addObject("content", content);
		mv.addObject("content2", content2);
		mv.addObject("content3", content3);
		return mv;
	}
	//삭제//
	
	@RequestMapping("freelancerProfile_delete")
	public String ProfileListDelete(@RequestParam long PRO_NUM) {
		service.listDelete(PRO_NUM);
		
		return "redirect:freelancerProfile_list";
	}

	
	@RequestMapping("mydash_change")	//회원정보수정
	public String Mydash_change() { 
		return "profile/mydash_change";
	}

	@RequestMapping("freelancerMyprofile_change")	//프로필수정
	public String FreelancerMyprofile_change() { 
		return "profile/freelancerMyprofile_change";
	}

	@RequestMapping("myfavorite")	//관심있는프로젝트
	public String Myfavorite() { 
		return "profile/myfavorite";
	}
	@RequestMapping("payments")	//
	public String payments() { 
		return "profile/payments";
	}
	
}
