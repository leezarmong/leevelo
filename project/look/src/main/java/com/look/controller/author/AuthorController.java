package com.look.controller.author;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.look.model.author.AuthorService;
import com.look.model.author.AuthorVO;
import com.look.model.pager.Criteria;
import com.look.model.pager.PageMakerVO;




@Controller
public class AuthorController {
	
	@Autowired
	AuthorService authorService;
	
	

	// 작가 등록 페이지
	@RequestMapping(value="/authorInsert")
	public String authorInsert() {
		
		return "admin/authorInsert";
	}
	
	//작가 등록 
	@RequestMapping(value = "/auInserting")
	public String auInserting(AuthorVO vo) {
		authorService.authorEnroll(vo);
		
		return "redirect:authorInsert";
	}
	
	
	// 작가 리스트 페이지 (페이징)
	@RequestMapping(value="/authorList", method = RequestMethod.GET)
	public String authorList(Model model , Criteria cri) {
		       

		List<AuthorVO> list = authorService.authorGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list",list);	// 작가 존재 경우
		} else {
			model.addAttribute("listCheck", "empty");	// 작가 존재하지 않을 경우
		}
 
        
        int total = authorService.authorGetTotal(cri);
        PageMakerVO pageMaker = new PageMakerVO(cri, total);
        model.addAttribute("pageMaker", pageMaker);
		
		return "admin/authorList";
	}
	
	//작가 검색 팝업창 
	@RequestMapping(value="/authorPop")
	public String authorPop() throws Exception{
		
		return "admin/adminpop/authorPop";
	}
	
	//작가 상세 페이지
	@RequestMapping(value = "/authorDetail" , method = RequestMethod.GET)
	public String authorDetail(int authorId , Model model , Criteria cri) {
		
		//작가 관리 페이지 정보
		model.addAttribute("cri",cri);
		
		//작가 상세 정보
		model.addAttribute("authorInfo",authorService.authorGetDetail(authorId));
		
		return "admin/authorDetail";
	}
	
	//작가 수정 페이지
	@RequestMapping(value = "/authorModify" , method = RequestMethod.GET)
	public String authorModify(int authorId , Model model , Criteria cri) {
		
		//작가 관리 페이지 정보
		model.addAttribute("cri",cri);
		
		//작가 상세 정보
		model.addAttribute("authorInfo",authorService.authorGetDetail(authorId));
		
		return "admin/authorModify";
	}
	
	/* 작가 정보 수정 */
	@RequestMapping(value = "/authorModify" , method = RequestMethod.POST)
	public String authorModifyPOST(AuthorVO vo, RedirectAttributes rttr) throws Exception{		
		
	
		authorService.authorModify(vo);
		
		rttr.addFlashAttribute("result", "modify_result");
		
		return "redirect:authorList";
		
	}
	
	
	

}
