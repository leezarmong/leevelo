package com.look.controller.board;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.look.model.board.BoardService;
import com.look.model.board.BoardVO;
import com.look.model.member.MemberVO;
import com.look.model.pager.Criteria;
import com.look.model.pager.PageMakerVO;

@Controller
public class BoardController {

	@Autowired
	BoardService boardservice;

	// 기본 (로그인 페이지)
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {

		return "index";

	}

	// 메인 페이지
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String tomain() {

		return "board/main";

	}

	// 입력 페이지
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String end() {

		return "board/insert";

	}

	// ajax insert 주소
	@RequestMapping("/end")
	public String insert(BoardVO vo, MemberVO mvo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		String member_id = member.getMember_id();

		vo.setWriter(member_id);
		boardservice.insertBoard(vo);
		
		String log = vo.toString();
		System.out.println("데이터 추가 성공!!!");
		System.out.print(log);
		return "redirect:main";

	}

	// 게시판 리스트 페이지 (페이징 수정)
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model , Criteria cri) {
		//model.addAttribute("listb", boardservice.boardList());
		 model.addAttribute("list", boardservice.getListPaging(cri));
		 
		 
		 int total = boardservice.getTotal(cri);
		 PageMakerVO pagemaker = new PageMakerVO(cri, total);
		 model.addAttribute("pagemaker",pagemaker);
		 
		 //System.out.print(total+"개 카운팅 됨.....!!");
		return "board/list";
	}
	
	
	

	// 상세 페이지
	@GetMapping("/detail")
	public String Detail(int seq, Model model, Criteria cri) {
//		BoardVO boardVO = boardservice.getBoardList(seq);
//		model.addAttribute("detail", boardVO);
		
		model.addAttribute("detail" , boardservice.getBoardList(seq));
		model.addAttribute("cri",cri);

		return "board/detail";
	}

	// 글 삭제
	@GetMapping("/delete")
	public String delete(int seq) {
		boardservice.deleteBoard(seq);
		System.out.print("삭제완료.!!");

		return "redirect:list";

	}

	// 글 수정 페이지
	@GetMapping("/updatepage")
	public String updatepage(int seq, Model model, Criteria cri) {
		model.addAttribute("detail" , boardservice.getBoardList(seq));
		model.addAttribute("cri",cri);
		return "board/update";
	}

	// 글 수정
	@PostMapping("/updatepage")
		public String update(BoardVO vo , RedirectAttributes rttr) {
		// RedirectAttributes 는 전에 있던 정보드를 흘리지 않기 위함.
										
			boardservice.updateBoard(vo);
			rttr.addFlashAttribute("result", "modify success");
			//메서드를 사용하여 리다이렉트 속성을 추가하면 리다이렉트된 요청에서 해당 속성을 사용
			return "redirect:list";
		}
		
}