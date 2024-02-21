package com.goods.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goods.myapp.model.basket.BasketService;
import com.goods.myapp.model.basket.BasketVO;
import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.product.ProductInfoVO;
import com.goods.myapp.model.product.ProductService;

@Controller
public class BasketController {

	@Autowired
	BasketService basketservice;
	
	@Autowired
	ProductService productservice;

	// 장바구니 등록
	@RequestMapping("/insertBasket")
	public String insertBasket(BasketVO vo) {

		basketservice.insertBasket(vo);
		return "redirect:goodsmall";
	}

	// 리스트 구현
	@RequestMapping(value = "/basketlist", method = RequestMethod.GET)
	public String listbasket(Model model, BasketVO vo, HttpSession session, ProductInfoVO gvo) {

		MemberVO member = (MemberVO) session.getAttribute("member");
		String member_id = member.getMember_id();
		vo.setMember_id(member_id);

		model.addAttribute("basketList", basketservice.getBasketList(vo));

		System.out.print("데이터 전송 됨");
		return "basket/basketlist";

	}

	// 삭제
	@RequestMapping(value = "/delbasket", method = RequestMethod.GET)
	// "RequestMethod.GET" 매개변수를 사용하여 GET 요청을 처리하도록 설정
	public String deletebasket(BasketVO vo) {

		basketservice.deleteBasket(vo);
		System.out.println("데이터 삭제 됨");
		return "redirect:/basketlist";

	}

	// 상세
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String getSelectOne(BasketVO vo, Model model, ProductInfoVO pvo) {
		
		BasketVO basketvo = basketservice.getSelectOne(vo);
		model.addAttribute("pageinfo", basketvo);
		model.addAttribute("goods",productservice.productDetail(pvo));
		return "basket/get";
	}
	
	

}
