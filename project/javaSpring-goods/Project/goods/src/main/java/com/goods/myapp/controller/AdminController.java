package com.goods.myapp.controller;

import java.io.File;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

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
import com.goods.myapp.model.member.MemberService;
import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.payment.GoodsPaymentService;
import com.goods.myapp.model.payment.GoodsPaymentVO;
import com.goods.myapp.model.product.ProductInfoVO;
import com.goods.myapp.model.product.ProductService;

@Controller
public class AdminController {

	@Autowired
	ProductService productService;

	@Autowired
	MemberService memberService;

	@Autowired
	GoodsPaymentService goodspaymentService;

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
		File file = new File("/Users/leezarmong/Documents/sts3/goods/src/main/webapp/" + vo.getPrd_img());
		if (file.exists()) { // 파일존재여부확인
			if (file.delete()) {
				System.out.println("파일삭제 성공");
			} else {
				System.out.println("파일삭제 실패");
			}
		} else {
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

	// 관리자용 상품 검색
	@RequestMapping(value = "/searchPrd2", method = RequestMethod.GET)
	public String listPage2(Model model, HttpSession session, ProductInfoVO vo,
			@RequestParam(defaultValue = "") String sPrd2, @RequestParam(defaultValue = "1") int curPage) {

		// 검색된 상품 수 카운트
		int count = productService.countSearchPrd(sPrd2);

		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		session.setAttribute("sPrd2", sPrd2); // 상품 이름 검색
		session.setAttribute("curPage", curPage);

		List<ProductInfoVO> list = productService.listSearchPrd(sPrd2, start, end); // 게시글 목록

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		map.put("sPrd2", sPrd2);
		model.addAttribute("map", map);

		return "admin/search";
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
		return "admin/memberList";
	}

	// 관리자 회원 정보 수정 페이지
	@RequestMapping("/modifyMember")
	public String modifyMember(MemberVO vo, Model model) {
		model.addAttribute("member2", memberService.memberDetail(vo));
		// member2 로 해주는 이유는 sesseion 에는 이미 member  로그인 되어있는 정보가 담겨있기 때문에
		// member 로 해줄 경우 회원의 정보가 안뜨고 admin 의 정보가 뜨게 된다.
		// 어짜피 개인 회원정보 로 상세 정보를 보게 된다면 session 에 저장 되어있는 값을 불러오면 됨.
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

		return "admin/searchmem";
	}

	// 회원 주문 내역 (pager)
	@RequestMapping("/paymentList")
	public String paymentList(@RequestParam(defaultValue = "1") int curPage, GoodsPaymentVO vo, Model model) {
		int count = goodspaymentService.Countpayment(vo);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<GoodsPaymentVO> list = goodspaymentService.paymentList(vo, start, end);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		return "admin/paymentList";
	}

	// 회원 주문 내역 (검색)
	@RequestMapping(value = "/searchID", method = RequestMethod.GET)
	public String paymentList(Model model, HttpSession session, GoodsPaymentVO vo, String sPrd,@RequestParam(defaultValue = "1") int curPage) {
		int count = goodspaymentService.CountSearchPayment(sPrd);

		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		session.setAttribute("sPrd", sPrd); // 아이디 검색
		session.setAttribute("curPage", curPage);

		List<GoodsPaymentVO> list = goodspaymentService.SearchPaymentList(sPrd, start, end);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		map.put("sPrd", sPrd);
		model.addAttribute("map", map);

		return "admin/searchID";
	}

}
