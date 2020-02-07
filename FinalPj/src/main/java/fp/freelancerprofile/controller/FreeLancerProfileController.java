package fp.freelancerprofile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.service.FreeLancerProfileService;




@Controller
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
	
	@RequestMapping("freelancerProfile_list") //프로필 리스트 **
	public ModelAndView Profile_list() { 
		List<FreeLancer> profile_list = service.selectProfileList();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("profile/freelancerProfile_list");
		mv.addObject("profile_list",profile_list);
	
		return mv;
	}
	@GetMapping("freelancerProfile_content") //프로필 컨텐츠
	public ModelAndView ProFileContent(@RequestParam long PRO_NUM) {
		List<FreeLancer> content = service.selectProfileContent(PRO_NUM);
		//List<FreeLancer> content2 = service.selectProfileContent2(PRO_NUM);
	//	List<FreeLancer> content3 = service.selectProfileContent3(PRO_NUM);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("profile/freelancerProfile_content");
		mv.addObject("content", content);
	//	mv.addObject("content2", content2);
	//	mv.addObject("content2", content3);
		return mv;
	}

	@RequestMapping("freelancerProfile_del")
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
	@RequestMapping("payments")	//관심있는프로젝트
	public String payments() { 
		return "profile/payments";
	}

	@RequestMapping("employer-list-right")	//관심있는프로젝트
	public String employer_list_right() { 
		return "profile/employer-list-right";
	}

}
