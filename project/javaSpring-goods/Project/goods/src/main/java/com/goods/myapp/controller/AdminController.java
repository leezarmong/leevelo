package com.goods.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class AdminController {
	
	// 상품등록 페이지
		@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
		public String insertProductView() {
			return "admin/insertProduct";
		}

}
