package com.look.controller.author;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.look.model.author.AuthorService;




@Controller
public class AuthorController {
	
	@Autowired
	AuthorService authorService;
	
	

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
	
	//작가 검색 팝업창 
	@RequestMapping(value="/authorPop")
	public String authorPop() throws Exception{
		
		return "admin/adminpop/authorPop";
	}
	
	
	

}
