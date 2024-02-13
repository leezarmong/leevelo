package com.goods.myapp.controller;

import java.util.HashMap;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.goods.myapp.Pager;
import com.goods.myapp.model.basket.BasketService;
import com.goods.myapp.model.basket.BasketVO;
import com.goods.myapp.model.payment.GoodsPaymentService;
import com.goods.myapp.model.payment.GoodsPaymentVO;
import com.goods.myapp.model.product.ProductInfoVO;
import com.goods.myapp.model.product.ProductService;


@Controller
public class GoodsController {

    @Autowired
    ProductService productService;

    @Autowired
    GoodsPaymentService goodspaymentservice;
    
    @Autowired
    BasketService basketservice;

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


    // 제품 상세페이지
    @RequestMapping(value = "/goodsInfo", method = RequestMethod.GET)
    public String productPage(ProductInfoVO vo, Model model) {
        model.addAttribute("goods", productService.productDetail(vo));
        return "/goods/goodsInfo";
    }

    //주문 이동
    @GetMapping(value = "/goodsPayment")
    public String paymentGoods(GoodsPaymentVO vo) {
        return "/goods/goodsPayment";
    }
    
    @PostMapping(value = "/goodsPayment")
    public String orderGoods(GoodsPaymentVO vo, HttpSession session, ProductInfoVO gvo, String basket) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        //getproductlist 가져오기
        map.put("vo", vo);
        map.put("gvo", gvo);
        map.put("basket", basket);
        session.setAttribute("goods", map);
        return "/goods/goodsPayment";
    }


    // 주문 내역 등록(DB)
    @PostMapping(value = "/payment")
    public String insertGoodsPayment(GoodsPaymentVO vo, String basket, BasketVO bvo) {
        if (basket.equals("basket")) {
            System.out.println(basket);

            basketservice.deleteCartPayment(bvo);
            //결제 후 장바구니 삭제.
            goodspaymentservice.insertGoodsPayment(vo);
            return "basket/basketlist";
        } else {
            goodspaymentservice.insertGoodsPayment(vo);
            return "main";
        }
    }


}
