package fp.customer_service.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	private long qafile_num;
	private long qa_num;
	private String uuid; // qafile_fname
	private String fileName; // qafile_ofname
	private String uploadPath; // qa_path
	private boolean image; // 이미지 여부

}