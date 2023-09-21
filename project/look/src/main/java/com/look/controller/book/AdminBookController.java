package com.look.controller.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.look.model.book.BookService;

@Controller
public class AdminBookController {

	
	@Autowired
	BookService bookservice;
	
	
	
	@RequestMapping(value="/test")
	public String testPage() {
		
		return "admin/test";
	}
	
	
}
