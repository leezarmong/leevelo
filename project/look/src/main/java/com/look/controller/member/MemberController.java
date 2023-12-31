package com.look.controller.member;

import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.look.model.board.BoardService;
import com.look.model.board.BoardVO;
import com.look.model.member.MemberService;
import com.look.model.member.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	BoardService boardService;

	// 회원가입
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {

		return "member/signup";
	}

	// ajax 회원가입 경로
	@RequestMapping(value = "/endsignup")
	public String endsignup(MemberVO vo) {
		memberService.insertMember(vo);
		System.out.print("회원가입 성공.!!");

		return "redirect:main";
	}

	// 회원가입 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/chackid")
	public int chackid(String member_id) {
		System.out.print(member_id);
		int result = memberService.checkID(member_id);

		return result;
	}

	// 로그인 페이지
	@RequestMapping(value = "/userlogin")
	public String loginUser() {

		return "member/userlogin";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session) {
		MemberVO member = memberService.login(vo);
		
		if (member != null) {
			session.setAttribute("member", member);

			return "board/main";

		} else {

			return "member/signup";
		}
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "board/main";
	}

	// 회원 중복 체크
	@ResponseBody
	@RequestMapping(value = "/chackmember")
	public int chackMember(MemberVO vo) {
		System.out.print(vo);
		int chackMember = memberService.checkMember(vo);
		
		return chackMember;
	}
	
	//----------- 비밀번호 찾기 변경하기.
	// 비밀번호 찾기 버튼
	@RequestMapping(value = "/findPW")
	public String findPW () {
		
		return "find/findPW";
	}
	
	
	// 비밀번호 찾기 회원체크	
	@ResponseBody
	@RequestMapping(value = "/findchackPWing")
	public int findchackPWing(MemberVO vo) {
		int findchackPW = memberService.findchackPWing(vo);
	
		return findchackPW;
	}
	
	// 비밀번호 찾기 확인 후 변경
	@RequestMapping(value = "/findchackPW", method = RequestMethod.GET)
	public String findchackPW(MemberVO vo ,  HttpSession session) {
		MemberVO member = memberService.findchackPW(vo);
			
			if (member != null) {
				session.setAttribute("member", member);
				return "find/findPW";
				
			} else {
				return "find/findchackPW";
			}	
	}
	//@ResponseBody 로 되어있으면 메소드 안에있는 값들이 전송 된다 주의...
	
	
	// 비밀번호 변경
	@RequestMapping("/cpwMember")
	public String cpwMember (MemberVO vo) {
		
		memberService.cpwMember(vo);
		
		return "redirect:findchackPW";
	
	}
	
	//-----------아이디 찾기 변경하기.
	// 아이디 찾기 버튼
	@RequestMapping("/findID")
	public  String findID() {
		
		return "find/findID";
	}
	
	// 아이디 회원체크	
	@ResponseBody
	@RequestMapping(value = "/findchackIDing")
	public int findchackIDing(MemberVO vo) {
		int findchackID = memberService.findchackIDing(vo);
	
		return findchackID;
	}
		
	// 아이디 찾은 후 로그인 페이지
	@RequestMapping(value = "/findchackID", method = RequestMethod.GET)
	public String findchackID(MemberVO vo ,  HttpSession session) {
		MemberVO member = memberService.findchackID(vo);
			
		if (member != null) {
			session.setAttribute("member", member);
			return "find/findID";
				
		} else {
			return "find/findchackID";
		}	
	}
		
	// 세션 비우기
	@RequestMapping(value = "/emptyss", method = RequestMethod.GET)
	public String emptyss(HttpSession session) {
		System.out.print("진입.");
		session.invalidate();
		System.out.print("진입.2");
		
		return "redirect:userlogin";
	}
	
}
