package fp.freelancerprofile.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.AppliedProject;
import fp.corporation.domain.Corporation;
import fp.corporation.domain.PjPickKeyword;
import fp.corporation.domain.ProjectPick;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerlist.service.FreeLancerListService;

import com.fasterxml.jackson.databind.JsonNode;
import com.sun.mail.iap.Response;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.FreeLancerProfileFile;
import fp.freelancerprofile.domain.FreeLancerProfileListVO;
import fp.freelancerprofile.domain.FreePickKeyWord;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.Freelnacer_account;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.service.FreeLancerProfileService;
import fp.freelancerprofile.service.FreeLancerProfileServiceImpl;
import fp.member.controller.OpenBankingController;
import fp.member.domain.Notification;
import fp.member.service.MemberService;
import fp.util.file.Path;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerProfileController {
	
	@Autowired
	   private FreeLancerListService listService;

	   @Autowired
	   private ProjectService pjservice;
	   @Autowired
	   private FreeLancerProfileService service;
	   @Autowired
	   private MemberService memberService;
	//알림확인
	   @RequestMapping("confirm_Notification")
	   public String confirm_Notification_cor(long not_num) {
	      memberService.confirm_Notification(not_num);
	      return "redirect:myNotification";
	   }
	   //내게온 알림
	   @RequestMapping("myNotification")
	   public ModelAndView myNotification_cor(HttpServletRequest request) {
	      HttpSession session = request.getSession();
	      String mem_email= (String)session.getAttribute("email");
	      FreeLancer free = service.mydash_free_select(mem_email);
	      List<Notification> nots = memberService.selectNotification(mem_email);
	      ModelAndView mv = new ModelAndView("profile/myNotification");
	      mv.addObject("list", nots);
	      mv.addObject("free", free);
	      return mv;
	   }

	@GetMapping("freelancerMyprofile_write")	
	public ModelAndView ProFileWrite(HttpServletRequest request) { 
		
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
	
		FreeLancer freelancer = service.mydash_free_select(mem_email);
		List<FreeLancer> getFileName = listService.selectFile(mem_email);
		ModelAndView mv = new ModelAndView("profile/freelancerMyprofile_write");
		mv.addObject("freelancer", freelancer);
		mv.addObject("getFileName", getFileName);
		
		return mv;
	}
	
	//프로필 작성//
	@RequestMapping("freelancerMyprofile_write")
		public String freelancerMyprofile_write(FreeLancerProfile freelancerprofile, HttpServletRequest request) {
		
			HttpSession session = request.getSession();
			String mem_email= (String)session.getAttribute("email");
		
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
		  
		    return "redirect:freelancerProfile_list"; 
		}
	
	//프로필 수정//
	@GetMapping("freelancerMyprofile_change")
	public ModelAndView freelancerMyprofile_change(@RequestParam long pro_num, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
	
		FreeLancerProfile profile = service.showContent(pro_num);
		List<FreeLancer> getFileName = listService.selectFile(mem_email);
		
		ModelAndView mv = new ModelAndView ("profile/freelancerMyprofile_change");
		
		mv.addObject("profile", profile);
		mv.addObject("getFileName", getFileName);
		log.info("profile!!!!!!!!!!!!!!!!!!!!  :"+profile);
		
		return mv;
		
	}
	
	@PostMapping("freelancerMyprofile_change")
	public String freelancerProfile_update(FreeLancerProfile freelancerprofile
											,HttpServletRequest request, FreePickKeyWord freepickkeyword, @RequestParam long pro_num) {
		
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		
		log.info("@@@@@@@@@@@@@@@@@@@ freelancerprofile: "+freelancerprofile);
		freelancerprofile.setMem_email(mem_email);
		String[] listKeyNum = request.getParameterValues("free_keynum"); //free_keynum으로변경
		ArrayList<Long> arrayFree_keynum = new ArrayList<Long>();
		
		long[] listIntFree_keynum = Arrays.stream(listKeyNum).mapToLong(Long::parseLong).toArray();		
		  for(int i = 0; i<listIntFree_keynum.length; i++) {
		      arrayFree_keynum.add(listIntFree_keynum[i]);
		  }
		 freepickkeyword.setFreepickkeyword(arrayFree_keynum);
		log.info("@@@@@@@@@@arraykeynum: "+freepickkeyword);
		
		String[] ListKeyNum = request.getParameterValues("key_num"); 
		ArrayList<Integer> arraykeynum = new ArrayList<Integer>();
		int[] ListIntKeyNum = Arrays.stream(ListKeyNum).mapToInt(Integer::parseInt).toArray();
		for(int i = 0; i<ListIntKeyNum.length; i++) {
			arraykeynum.add(ListIntKeyNum[i]);
		}
		
		freepickkeyword.setKey_numList(arraykeynum);
		
		service.listUpdate(freelancerprofile);
		service.keyUpdate(freepickkeyword);
		
		return "redirect:freelancerProfile_content?pro_num="+pro_num; 

	}
	//프로필 공개//
	@RequestMapping(value="choiceProfile", method=RequestMethod.GET)
	@ResponseBody
	public void choiceProfile(@RequestParam(value="pro_numList[]")List<Long> pro_numList){ 
		 
		 Map<String, Object> map = new HashMap<String, Object>();
		 log.info("dfdfsdssdf: "+pro_numList);
		
		if(pro_numList.size()==0) {
			 map.put("pronum", null);
		 }else {
			 long pronum = pro_numList.get(0);
			 map.put("pronum", pronum);
		 }
		 service.choiceProfile(map);

	}
	//프로필 비공개//
	@RequestMapping(value="closeAjax", method=RequestMethod.GET)
	@ResponseBody
	public void closeProfile(@RequestParam(value="pro_numList[]")List<Long> pro_numList){ 
		 
		 Map<String, Object> map = new HashMap<String, Object>();
		 log.info("dfdfsdssdf: "+pro_numList);
		
		if(pro_numList.size()==0) {
			 map.put("pronum", null);
		 }else {
			 long pronum = pro_numList.get(0);
			 map.put("pronum", pronum);
		 }
		 service.closeProfile(map);

	}

	//프로필 리스트//
	@RequestMapping("freelancerProfile_list")
	public ModelAndView ProfileList(HttpServletRequest request, PagingVO vo
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		 
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		
		FreeLancer freelancerprofile = service.mydash_free_select(mem_email);
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
		//List<FreeLancerProfileFile> file_name = service.selectFilename();
		List<FreeLancer> getFileName = listService.selectFile(mem_email);
		
		ModelAndView mv = new ModelAndView("profile/freelancerProfile_list");
		log.info(")(#*$()#Q*$()map: "+map);
		List<Long>pro_oxList = new ArrayList<Long>();
		
		for( int i = 0; i<profile_list.size(); i++) {
			pro_oxList.add(profile_list.get(i).getProfile_choice());
		}
		mv.addObject("ox",pro_oxList);
		mv.addObject("paging", vo);
		mv.addObject("profile_list", profile_list);
		//mv.addObject("file_name", file_name);
		mv.addObject("getFileName", getFileName);
		
		return mv;
	}
	
	
	//프로필 컨텐츠//
	@GetMapping("freelancerProfile_content") 
	public ModelAndView ProFileContent(@RequestParam long pro_num , HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		
		FreeLancer freelancerprofile = service.mydash_free_select(mem_email); //프리랜서 정보를 불러옴
		List<FreeLancer> content = service.selectProfileContent(pro_num);
		List<FreeLancerProfile> tel = service.selectTel(pro_num);
		List<FreeLancerProfile> content2 = service.selectProfileContent2(pro_num);	
		List<KeyWord> content3 = service.selectProfileContent3(pro_num);
		//List<FreeLancerProfileFile> file_name = service.selectFilename();
		List<FreeLancer> content4 = service.selectProfileContent4(freelancerprofile.getFree_code());
		
		List<Freelancer_FreeLancerProfile> checkProject = listService.freelancercontent2(freelancerprofile.getFree_code());
		List<Project> getProject = listService.freelancercontent5(freelancerprofile.getFree_code());
		List<FreeLancer> getFileName = listService.selectFile(mem_email);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("profile/freelancerProfile_content");
		mv.addObject("content", content);
		mv.addObject("tel", tel);	
		mv.addObject("content2", content2);
		mv.addObject("content3", content3);
	//	mv.addObject("file_name", file_name);
		mv.addObject("content4", content4);
		
		mv.addObject("checkProject", checkProject);
		mv.addObject("getProject", getProject);
		mv.addObject("getFileName", getFileName);
		
		return mv;
	}
	//삭제//
	@RequestMapping("freelancerProfile_delete")
	public String ProfileListDelete(@RequestParam long pro_num, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		
		service.listDelete(pro_num);
	
		return "redirect:freelancerProfile_list";
	}

	//체크박스 삭제//
	@GetMapping("freelancerProfile_cehck_delete")
		public String List_checkbox_delete(HttpServletRequest request, long pro_num) {
		
			HttpSession session = request.getSession();
			String mem_email= (String)session.getAttribute("email");
	      
			String[] ListCheckNum = request.getParameterValues("pro_num"); 
			   
			   ArrayList<Integer> arrayChecknum = new ArrayList<Integer>();

		   int[] ListIntCheckNum = Arrays.stream(ListCheckNum).mapToInt(Integer::parseInt).toArray();

			   Map<String, Object> map = new HashMap<String, Object>();
				   for(int i = 0; i<ListIntCheckNum.length; i++) {
					   arrayChecknum.add(ListIntCheckNum[i]);
				   }
			    log.info("@#!#@$  arraykeynum: "+ arrayChecknum);
				   map.put("pro_num", arrayChecknum);
				   map.put("mem_email", mem_email);
			    log.info("@#@@#@#map: "+map);
			   service.checkdelete1(map);
			   
			   return "redirect:freelancerProfile_list?pro_num="+pro_num;
			 }
	
	//나영 수정---------
			@RequestMapping(value="payments")	//
			public ModelAndView payments(HttpServletRequest request) {
				HttpSession session = request.getSession();
				String mem_email = session.getAttribute("email").toString();
				FreeLancer freelancer = service.mydash_free_select(mem_email);
				ModelAndView mv = new ModelAndView("profile/payments");
				Freelnacer_account freeacct = service.selectFreeACCT(freelancer.getFree_code());
				mv.addObject("freelancer", freelancer);
				mv.addObject("freeacct",freeacct);
				return mv;
			}
			@RequestMapping(value="/payments_bankholder",  method = { RequestMethod.GET, RequestMethod.POST })
			@ResponseBody
			public JsonNode bank_holder_check(HttpServletRequest request,HttpServletResponse response,String bank_code, String bank_num) {
				JsonNode node = OpenBankingController.getAccessTokenIMPORT();
				log.info("accessToken: "+node);
				JsonNode responseNode = node.get("response");
				String accessToken = responseNode.get("access_token").asText();
				
				log.info("accessToken: "+accessToken);
				JsonNode holder= OpenBankingController.getBankInfo(accessToken,bank_code, bank_num);
				if(holder.asInt()==-1) {
					return holder;
				}
				return holder;
			}
			@PostMapping("addAccount")
			public String addAccount(Freelnacer_account freeacct) {
				log.info("@@freeacct: "+freeacct);
				service.updateACCTOX(freeacct.getFree_code());
				service.addACCT(freeacct);
				return "redirect:payments";
			}
			@PostMapping("editAccount")
			public String editAccount(Freelnacer_account freeacct) {
				log.info("@@freeacct: "+freeacct);
				service.updateACCT(freeacct);
				return "redirect:payments";
			}
			@RequestMapping("myfavorite")	//관심있는프로젝트
			public ModelAndView Myfavorite(HttpServletRequest request,ProjectVo projectVo,  @RequestParam(value="nowPage", required=false)String nowPage
					, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
				HttpSession session = request.getSession();
				String mem_email = session.getAttribute("email").toString();
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
				
				List<fp.corporation.domain.Project>apppList = pjservice.select_appp_pj_free(map);
				List<fp.corporation.domain.Project>pjpickList = pjservice.pjpick_free(map);
				mv.addObject("free", freelancer);
				mv.addObject("pjp", pjpickList);
				mv.addObject("pa", projectVo);
				mv.addObject("apppList",apppList);
				return mv;
			}
			@RequestMapping("myfavorite_del")
			public String myfavorite_del(@RequestParam long pj_num, @RequestParam long free_code) {
				//log.info("@#^$&*@$# pj_num: "+pj_num+", free_code: "+free_code);
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("pj_num", pj_num);
				map.put("free_code", free_code);
				pjservice.pjpick_del(map);
				return "redirect:myfavorite";
			}
		
			@RequestMapping("mydash_free")	//회원정보수정
			public ModelAndView Mydash_change(HttpServletRequest request) {
				HttpSession session = request.getSession();
				String mem_email= (String)session.getAttribute("email");
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