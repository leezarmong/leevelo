package com.land.myapp.view.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.land.myapp.Pager;
import com.land.myapp.model.member.vo.GoodsPaymentVO;
import com.land.myapp.model.member.vo.MemberService;
import com.land.myapp.model.member.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@RequestMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping("/term")
	public String term(MemberVO vo) {
		return "member/term";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUpView(MemberVO vo) {
		return "member/signup";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session) {
		MemberVO member = memberService.login(vo);
		if (member != null) {
			session.setAttribute("member", member);
			return "main";
		} else {
			return "member/login";
		}
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String signUp(MemberVO vo) {
		System.out.println("가입 성공....");
		memberService.insertMember(vo);
		return "main";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "main";
	}

	@PostMapping(value = "/checkID")
	@ResponseBody
	public int checkID(String member_id) {
		return memberService.checkID(member_id);
	}

	@PostMapping(value = "/checkMember")
	@ResponseBody
	public int checkMember(MemberVO vo) {
		return memberService.checkMember(vo);
	}

	// 멤버 리스트
	@GetMapping("/getMemberList")
	public String getMemberList(MemberVO mvo, Model m) {
		m.addAttribute("memberList", memberService.getMemberList(mvo));
		return "admin/memberManager";
	}

	// 멤버 삭제
	@PostMapping("/deleteMember")
	public String deleteMember(Integer member_no, RedirectAttributes rattr, String date) {
		try {
			int rowCnt = memberService.deleteMember(member_no);

			if (rowCnt != 1)
				throw new Exception("Member delete error");
			rattr.addFlashAttribute("msg", "DEL_OK");
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (date == "member_date") {
			return "redirect:/main";
		} else {
			return "redirect:/getMemberList";
		}
	}

	// 멤버
	@GetMapping("/getMember")
	public String getMember(Model m, Integer member_no) {
		m.addAttribute("member", memberService.getMember(member_no));
		return "admin/memberManager";
	}

	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
	}

	// 회원 정보 수정 창 이동
	@RequestMapping(value = "/mypage3", method = RequestMethod.GET)
	public String mypage4() {
		return "mypage/mypage3";
	}

	// 회원 정보 수정
	@RequestMapping(value = "/mypage3", method = RequestMethod.POST)
	public String updateMember(MemberVO vo) {
		memberService.updateMember(vo);
		return "mypage/mypage";
	}

	// 회원 탈퇴
	@RequestMapping(value = "/deleteMember2", method = RequestMethod.GET)
	public String deleteMember2(String member_id) {
		memberService.dropMember(member_id);
		return "redirect:/main";
	}

	// 주문 내역 등록
	@PostMapping(value = "/payment")
	public String insertGoodsPayment(GoodsPaymentVO vo) {
		memberService.insertGoodsPayment(vo);
		return "main";
	}

	// 굿즈 주문 내역 조회
	@GetMapping(value = "/mypage2")
	public String getOrderList(@RequestParam(defaultValue = "1") int curPage, GoodsPaymentVO vo, Model model,
			HttpSession session) {

		MemberVO member = (MemberVO) session.getAttribute("member");
		String member_id = member.getMember_id();
		vo.setMember_id(member_id);
		int count = memberService.getCountOrder(vo);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		List<GoodsPaymentVO> list = memberService.getGoodsPaymentList(vo, start, end);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		return "mypage/goodsList";
	}
}
