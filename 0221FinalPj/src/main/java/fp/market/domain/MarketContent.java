package fp.market.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketContent {
//마켓 콘텐츠 한페이지에 필요한 테이블클래스
  private Market market;
  private MarketQA marketQA;
  private MarketRev marketRev;
  private MarketRevComm marketRevComm;
  private Corporation corporation;
  private Member member;
  private Freelancer freelancer;
}
