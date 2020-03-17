package fp.corporation.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Corporation_account {
	private long cor_code;
	private String corac_acct;
	private String corac_bank;
	private String corac_holder;
}
