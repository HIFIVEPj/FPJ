package fp.corporation.vo;

import fp.corporation.domain.Keyword;
import fp.corporation.domain.PjPickKeyword;
import fp.corporation.domain.Project;
import lombok.Data;

@Data
public class ProjectKeyNameVo {
	private Project project;
	private PjPickKeyword pjpickkeyword;
	private Keyword keyword; 
	
}
