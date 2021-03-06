package fp.corporation.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Corporation_account;
import fp.corporation.domain.Project;
import fp.corporation.service.CorporationService;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerlist.controller.FreeLancerListController;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelnacer_account;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.service.FreeLancerProfileService;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPick;
import fp.market.utils.MarketPagingVO;
import fp.member.controller.OpenBankingController;
import fp.member.domain.Notification;
import fp.member.service.MemberService;
import fp.util.file.Path;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CorporationController {
	@Autowired
	private CorporationService service;
	@Autowired
	private ProjectService pjService;
	@Autowired
	private FreeLancerProfileService freeProService;
	@Autowired
    private MemberService memberservice; 
	
	//알림확인
	@RequestMapping("confirm_Notification_cor")
	public String confirm_Notification_cor(long not_num) {
		memberservice.confirm_Notification(not_num);
		return "redirect:myNotification_cor";
	}
	//내게온 알림
	@RequestMapping("myNotification_cor")
	public ModelAndView myNotification_cor(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		Corporation corporation = service.mydash_cor_select(mem_email);
		List<Notification> nots = memberservice.selectNotification(mem_email);
		ModelAndView mv = new ModelAndView("corporation/myNotification_cor");
		mv.addObject("list", nots);
		mv.addObject("cor", corporation);
		return mv;
	}
	// 프리랜서 찜하기 목록보기
	@RequestMapping("myfavorite_cor")	//관심있는프로젝트
	public ModelAndView Myfavorite_cor(ProjectVo projectVo,  @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		Corporation corporation = service.mydash_cor_select(mem_email);
		ModelAndView mv = new ModelAndView("corporation/myfavorite_cor");
		
		long totalCountfreepick = freeProService.getTotalCountFreep(corporation.getCor_code());
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		}else if (nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage ="10";
		}
		
		projectVo = new ProjectVo(totalCountfreepick, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("ProjectVo", projectVo);
		map.put("cor_code",corporation.getCor_code());
		
		List<FreeLancerProfile>freePickList = freeProService.freepick_cor(map);
		List<FreeLancerProfile>selectAllFreeKeywords = freeProService.selectAllFreeKeywords();
		mv.addObject("cor", corporation);
		mv.addObject("freeP", freePickList);
		mv.addObject("pa", projectVo);
		mv.addObject("keyword",selectAllFreeKeywords);
		return mv;
	}
	@RequestMapping("myfavorite_cor_del")
	public String myfavorite_cor_del(@RequestParam long pro_num, @RequestParam long cor_code){
		Map<String,Object>map = new HashMap<String, Object>();
		map.put("pro_num",pro_num);
		map.put("cor_code", cor_code);
		freeProService.freepick_del(map);
		return "redirect:myfavorite_cor";
	}
	@RequestMapping("payments_cor")
	public ModelAndView payments_cor(HttpServletRequest request){
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		Corporation corporation = service.mydash_cor_select(mem_email);
		ModelAndView mv = new ModelAndView("corporation/payments_cor");
		mv.addObject("cor",corporation);
		Corporation_account coracct= service.selectCorACCT(corporation.getCor_code());
		mv.addObject("coracct", coracct);
		return mv;
	}
	
	@RequestMapping(value="/payments_cor_bankholder", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public JsonNode bank_holder_check(HttpServletRequest request,HttpServletResponse response,
			String bank_code, String bank_num) {
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
	@PostMapping("addCorAccount")
	public String addAccount(Corporation_account coracct) {
		log.info("@@coracct: "+coracct);
		service.addCorACCT(coracct);
		return "redirect:payments_cor";
	}
	@PostMapping("editCorAccount")
	public String editAccount(Corporation_account coracct) {
		log.info("@@coracct: "+coracct);
		service.updateCorACCT(coracct);
		return "redirect:payments_cor";
	}
	@RequestMapping(value="/getCorRegInfo", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public static JsonNode getCorRegInfo(String cor_regnum) {
		final String RequestUrl = "https://business.api.friday24.com/closedown/"+cor_regnum;
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpGet httpget = new HttpGet(RequestUrl);
		JsonNode info =null;
		//httpget.setHeader("Content-Type","application/json");
		httpget.addHeader("Authorization", "Bearer oxfZ5BkTVUQnUcIQc2qo");
		JsonNode returnNode = null;
		   Header[] headers = httpget.getAllHeaders(); 
		      String txt = "1:::::";
		         for(Header header : headers) { 
		             txt += header.getName() + " : " + header.getValue(); 
		             log.info("ㅎㅔ더 확인: "+txt);
		         }      
	
	try {
		final HttpResponse response = client.execute(httpget);
		// JSON 형태 반환값 처리
		ObjectMapper mapper = new ObjectMapper();
		returnNode = mapper.readTree(response.getEntity().getContent());
		log.info("returnNode: "+returnNode);
		if(returnNode.get("message")!=null) {
			info= returnNode.get("message");
		}else {
			info = returnNode.get("state");
		}
		log.info("bbbbbb: "+info);
		log.info("상태번호 : "+response.getStatusLine().getStatusCode());
	} catch (ClientProtocolException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	} finally {
	// clear resources
	}
	return info;
	}
	@GetMapping("mydash_cor")
	public ModelAndView write(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		Corporation corporation = service.mydash_cor_select(mem_email);
		ModelAndView mv = new ModelAndView("corporation/mydash_cor");
		mv.addObject("cor",corporation);
		
		return mv;
	}
	@PostMapping("mydash_cor_insert")
	public String write(@RequestParam MultipartFile fileName, Corporation corporation) {
		log.info("!@#@$ insert:"+ corporation);
		if(fileName.getOriginalFilename() != "") {
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.insert(corporation);
			//return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
			return "redirect:mydash_cor";
		}else {
			service.insert(corporation);
			//return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
			return "redirect:mydash_cor";
		}
	}
	@PostMapping("mydash_cor_update")
	public String update(@RequestParam MultipartFile fileName, Corporation corporation) {
		Corporation cor = service.mydash_cor_select(corporation.getMem_email());
		log.info("@!#$#T$%#@$fileName:"+fileName.getOriginalFilename()+", ofname: "+cor.getCor_ofname());
		
		if(cor.getCor_fname() == null && fileName.getOriginalFilename() != "") {
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.mydash_cor_update(corporation);
			//return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
			return "redirect:mydash_cor";
		
		}else if(fileName.getOriginalFilename() != "" && cor.getCor_fname() != null){
			String str = cor.getCor_fname();
			delFile(str);
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.mydash_cor_update(corporation);
			//return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
			return "redirect:mydash_cor";
		
	}else if(fileName.getOriginalFilename() == "" && cor.getCor_fname() != null){
			corporation.setCor_fname(cor.getCor_fname());
			corporation.setCor_ofname(cor.getCor_ofname());
			service.mydash_cor_update(corporation);
			//return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
			return "redirect:mydash_cor";
		
		}else{
			service.mydash_cor_update(corporation);
			//return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
			return "redirect:mydash_cor";
		}
	}
	
	@RequestMapping("managed_project")
	public ModelAndView managed_project(HttpServletRequest request, ProjectVo projectVo,  @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");
		Corporation corporation = service.mydash_cor_select(mem_email);
		long totalCount = pjService.getTotalCountCor(corporation.getCor_code());
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		}else if (nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage ="10";
		}
		projectVo = new ProjectVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ProjectVo", projectVo);
		map.put("cor_code",corporation.getCor_code());
		
		
		ModelAndView mv = new ModelAndView("corporation/managed_project");
		List<Project> listMydashCor = pjService.listMydashCor(map);
		List<FreeLancer> freeList = freeProService.select_pj_applied_free();
		List<Object> freeList_pjnum = new ArrayList<Object>();
		if(freeList.size()!=0) {
			for(int i =0; i<freeList.size(); i++) {
				for(int j =0; j<freeList.get(i).getApplied_project().size(); j++)
					freeList_pjnum.add(freeList.get(i).getApplied_project().get(j).getPj_num());
			}
		}
		log.info("#&*$#@&*$( 프리랜서 수1 "+freeList);
		mv.addObject("cor",corporation);
		mv.addObject("list", listMydashCor);
		mv.addObject("pa",projectVo);
		mv.addObject("freeList_pjnum",freeList_pjnum);
		//log.info("#@#^#$%^#$ projectVO: "+ projectVo);
		//log.info("#@#^#$%^#$ map: "+ corporation);
		//log.info("#@#^#$%^#$ map: "+ map);
		List<Project> keyname = pjService.keywords();
		mv.addObject("keyname", keyname);
		return mv;
	}
	@RequestMapping(value="/appp_pj_freeList", method=RequestMethod.GET)
	@ResponseBody
	public List<FreeLancer> apply_free(@RequestParam long pj_num) {
		//ResponseEntity<Map<String,Object>> entity = null;
		//long totalCount= freeProService.totalCount_pj_applied_free(pj_num);
		List<FreeLancer> listAll =  freeProService.select_pj_applied_free_paging(pj_num);
		
		List<FreeLancer> listProfile = new ArrayList<FreeLancer>();
		for(int i=0; i<listAll.size(); i++) {
			listProfile.add(listAll.get(i));
		}
		//log.info("@#*&$^@#&*$list: "+listProfile);
		return listProfile;
	}
	@RequestMapping(value="/select_free_project", method=RequestMethod.GET)
	@ResponseBody
	public int select_free_project(@RequestParam long pj_num, @RequestParam long pro_num) {
		log.info("@#&$(@#&pj_num: "+pj_num+", pro_num: "+pro_num);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("pro_num",pro_num);
		map.put("pj_num",pj_num);
		pjService.appp_status_update(map);
		Project pj = pjService.showContent(pj_num);
		int appp_count = pjService.appp_count(pj_num);
		if(appp_count>=pj.getPj_recnum()) {
			pjService.pj_status_update(pj_num);
		}
		int pj_status = pjService.showContent(pj_num).getPj_status();
		return pj_status;
	}
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
		
		log.info(" 물리경로: "+Path.COR_THUMB+saveFileName);
		writeFile(fileName , saveFileName);
		
		boolean flag = writeFile(fileName , saveFileName);
		if(flag) {
			log.info("성공");
		}else {
			log.info("실패");
		}
		return saveFileName;
	}

	public boolean writeFile(MultipartFile cor_fname, String saveFileName) {
		File rDir = new File(Path.COR_THUMB);
		if(!rDir.exists()){
			rDir.mkdir();
			}
		log.info("#@&$@(#&$폴더 존재여부: "+rDir.exists());
		log.info("#@*&($#(@ rDir: "+rDir);
		FileOutputStream fos = null;
		try {
			byte data[]= cor_fname.getBytes();
			fos = new FileOutputStream(Path.COR_THUMB+saveFileName);
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
	public void delFile(String cor_fname) {
		File file = new File(Path.COR_THUMB, cor_fname);
		if(file.exists()) {
			file.delete();
		}
	}
//마켓찜
//세영 추가-마켓찜--------myfavoriteMarket,구매마켓,프로필사진
	@RequestMapping("cor-myfavoriteMarket")
	public ModelAndView pickedMarket(HttpSession session
									,@RequestParam(value="nowPageP",required=false, defaultValue="1")String nowPage
									,@RequestParam(value="cntPerPageP", required=false,defaultValue="5")String cntPerPage) 
	{

		String mem_email=(String) session.getAttribute("email");
	
		int total=service.getTotalMarketPick(mem_email);


		MarketPagingVO marketPickListVO = new MarketPagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		int start=marketPickListVO.getStart(); 
		int end = marketPickListVO.getEnd(); 
		

		
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("mem_email",mem_email);
		map.put("start",start);
		map.put("end",end);

		
		List<MarketPick> corp=service.marketPickList(map);
		
		Corporation cor = getCorfname(mem_email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("corporation/myfavorite_market");
		mv.addObject("corPickList",corp);
		mv.addObject("paging",marketPickListVO);
		mv.addObject("cor",cor);
		return mv;
	}
	
	public Corporation getCorfname(String mem_email) {
		Corporation cor=service.getCorfname(mem_email);
		return cor;
	}
	
	//구매마켓
	@RequestMapping("cor-myBuyMarket")
	public ModelAndView getMyMarket3(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		String mem_email=(String) session.getAttribute("email");

		int total=service.getTotalBuyMarket(mem_email);
		MarketPagingVO marketBuyListVO = new MarketPagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		int start=marketBuyListVO.getStart(); 
		int end = marketBuyListVO.getEnd(); 
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("mem_email",mem_email);
		map.put("start",start);
		map.put("end",end);
		
		List<MarketBuysellList> corBuy=service.myBuyMarket(map);
		log.info("@@@@@@@@@@corBuy"+corBuy);
		Corporation cor = getCorfname(mem_email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("corporation/buylist_market");
		mv.addObject("corBuyList",corBuy);
		mv.addObject("paging",marketBuyListVO);
		mv.addObject("cor",cor);
		return mv;
		
	}
}
