package com.look.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.look.model.book.BookVO;
import com.look.model.book.impl.BookDAO;

@RunWith(SpringJUnit4ClassRunner.class)
//@Configuration("file:src/main/resources/spring/root-context.xml")
@ContextConfiguration(locations = "classpath:spring/root-context.xml")
public class MappingTest {
	
	
	@Autowired
	private BookDAO mapper;
	
	/* 상품 등록 */
	@Test
	public void bookEnrollTest() throws Exception{
		
		BookVO book = new BookVO();
		
		book.setBookName("mapper 테스트");
		book.setAuthorId(123);
		book.setPubleYear("2021-03-18");
		book.setPublisher("출판사");
		book.setCateCode("0231");
		book.setBookPrice(20000);
		book.setBookStock(300);
		book.setBookDiscount(0.23);
		book.setBookIntro("책 소개 ");
		book.setBookContents("책 목차 ");
		
		mapper.bookEnroll(book);
	}


}
