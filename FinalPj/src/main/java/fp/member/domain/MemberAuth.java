
package fp.member.domain;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //이것만 있으면 기본생성자가 만들어지지않음 그렇기 때문에 NoArgsConstructor를 해줘야 기본도 생성해줌
@NoArgsConstructor
public class MemberAuth {

	private String email;
	private String auth;
}

