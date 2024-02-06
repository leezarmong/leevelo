package com.goods.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	
	//로그인
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		
		return "member/login";
	}
}
