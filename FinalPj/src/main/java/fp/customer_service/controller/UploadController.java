package fp.customer_service.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import fp.customer_service.domain.AttachFileDTO;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Log4j
@Controller
public class UploadController {
	@GetMapping("uploadForm")
	public void uploadForm() {
		log.info("upload form");
	}

	@PostMapping("uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {
		
		//String uploadFolder = "C:\\upload";
		String uploadFolder = "/home/ubuntu/hifive/upload"; // for aws
		//String uploadFolder = "/var/lib/tomcat8/webapps/FinalPj/resources/upload"; // for aws
		
		for (MultipartFile multipartFile : uploadFile) {
			log.info("------------------------------------------");
			log.info("Upload File Name : " + multipartFile.getOriginalFilename());
			log.info("Upload File Size : " + multipartFile.getSize());
			
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
	}
	
	@GetMapping("uploadAjax")
	public void uploadAjax() {
		log.info("###upload ajax");
	}
	
	private String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}
	
	private boolean checkImageType(File file) {

		try {
			String contentType = Files.probeContentType(file.toPath());

			return contentType.startsWith("image");

		} catch (IOException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	@PostMapping(value = "uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		
		List<AttachFileDTO> list = new ArrayList<>();
		//String uploadFolder = "C:\\upload";
		String uploadFolder = "/home/ubuntu/hifive/upload"; // for aws
		//String uploadFolder = "/var/lib/tomcat8/webapps/FinalPj/resources/upload"; // for aws
		
		String uploadFolderPath = getFolder();
		// make folder --------
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		
	 	if (uploadPath.exists() == false) {
	 		uploadPath.mkdirs();
		}
	 	
		// make yyyy/MM/dd folder
		for (MultipartFile multipartFile : uploadFile) {
			
			AttachFileDTO attachDTO = new AttachFileDTO();
			
			String uploadFileName = multipartFile.getOriginalFilename();
		
			// IE has file path
			//uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1); // for aws
			log.info("only file name: " + uploadFileName);
			attachDTO.setFileName(uploadFileName);
		
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;
	
			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				
				attachDTO.setUuid(uuid.toString());
				attachDTO.setUploadPath(uploadFolderPath);
				
				// check image type file
				if (checkImageType(saveFile)) {
					attachDTO.setImage(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}	
				
				// add to List
				list.add(attachDTO);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} // end for
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) {
		
		//log.info("fileName : " + fileName);
		
		//String file_trim = "c:\\upload\\" + fileName;
		String file_trim = "/home/ubuntu/hifive/upload/" + fileName; // for aws
		//String file_trim = "/var/lib/tomcat8/webapps/FinalPj/resources/upload/" + fileName; // for aws
		
		file_trim = file_trim.replace(" ", "");
		
		//log.info("file_trim : " + file_trim);
		
		File file = new File(file_trim);

		log.info("file : " + file);

		ResponseEntity<byte[]> result = null;

		try {
			HttpHeaders header = new HttpHeaders();

			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@GetMapping(value="/download", produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {
		
		//String resource_trim = "c:\\upload\\" + fileName;
		String resource_trim = "/home/ubuntu/hifive/upload/" + fileName; // for aws
		//String resource_trim = "/var/lib/tomcat8/webapps/FinalPj/resources/upload/" + fileName; // for aws
		
		resource_trim = resource_trim.replace(" ", "");
		
		Resource resource = new FileSystemResource(resource_trim);
		
		if(resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		String resourceName = resource.getFilename();
		
		// remove UUID
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);
		
		HttpHeaders headers = new HttpHeaders();
		try {
			String downloadName = null;
			
			if(userAgent.contains("Trident")) {
				log.info("IE browser");
				//downloadName = URLEncoder.encode(resourceOriginalName, "UTF8").replaceAll("\\+", " ");
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF8").replaceAll("/+", " "); // for aws
			} else if(userAgent.contains("Edge")) {
				log.info("Edge browser");
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF8");
				log.info("Edge name : " + downloadName);
			} else {
				log.info("Chrome brower");
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
			}
			
			log.info("downloadName : " + downloadName);
			
			headers.add("Content-Disposition", "attachment; filename=" + downloadName);
		
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {

		//log.info("deleteFile: " + fileName);

		File file;

		try {
			
			//String file_delete_trim = "c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8");
			String file_delete_trim = "/home/ubuntu/hifive/upload/" + URLDecoder.decode(fileName, "UTF-8"); // for aws
			//String file_delete_trim = "/var/lib/tomcat8/webapps/FinalPj/resources/upload/" + URLDecoder.decode(fileName, "UTF-8"); // for aws
			
			file_delete_trim = file_delete_trim.replace(" ", "");
			
			file = new File(file_delete_trim);

			file.delete();

			if (type.equals("image")) {

				String largeFileName = file.getAbsolutePath().replace("s_", "");

				log.info("largeFileName: " + largeFileName);

				file = new File(largeFileName);

				file.delete();
			}

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		return new ResponseEntity<String>("deleted !!!", HttpStatus.OK);

	}
}
