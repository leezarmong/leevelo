package com.goods.myapp.controller;

import java.util.HashMap;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.goods.myapp.Pager;
import com.goods.myapp.model.product.ProductInfoVO;
import com.goods.myapp.model.product.ProductService;




@Controller
public class GoodsController {
	
	@Autowired
	ProductService productService;
	
	// 카테고리 품목 출력
		@RequestMapping("/category")
		public String getfbMirrorList(@RequestParam(defaultValue = "1") int curPage, ProductInfoVO vo, Model model) {
			int count = productService.getCountProduct(vo);
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();

			List<ProductInfoVO> list = productService.getProductList(start, end, vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("cate_id", vo.getCate_id());
			map.put("list", list);
			map.put("count", count);
			map.put("pager", pager);
			model.addAttribute("map", map);
			return "goodsmall";
		}
		
		

	
}
