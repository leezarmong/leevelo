package com.rent.view.product;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
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

import com.rent.home.Pager;
import com.rent.model.bt.BtService;
import com.rent.model.bt.BtVO;
import com.rent.model.payment.PaymentService;
import com.rent.model.payment.PaymentVO;
import com.rent.model.product.ProductInfoVO;
import com.rent.model.product.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private BtService btService;
	@Autowired
	private PaymentService paymentService;

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
		return "product/category";
	}
	
	// 선택 보험 정보 불러오기
	@ResponseBody
	@RequestMapping("/boc")
	public int bo(BtVO vo, HttpSession session) {
		int a;
		BtVO bt = btService.btinfo(vo);		
		if (bt != null) {
			session.setAttribute("bt", bt);
			a=1;
			return a;
		}else
			a=0;
			return a;
	}

	// 관리자 페이지
	// 상품코드 중복검사
	@ResponseBody
	@RequestMapping(value = "/prdCheckID")
	public int prdCheckID(ProductInfoVO vo) {
		int prdCheckID = productService.prdCheckID(vo);
		return prdCheckID;
	}

	// 상품등록 페이지
	@RequestMapping("/prdinsert")
	public String insertProductView(ProductInfoVO vo) {
		return "admin/insertProduct";
	}

	// (진) 상품등록
	@RequestMapping("/insertProduct")
	public String insertProduct(MultipartHttpServletRequest multi, ProductInfoVO vo) {
		System.out.println(vo.toString());
		String root = "../stswk/rent/src/main/webapp/";
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
		return "main";
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

		session.setAttribute("sPrd2", sPrd2);	// 상품 이름 검색
		session.setAttribute("curPage", curPage);
		

		List<ProductInfoVO> list = productService.listSearchPrd(sPrd2, start, end);	// 게시글 목록

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);		// map에 자료 저장
		map.put("count", count);
		map.put("pager", pager);	// 페이지 네버게이션을 위한 변수
		map.put("sPrd2", sPrd2);
		model.addAttribute("map", map);
	
		return "product/search";
	}

	// 제품 상세페이지
	@RequestMapping("/productpage")
	public String productPage(ProductInfoVO vo, Model model) {
		model.addAttribute("product", productService.productDetail(vo));
		return "product/productpage";
	}
	
	// 상품 수정 페이지
	@RequestMapping("/modifyproduct")
	public String Modifyproduct(ProductInfoVO vo, Model model) {
		model.addAttribute("product", productService.productDetail(vo));
		return "admin/modifyProduct";
	}	
	
	// 상품 수정 처리
	@ResponseBody
	@RequestMapping(value = "/modifyproduct2", method = RequestMethod.POST)
	public int modifyproduct2(ProductInfoVO vo) {
		productService.modifyProduct(vo);
		int a = 1;
		return a;
	}
	
	// 상품 삭제
	@ResponseBody
	@RequestMapping("/delPrd")
	public int deleteProduct(ProductInfoVO vo) {
		productService.deleteProduct(vo);
		File file = new File("../stswk/rent/src/main/webapp/"+vo.getPrd_img());        
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
	
	// 결제
	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public String paymentView(ProductInfoVO vo) {
		return "member/payment";
	}

	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(@RequestParam(value="hiddenbtn") String hidden, PaymentVO vo, HttpSession session, Model model) {
		System.out.println(hidden);
		if (hidden.equals("prdpage")) {
			List<PaymentVO> list = paymentService.getPaymentProduct(vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("hidden", hidden);
			map.put("buy_quantity", vo.getBuy_quantity());
			map.put("prd_opt", vo.getPrd_opt());
			System.out.println(list);
			session.setAttribute("map", map);
		}
		return "member/payment";
	}
	
	// 결제 완료, 결제 정보 등록
	@RequestMapping(value="/decopay")
	public String insertPayment(String[] prd_list, PaymentVO vo) {
		System.out.println(vo.toString());
		paymentService.insertPayment(vo);
		
		return "main";
	}
	
	
	//kakao 결제
	@RequestMapping("/kakao")
	@ResponseBody
	public String kakaopage() {
		
			try {
				URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
				
				HttpURLConnection connec =(HttpURLConnection) url.openConnection();
				//서버 연결 
				
				connec.setRequestMethod("POST");
				connec.setRequestProperty("Authorization", "KakaoAK cd84d5d461e09448ad90e741df60feec");
				connec.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				//connec.setRequestProperty = 서버 연결.값 
				
				connec.setDoOutput(true);
				//setDoOutput = output 연결을 통해서 서버한테 뭘 전해줄게 있는지 없는지 에대한 메소드 
				
				String parameter ="cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=https://http://localhost:8181/rent/payment/kakao&fail_url=https://localhost:8181/fail&cancel_url=https://localhost:8181/cancel";
				OutputStream stream = connec.getOutputStream();
				// 주는 애 
				
				DataOutputStream datastream = new DataOutputStream(stream);
				// 데이터 주는 애 
				
				datastream.writeBytes(parameter);
				//바이트로 형 변환 
				
				datastream.flush();
				// 비우는 것 자기가 가지고 있는걸 보내서 손에 쥔것이 없게 만든다..
				datastream.close();
				
				int result = connec.getResponseCode();
					//결과 
				
				InputStream inputStream;
				//받는 애 
				
				if( result == 200) {
					inputStream = connec.getInputStream();
				}else {
					inputStream = connec.getErrorStream();
				}
				InputStreamReader streamreader = new InputStreamReader(inputStream);
									// 읽은 애 
				
				BufferedReader bfreader = new BufferedReader(streamreader);
								// 형 변환 하는 애 (정말 변환하기위해 존재 하지 않음.. 
				return bfreader.readLine();
				
				
			} catch (MalformedURLException e) {
				
				e.printStackTrace();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
//		return "redirect:payment";
		return "{\"result\":\"NO\"}"; 
	}
}