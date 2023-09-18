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
	public String login(MemberVO vo, BoardVO bvo, HttpSession session) {
		MemberVO member = memberService.login(vo);
		// board session 에 bvo 저장 
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
					return "member/userlogin";
					
				} else {
					return "find/findchackPW";
				}	
		}
		//@ResponseBody 로 되어있으면 메소드 안에있는 값들이 전송 된다 주의...
		
		
	// 비밀번호 변경
		@RequestMapping(value ="/cpwMember", method = RequestMethod.GET)
		public void cpwMember (MemberVO vo) {
			System.out.print("여기 진입 됨?1");
			memberService.cpwMember(vo);
			System.out.print("여기 진입 됨?2");
		
		}
		
		// 세션 비우기
		@RequestMapping(value = "/emptyss", method = RequestMethod.GET)
		public void emptyss(HttpSession session) {
			session.invalidate();
		}
	
}
