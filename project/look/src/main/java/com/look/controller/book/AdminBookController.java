package com.look.controller.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.look.model.book.BookService;
import com.look.model.book.BookVO;

@Controller
public class AdminBookController {

	
	@Autowired
	BookService bookservice;
	
	
	// 어드민 북 등록 페이지 
	@RequestMapping(value="/goodsEnroll")
	public String goodsEnroll() {
		
		return "admin/goodsEnroll";
	}
	
	// 작가 등록 페이지
	@RequestMapping(value="/authorInsert")
	public String authorInsert() {
		
		return "admin/authorInsert";
	}
	
	// 작가 리스트 페이지
	@RequestMapping(value="/authorList")
	public String authorList() {
		
		return "admin/authorList";
	}
	
	// 어드민 북 등록 페이지 insert
	@RequestMapping(value="/insertbook")
	public String insertbook(BookVO vo) {
		
		bookservice.bookEnroll(vo);
		System.out.print("입력되었습니다.");
		return "redirect:goodsEnroll";
	}
	
	//작가 검색 팝업창 
	@RequestMapping("/authorPop")
	public String authorPop() throws Exception{
		
		return "admin/adminpop/authorPop";
	}
	
	
}
