package com.rent.view.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rent.home.Pager;
import com.rent.model.member.MemberService;
import com.rent.model.member.MemberVO;
import com.rent.model.payment.PaymentService;
import com.rent.model.payment.PaymentVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private PaymentService paymentService;

	// 메인 페이지
	@RequestMapping("/main")
	public String main() { return "main"; }
		
	// 차량소개
	@RequestMapping(value = "/vehicle", method = RequestMethod.GET)
	public String vehicle() {
		return "member/vehicle";
	}
	
	// map
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map(){
		return "member/map";
	}
	
	// Driving 명소
    @RequestMapping(value = "/destinations", method = RequestMethod.GET)
    public String destinations() {
       return "member/destinations";
    }	
		
	// 차량보험선택 페이지
	@RequestMapping(value = "/introduction2", method = RequestMethod.GET)
	public String introduction2() {
		return "member/introduction";
	}
	
	// 회사 소개
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus() {
		return "member/aboutus";
	}
	
	// faq
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq() {
		return "member/faq";
	}
		
	// destinationstwo
	@RequestMapping(value = "/destinationstwo", method = RequestMethod.GET)
	public String destinationstwo() {
		return "member/destinationstwo";
	}
	
	// 약관
	@RequestMapping("/conditions")
	public String member_reg() { return "member/conditions"; }
	
	// 회원 가입 페이지
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String member() { return "member/member"; }
	
	// 아이디 중복검사
	@ResponseBody
	@RequestMapping(value = "/checkID")
	public int checkID(MemberVO vo) {
		int checkID = memberService.checkID(vo);
		return checkID;
	}	

	// 회원가입
	@RequestMapping("/join")
	public String signUp(MemberVO vo) {
		System.out.println("가입 성공....");
		memberService.insertMember(vo);
		return "main";
	}

	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginView(MemberVO vo) {
		return "member/login";
	}
	
	// 아이디 찾기 페이지
	@RequestMapping(value="/find_id")
	public String find_id() {
		return "member/find_id";
	}
	
	// 아이디 찾기 회원체크	
	@ResponseBody
	@RequestMapping(value = "/findId")
	public int findId(MemberVO vo) {
		int findId = memberService.findId(vo);
		return findId;
	}
	
	// 아이디 찾기
	@RequestMapping(value = "/findId2", method = RequestMethod.POST)
	public String findId2(MemberVO vo, HttpSession session) {
		MemberVO member = memberService.findId2(vo);
		if (member != null) {
			session.setAttribute("member", member);
			return "member/found_id";
		} else {
			return "member/find_id";
		}
	}
		
	// 찾은 아이디
	@RequestMapping("/foundID")
	public String foundIDView() { return "member/found_id"; }
	
		      
	// 비밀번호 찾기.
	@RequestMapping(value="/find_pw", method = RequestMethod.GET)
	public String find_pw() {
	    return "member/find_pw";
	}
	
	// 비밀번호 찾기 회원체크	
	@ResponseBody
	@RequestMapping(value = "/findPw")
	public int findPw(MemberVO vo) {
		int findPw = memberService.findPw(vo);
		return findPw;
	}
	
	// 비밀번호 찾기 변경
	@RequestMapping(value = "/findPw2", method = RequestMethod.POST)
	public String findPw2(MemberVO vo, HttpSession session) {
		MemberVO member = memberService.findPw2(vo);
		if (member != null) {
			session.setAttribute("member", member);
			return "member/found_pw";
		} else {
			return "member/find_pw";
		}
	}
	
	// 비밀번호 변경
	@RequestMapping("/cpw")
	public String cpwMember(MemberVO vo) {
		memberService.cpwMember(vo);
		return "found_pw2";
	}
		
	// 찾은 비밀번호
	@RequestMapping("/foundPW")
	public String foundPWView() { return "member/found_pw"; }


	// 세션 비우기
	@RequestMapping(value = "/emptyss", method = RequestMethod.GET)
	public void emptyss(HttpSession session) {
		session.invalidate();
	}	
	
	// 회원 체크
	@ResponseBody
	@RequestMapping(value = "/checkMember")
	public int checkMember(MemberVO vo) {
		int checkMember = memberService.checkMember(vo);
		return checkMember;
	}

	// 로그인
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
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "main";
	}
	
	// 렌트 시간 임시 저장	
	@RequestMapping(value="/introduction", method=RequestMethod.POST)
	public void introduction(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String cd1 = request.getParameter("cd1");
		session.setAttribute("cd1", cd1);
		String cd2 = request.getParameter("cd2");
		session.setAttribute("cd2", cd2);
		String local = request.getParameter("local");
		session.setAttribute("local", local);
		String dd1 = request.getParameter("dd1");
		session.setAttribute("dd1", dd1);
		String dd2 = request.getParameter("dd2");
		session.setAttribute("dd2", dd2);
	}
	
	// 회원 주문내역
	@ResponseBody
	@RequestMapping("/mypL")
	public String mypage1(MemberVO vo, HttpSession session, Model model, @RequestParam(defaultValue = "1") int myp) {
		// 주문 테이블 갯수 계산
		int count = memberService.getCountOrder(vo);

		session.setAttribute("myp", myp);
		session.setAttribute("member_id", vo.getMember_id());

		// 페이지 관련 설정
		Pager pager = new Pager(count, myp);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<PaymentVO> list = memberService.getOrderList(vo, start, end);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mypL", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		session.setAttribute("map", map);
		return "member/mypage";
	}
	
	// 회원 주문내역 뷰 (페이징 처리)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypageView(MemberVO vo, HttpSession session, Model model, @RequestParam(defaultValue = "1") int myp) {
		int count = memberService.getCountOrder(vo);
		Pager pager = new Pager(count, myp);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<PaymentVO> list = memberService.getOrderList(vo, start, end);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mypL", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		session.setAttribute("map", map);
		return "member/mypage";
	}	
	
	// 마이페이지 주문 정보 삭제
	@ResponseBody
	@RequestMapping("/delMyp")
	public int deletePayment(PaymentVO vo) {
		paymentService.deletePayment(vo);		
		int a = 1;
		return a;
	}
	
	// 마이페이지-비밀번호 view
	@RequestMapping(value = "/mypage2", method = RequestMethod.GET)
	public String mypageView2(MemberVO vo) {
		return "member/mypage2";
	}

	// 마이페이지-비밀번호 확인 처리
	@RequestMapping(value = "/mypage2", method = RequestMethod.POST)
	public String mypage2(MemberVO vo) {
		memberService.login(vo);
		return "member/mypage3";
	}

	// 마이페이지-회원정보수정 view
	@RequestMapping(value = "/mypage3", method = RequestMethod.GET)
	public String mypageView3(MemberVO vo) {
		return "member/mypage3";
	}

	// 마이페이지-회원정보수정 처리
	@RequestMapping(value = "/mypage3", method = RequestMethod.POST)
	public String mypage3(MemberVO vo) {
		memberService.updateMember(vo);
		return "member/mypage";
	}

	// 마이페이지-완료 view
	@RequestMapping("/mypage4")
	public String mypage4(MemberVO vo) {
		return "member/mypage4";
	}	
	
	// 관리자 용 회원 목록
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberListView(@RequestParam(defaultValue = "1") int curPage, MemberVO vo, Model model) {
		int count = memberService.getAdminCountMember(vo);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<MemberVO> list = memberService.getAdminMemberList(start, end, vo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		System.out.println("1");
		return "admin/memberList";
	}
	
	// 관리자 회원 검색
	@RequestMapping(value = "/searchMem", method = RequestMethod.GET)
	public String listPage2(Model model, HttpSession session, MemberVO vo,
			@RequestParam(defaultValue = "") String sPrd2, @RequestParam(defaultValue = "1") int curPage) {
		// 회원 수 카운트	
		int count = memberService.countSearchMem(sPrd2);
	
		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		session.setAttribute("sPrd2", sPrd2); // 회원 이름 검색
		session.setAttribute("curPage", curPage);		

		List<MemberVO> list = memberService.listSearchMem(sPrd2, start, end); // 회원 목록
	
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		map.put("sPrd2", sPrd2);
		model.addAttribute("map", map);
		
		return "product/searchmem";
	}	
	
	// 관리자 회원 정보 수정 페이지
	@RequestMapping("/modifyMember")
	public String modifyMember(MemberVO vo, Model model) {
		model.addAttribute("member2", memberService.memberDetail(vo));
		return "admin/modifyMember";
	}	
	
	// 관리자 회원 수정 처리
	@ResponseBody
	@RequestMapping(value = "/modifyMember2", method = RequestMethod.POST)
	public int modifyMember2(MemberVO vo) {
		memberService.modifyMember(vo);
		int a = 1;
		return a;	
	}	
	
	// 관리자 회원 삭제
	@ResponseBody
	@RequestMapping("/delMem")
	public int deleteMember(MemberVO vo) {
		memberService.deleteMember(vo);
		int a = 1;
		return a;
	}	
	
}
