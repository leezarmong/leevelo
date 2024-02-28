package com.goods.myapp.model.payment;

import java.util.HashMap;
import java.util.List;

public interface GoodsPaymentService {

	// 주문 내역 등록
	public void insertGoodsPayment(GoodsPaymentVO vo);

	// 회원 주문 내역
	public List<GoodsPaymentVO> paymentList(GoodsPaymentVO vo, int start, int end);

	// 회원 주문 내역 갯수
	public int Countpayment(GoodsPaymentVO vo);

}
