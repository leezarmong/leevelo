package com.goods.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goods.myapp.model.member.MemberService;
import com.goods.myapp.model.member.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberservice;
	
	//로그인 페이지
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		
		return "member/login";
	}
	
	//로그인 member session 저장
	@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session) {
		MemberVO member = memberservice.login(vo);
		
		if (member != null) {
			session.setAttribute("member", member);
			return "goodsmall";
		} else {
			return "member/login";
		}
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "goodsmall";
	}
	
	//회원가입
	@RequestMapping(value="/sign", method = RequestMethod.POST)
	public String sign(MemberVO vo) {
		
		memberservice.insertMember(vo);
		return "goodsmall";
	}
	
	//회원 가입 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/checkID")
	public int checkID(String member_id) {
		System.out.print(member_id);
		int result = memberservice.checkID(member_id);
		return result;
	}
	
	//로그인 시 오타 확인 맴버체크
	@ResponseBody
	@RequestMapping(value="/checkMember", method = RequestMethod.POST)
	public int checkMember(MemberVO vo) {
		
		return memberservice.checkMember(vo);
	}
	
}
