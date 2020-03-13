package fp.customer_service.domain;

import lombok.Data;

@Data
public class BoardAttachVO {
	private String uuid; // qafile_fname
	private long qa_num;
	private String fileName; // qafile_ofname
	private String uploadPath; // 실제 파일 저장 경로
	private boolean fileType; // 이미지 여부
	private long qafile_size; // 아직 사용 전

}