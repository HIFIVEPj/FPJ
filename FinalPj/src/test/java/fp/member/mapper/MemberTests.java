package fp.member.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.mapper.MemberMapper;


@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberTests {
	@Autowired
	private MemberMapper memberMapper;
	
	/*
	@Test
	public void testSelectPerPage() {
		//log.info("#boardMapper: " + boardMapper);
		BoardVo boardVo = new BoardVo(null, 2, 5);
		List<Board> list = boardMapper.selectPerPage(boardVo);
		log.info("#testSelectPerPage()");
		for(Board board: list) {
			log.info("#seq: " + board.getSeq() + ", writer: " + board.getWriter());
		}
	}*/
	/*
	@Test
	public void testSelectCount() {
		log.info("#testSelectCount() count: " + boardMapper.selectCount());
	}*/
	
	@Test
	public void selectEmailAuth() {
		List<EmailAuth> emailAuth = memberMapper.selectEmailAuth("dam9112@naver.com");
		log.info("#selectEmailAuth() email: " + emailAuth );
	}
	
	/*
	@Test
	public void testSelectByName() {
		BoardVo boardVo = new BoardVo("김", 1, 2);
		List<Board> list = boardMapper.selectByWriter(boardVo);
		log.info("#testSelectByName()");
		for(Board board: list) {
			log.info("#seq: " + board.getSeq() + ", writer: " + board.getWriter());
		}
	}
	/*
	@Test
	public void testInsert() {
		Board board = new Board(-1, "가", "나", "다", "라", null);
		boardMapper.insert(board);
		log.info("#BoardTests testInsert() 수행 완료");
	}
	*/
    /*
	@Test
	public void testUpdate() {
		Board board = new Board(17, "가1", "나1", "다1", "라1", null);
		boardMapper.update(board);
		log.info("#BoardTests testUpdate() 수행 완료");
	}*/
	/*
	@Test
	public void testDelete() {
		boardMapper.delete(17);
		log.info("#BoardTests testDelete() 수행 완료");
	}*/
}
