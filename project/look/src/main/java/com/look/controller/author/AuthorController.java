package com.look.controller.author;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		       
        model.addAttribute("list", authorService.authorGetList(cri));
        
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
	
	
	

}
