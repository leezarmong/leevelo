package com.goods.myapp.controller;


import java.util.HashMap;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goods.myapp.Pager;
import com.goods.myapp.model.member.MemberService;
import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberservice;

	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "member/login";
	}

	// 로그인 member session 저장
	@RequestMapping(value = "/login", method = RequestMethod.POST)
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
	
	// 회원가입 페이지
		@RequestMapping(value = "/signup", method = RequestMethod.GET)
		public String signup() {
			return "member/signup";
		}

	// 회원가입
	@RequestMapping(value = "/sign", method = RequestMethod.POST)
	public String sign(MemberVO vo) {

		memberservice.insertMember(vo);
		return "goodsmall";
	}

	// 회원 가입 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/checkID")
	public int checkID(MemberVO vo) {
		System.out.print(vo);
		int result = memberservice.checkID(vo);
		return result;
	}

	// 로그인 시 오타 확인 맴버체크
	@ResponseBody
	@RequestMapping(value = "/checkMember", method = RequestMethod.POST)
	public int checkMember(MemberVO vo) {

		return memberservice.checkMember(vo);
	}

	// 회원 주문내역 뷰 (페이징 처리)
	@GetMapping(value = "/mypage")
	public String getOrderList(@RequestParam(defaultValue = "1") int curPage, GoodsPaymentVO vo, Model model,
			HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		String member_id = member.getMember_id();
		vo.setMember_id(member_id);
		int count = memberservice.getCountOrder(vo);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		List<GoodsPaymentVO> list = memberservice.getGoodsPaymentList(vo, start, end);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		return "member/mypage";
	}

	// 마이페이지-비밀번호 view
	@RequestMapping(value = "/mypage2", method = RequestMethod.GET)
	public String mypageView2() {
		return "member/mypage2";
	}

	// 마이페이지-비밀번호 확인 처리
	@RequestMapping(value = "/mypage2", method = RequestMethod.POST)
	public String mypage2(MemberVO vo) {
		memberservice.checkMember(vo);
		return "member/mypage3";
	}

	// 마이페이지-회원정보수정 view
	@RequestMapping(value = "/mypage3", method = RequestMethod.GET)
	public String mypageView3() {
		return "member/mypage3";
	}

	// 마이페이지-회원정보수정 처리
	@RequestMapping(value = "/mypage3", method = RequestMethod.POST)
	public String mypage3(MemberVO vo) {
		memberservice.updateMember(vo);
		return "member/mypage";
	}
	
	//아이디 찾기 페이지
	@RequestMapping(value = "find_id", method = RequestMethod.GET)
	public String find_id() {
		return "member/find_id";
	}
	
	// 찾은 아이디 페이지
	@RequestMapping("/foundID")
	public String foundIDView() {
		return "member/found_id"; 
		}
	
	// 아이디 찾기 회원체크	
	@ResponseBody
	@RequestMapping(value = "/findId")
	public int findId(MemberVO vo) {
		int findId = memberservice.findId(vo);
		return findId;
	}
	
	// 아이디 찾기
	@RequestMapping(value = "/findId2", method = RequestMethod.POST)
	public String findId2(MemberVO vo, HttpSession session) {
		MemberVO member = memberservice.findId2(vo);
		if (member != null) {
			session.setAttribute("member", member);
			return "member/found_id";
		} else {
			return "member/find_id";
		}
	}
	
	//비밀번호 찾기 페이지
	@RequestMapping(value = "find_pw", method = RequestMethod.GET)
	public String find_pw() {
		return "member/find_pw";
	}
	
	// 비밀번호 찾기 회원체크	count ( 1 )
	@ResponseBody
	@RequestMapping(value = "findPw")
	public int findPw(MemberVO vo) {
		int findPw = memberservice.findPw(vo);
		return findPw;
	}
	
	// 비밀번호 찾기 변경 select ( 2 )
	@RequestMapping(value = "findPw2", method = RequestMethod.GET)
	public String findPw2(MemberVO vo, HttpSession session) {
		MemberVO member = memberservice.findPw2(vo);
		if (member != null) {
			session.setAttribute("member", member);
			return "member/found_pw";
		} else {
			return "member/find_pw";
		}
	}
	
	// 비밀번호 변경 페이지
	@RequestMapping(value="found_pw", method = RequestMethod.GET)
	public String found_pw () {	
		return "member/found_pw";
	}
	
	// 비밀번호 변경
	@RequestMapping("/changePass")
	public String changePass (MemberVO vo) {
		memberservice.changePass(vo);
		System.out.print("진입");
		return "redirect:login";
	}
	
	// 세션 비우기
	@RequestMapping(value = "emptyss", method = RequestMethod.GET)
	public void emptyss(HttpSession session) {
		session.invalidate();
	}	
}
