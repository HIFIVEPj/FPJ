
package fp.freelancerprofile.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Corporation;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.service.FreeLancerProfileService;

import fp.util.file.Path;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerProfileController {
	@Autowired
	private ProjectService pjservice;
	@Autowired
	private FreeLancerProfileService service;


	/*@GetMapping("freelancerMyprofile_write")
	public String freelancerMyprofile_write() {
		return "profile/freelancerMyprofile_write";
	}*/
	
	@RequestMapping("freelancerMyprofile_write")	
	public ModelAndView ProFileWrite( @RequestParam String mem_email) { 
		FreeLancer freelancer = service.mydash_free_select(mem_email);
		ModelAndView mv = new ModelAndView("profile/freelancerMyprofile_write");
		mv.addObject("freelancer", freelancer);
		return mv;
	}
	
	//프로필 작성//
	@PostMapping("freelancerMyprofile_write")
		public String freelancerMyprofile_write(FreeLancerProfile freelancerprofile, HttpServletRequest request, @RequestParam String mem_email) {
		
		log.info("@@@@@@@@@@@@@@@@@@@ freelancerprofile: "+freelancerprofile);
		
		   String[] ListKeyNum = request.getParameterValues("key_num");
		   ArrayList<Integer> arraykeynum = new ArrayList<Integer>();
		      
		   int[] ListIntKeyNum = Arrays.stream(ListKeyNum).mapToInt(Integer::parseInt).toArray();
		            
		   Map<String, Object> map = new HashMap<String, Object>();
			   for(int i = 0; i<ListIntKeyNum.length; i++) {
			      arraykeynum.add(ListIntKeyNum[i]);
			   }
			   map.put("key_num", arraykeynum);
			   map.put("free_code", freelancerprofile.getFree_code());
		   service.listInsert(freelancerprofile);
		   service.insertPjpkeyword(map);
		      log.info("@@@@@@@@@@@@@@@  arraykeynum: "+ arraykeynum);
		      log.info("@@@@@@@@@@@@@@@  project: " +freelancerprofile);
		      log.info("@#!#@$  map: "+ map);
		   return "redirect:freelancerProfile_list?mem_email="+mem_email;
		   }
	
	//프로필 컨텐츠//
	@RequestMapping("freelancerProfile_content")
	public String Profile_content() { 
		return "profile/freelancerProfile_content";
	}
	
	//프로필 리스트//
	@RequestMapping("freelancerProfile_list")
	public ModelAndView ProfileList(String mem_email, PagingVO vo
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){

		FreeLancer freelancerprofile = service.mydash_free_select(mem_email); //프리랜서 정보를 불러옴
		long total = service.countProfileList(freelancerprofile.getFree_code()); //글의 총 갯수
		
	
		if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "4";
			}else if(nowPage == null) {
				nowPage="1";
			}else if(cntPerPage ==null) {
				cntPerPage="4";
			}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("PagingVo", vo);
		map.put("free_code", freelancerprofile.getFree_code());
		
		List<FreeLancerProfile> profile_list = service.selectPageList(map);
	
		ModelAndView mv = new ModelAndView("profile/freelancerProfile_list");
		log.info(")(#*$()#Q*$()map: "+map);
		
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
		
		//return "redirect:freelancerProfile_list?mem_email="+mem_email;
		return "";
	}

	
	@GetMapping("freelancerProfile_cehck_delete")
		public String List_checkbox_delete(HttpServletRequest request, long pro_num) {
	      
			   String[] ListCheckNum = request.getParameterValues("pro_num"); 
//			   log.info("#ListCheckNum.length: "  + ListCheckNum.length );
			   
			   ArrayList<Integer> arrayChecknum = new ArrayList<Integer>();
			   
			      
		   int[] ListIntCheckNum = Arrays.stream(ListCheckNum).mapToInt(Integer::parseInt).toArray();
		   
			
			   Map<String, Object> map = new HashMap<String, Object>();
				   for(int i = 0; i<ListIntCheckNum.length; i++) {
					   arrayChecknum.add(ListIntCheckNum[i]);
				   }
				   log.info("@#!#@$  arraykeynum: "+ arrayChecknum);
				   map.put("pro_num", arrayChecknum);
			      log.info("@#@@#@#map: "+map);
			   service.checkdelete1(pro_num);
			   //service.checkdelete2(PRO_NUM);
			      
			   return "redirect:freelancerProfile_list";
			 }
	
	@RequestMapping("freelancerMyprofile_change")	//프로필수정
	public String FreelancerMyprofile_change() { 
		return "profile/freelancerMyprofile_change";
	}
	@RequestMapping("payments")	//
	public String payments() { 
		return "profile/payments";
	}
	
	//나영 수정---------
	
		@RequestMapping("myfavorite")	//관심있는프로젝트
		public ModelAndView Myfavorite(String mem_email, ProjectVo projectVo,  @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
			FreeLancer freelancer = service.mydash_free_select(mem_email);
			ModelAndView mv = new ModelAndView("profile/myfavorite");
			long totalCountPjpick = pjservice.getTotalCountPickPj(freelancer.getFree_code());
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			}else if (nowPage == null) {
				nowPage ="1";
			}else if(cntPerPage == null) {
				cntPerPage ="5";
			}
			
			projectVo = new ProjectVo(totalCountPjpick, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			Map<String, Object>map = new HashMap<String, Object>();
			map.put("ProjectVo", projectVo);
			map.put("free_code",freelancer.getFree_code());
			List<fp.corporation.domain.Project>pjpickList = pjservice.pjpick_free(map);
			mv.addObject("free", freelancer);
			mv.addObject("pjp", pjpickList);
			return mv;
		}
		@RequestMapping("myfavorite_del")
		public String myfavorite_del(@RequestParam long pj_num, @RequestParam long free_code, @RequestParam String mem_email) {
			//log.info("@#^$&*@$# pj_num: "+pj_num+", free_code: "+free_code);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("pj_num", pj_num);
			map.put("free_code", free_code);
			pjservice.pjpick_del(map);
			return "redirect:myfavorite?mem_email="+mem_email;
		}
	
		@RequestMapping("mydash_free")	//회원정보수정
		public ModelAndView Mydash_change(@RequestParam String mem_email) {
			FreeLancer freelancer = service.mydash_free_select(mem_email);
			ModelAndView mv = new ModelAndView("profile/mydash_change");
			mv.addObject("mydash", freelancer);
			return mv;
		}
		
		@PostMapping("mydash_free_insert")
		public String mydashFreeInsert(@RequestParam MultipartFile fileName, FreeLancer freelancer) {
			if(fileName.getOriginalFilename() != "") {
				freelancer.setFree_fname(saveStore(fileName));
				freelancer.setFree_ofname(fileName.getOriginalFilename());
				service.mydash_free_insert(freelancer);
				return "redirect:mydash_free?mem_email="+freelancer.getMem_email();
			}else {
				service.mydash_free_insert(freelancer);
				return "redirect:mydash_free?mem_email="+freelancer.getMem_email();
			}
		} 
		@PostMapping("mydash_free_update")
		public String update(@RequestParam MultipartFile fileName, FreeLancer freelancer) {
			FreeLancer free = service.mydash_free_select(freelancer.getMem_email());
			
			if(free.getFree_fname() == null && fileName.getOriginalFilename() != "") {
				freelancer.setFree_fname(saveStore(fileName));
				freelancer.setFree_ofname(fileName.getOriginalFilename());
				service.mydash_free_update(freelancer);
				return "redirect:mydash_free?mem_email="+freelancer.getMem_email();
			}else if(fileName.getOriginalFilename() != "" && free.getFree_fname() != null){
				String str = free.getFree_fname();
				delFile(str);
				freelancer.setFree_fname(saveStore(fileName));
				freelancer.setFree_ofname(fileName.getOriginalFilename());
				service.mydash_free_update(freelancer);
				return "redirect:mydash_free?mem_email="+freelancer.getMem_email();
			}else if(fileName.getOriginalFilename() == "" && free.getFree_fname() != null){
				freelancer.setFree_fname(free.getFree_fname());
				freelancer.setFree_ofname(free.getFree_ofname());
				service.mydash_free_update(freelancer);
				return "redirect:mydash_free?mem_email="+freelancer.getMem_email();
			}else{
				service.mydash_free_update(freelancer);
				return "redirect:mydash_free?mem_email="+freelancer.getMem_email();
			}
		}
		//파일올리기
		public String saveStore(MultipartFile fileName) {
			String ofname = fileName.getOriginalFilename();
			int idx = ofname.lastIndexOf(".");
			String ofheader = ofname.substring(0,idx);
			String ext = ofname.substring(idx);
			long ms = System.currentTimeMillis();
			
			StringBuilder sb = new StringBuilder();
			sb.append(ofheader);
			sb.append("_");
			sb.append(ms);
			sb.append(ext);
			
			String saveFileName = sb.toString();
			
			log.info(" 물리경로: "+Path.FREE_THUMB+saveFileName);
			writeFile(fileName , saveFileName);
			
			boolean flag = writeFile(fileName , saveFileName);
			if(flag) {
				log.info("성공");
			}else {
				log.info("실패");
			}
			return saveFileName;
		}

		public boolean writeFile(MultipartFile free_fname, String saveFileName) {
			File rDir = new File(Path.FREE_THUMB);
			if(!rDir.exists()) rDir.mkdir();
			
			FileOutputStream fos = null;
			try {
				byte data[]= free_fname.getBytes();
				fos = new FileOutputStream(Path.FREE_THUMB+saveFileName);
				fos.write(data);
				fos.flush();
				
				return true;
				
			}catch(IOException ie) {
				log.info("!@$#FILE ERROR: "+ie);
				return false;
			}finally {
				try {
					fos.close();
				}catch(IOException ie) {}
			}
		}
		public void delFile(String free_fname) {
			File file = new File(Path.FREE_THUMB, free_fname);
			if(file.exists()) {
				file.delete();
			}
		}
	 //--------------
	
}
