package com.look.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.look.model.board.BoardVO;
import com.look.model.board.impl.BoardDAO;

public class MappingTest {
	
	
	@Autowired
	BoardDAO boardDao ;
	
	private static final Logger log = LoggerFactory.getLogger(MappingTest.class);
	
	@Test
	public void testDAO() {
		
		BoardVO board = new BoardVO();
		
		board.setSeq(33);
		board.setTitle("수정");
		board.setContent("수정된 내용");
		
	
		int result = boardDao.updateBoard(board);
		log.info("result : " +result);
		
	}

}
