package com.look.controller.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.look.model.book.BookService;
import com.look.model.book.BookVO;
import com.look.model.cate.CateService;
import com.look.model.cate.CateVO;
import com.look.model.pager.Criteria;
import com.look.model.pager.PageMakerVO;

@Controller
public class AdminBookController {

	
	@Autowired
	BookService bookservice;
	
	@Autowired
	CateService cateservice;
	
	
	// 어드민 북 등록 페이지 
	@RequestMapping(value="/goodsEnroll" , method = RequestMethod.GET)
	public String goodsEnroll(Model model) throws Exception {
		
		ObjectMapper objm = new ObjectMapper();
		/* Jackson-databind의 메서드는 static 메서드가 아니기 때문에 바로사용할수가 없슴.
		 * 그렇게 때문에 ObjectMapper 객체를 인스턴스 하여 사용.*/
		
		List<CateVO> list = cateservice.cateList();
		
		String cateList = objm.writeValueAsString(list);
		// Java 객체를 String타입의 JSON형식 데이터로 변환해줌
		
		model.addAttribute("cateList",cateList);

		
		return "admin/goodsEnroll";
	}
	
	
	// 어드민 북 등록 페이지 insert
	@RequestMapping(value="/insertbook")
	public String insertbook(BookVO vo) {
		
		bookservice.bookEnroll(vo);
		System.out.print("입력되었습니다.");
		return "redirect:goodsEnroll";
	}
	
	
	// 어드민 북 List
	@RequestMapping(value="/goodsGetList" , method = RequestMethod.GET)
	public String goodsGetList(Criteria cri , Model model) {
		
		List<BookVO> list = bookservice.goodsGetList(cri);
		// list 인스턴스
		
		if(!list.isEmpty()) {
			
			model.addAttribute("list", list);
			// 비어있지 않은 경우
		}
		else {
			
			model.addAttribute("listCheck", "empty");
			// 비어있을 경우
		}
		
		model.addAttribute("pageMaker", new PageMakerVO(cri, bookservice.goodsGetTotal(cri)));
		// pageMaker addAttribute.
		
		return "admin/goodsGetList";
	}
	
	
	
}
