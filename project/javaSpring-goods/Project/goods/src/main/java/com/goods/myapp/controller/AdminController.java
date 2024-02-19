package com.goods.myapp.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.goods.myapp.Pager;
import com.goods.myapp.model.product.ProductInfoVO;
import com.goods.myapp.model.product.ProductService;



@Controller
public class AdminController {

	@Autowired
	ProductService productService;

	// 상품등록 페이지
	@RequestMapping(value = "/insertProduct", method = RequestMethod.GET)
	public String insertProductView(ProductInfoVO vo) {
		return "admin/insertProduct";
	}

	// (local) 상품등록
	@RequestMapping("/insertProduct")
	public String insertProduct(MultipartHttpServletRequest multi, ProductInfoVO vo) {
		System.out.println(vo.toString());
		
		// local window url
//		String root = "../stswk/goods/src/main/webapp/";
//		String path = "resources/img/product/" + vo.getCate_id() + "/";
//		String realpath = root + "resources/img/product/" + vo.getCate_id() + "/";
		
		// local mac url
		String root = "/Users/leezarmong/Documents/sts3/goods/src/main/webapp/";
		String path = "resources/img/product/" + vo.getCate_id() + "/";
		String realpath = root + "resources/img/product/" + vo.getCate_id() + "/";

		File dir = new File(realpath);
		if (!dir.isDirectory()) {
			dir.mkdir();
		}

		Iterator<String> files = multi.getFileNames();
		while (files.hasNext()) {
			String uploadFile = files.next();
			Random rand = new Random();
			int rd = Math.abs(rand.nextInt());
			MultipartFile mFile = multi.getFile(uploadFile);
			String fileName = mFile.getOriginalFilename();
			vo.setPrd_img(path + rd + fileName);
			try {
				mFile.transferTo(new File(realpath + rd + fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		productService.insertProduct(vo);
		System.out.println(vo.toString());
		return "admin/insertProduct";
	}

	// 상품코드 중복검사
	@ResponseBody
	@RequestMapping(value = "/prdCheckID")
	public int prdCheckID(ProductInfoVO vo) {
		int prdCheckID = productService.prdCheckID(vo);
		return prdCheckID;
	}
	
	// 관리자 용 상품 목록
		@RequestMapping(value = "/productList", method = RequestMethod.GET)
		public String productListView(@RequestParam(defaultValue = "1") int curPage, ProductInfoVO vo, Model model) {
			int count = productService.getAdminCountProduct(vo);
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();

			List<ProductInfoVO> list = productService.getAdminProductList(start, end, vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("count", count);
			map.put("pager", pager);
			model.addAttribute("map", map);
			return "admin/productList";
		}
		
		// 상품 삭제
		@ResponseBody
		@RequestMapping("/delPrd")
		public int deleteProduct(ProductInfoVO vo) {
			productService.deleteProduct(vo);
			File file = new File("/Users/leezarmong/Documents/sts3/goods/src/main/webapp/"+vo.getPrd_img());        
			if( file.exists() ){ //파일존재여부확인
				if(file.delete()){
					System.out.println("파일삭제 성공");
				}else{
					System.out.println("파일삭제 실패");
				}	          
			}else{
				System.out.println("파일이 존재하지 않습니다.");
			}   
			int a = 1;
			return a;
		}

		// 상품 수정 페이지
		@RequestMapping("/modifyproduct")
		public String Modifyproduct(ProductInfoVO vo, Model model) {
			model.addAttribute("product", productService.productDetail(vo));
			return "admin/modifyProduct";
		}	
		
		// 상품 수정 처리
		@RequestMapping("/modifyproduct2")
		public String modifyproduct2(ProductInfoVO vo) {
			productService.modifyProduct(vo);
			
			return "redirect:productList";
		}


}
