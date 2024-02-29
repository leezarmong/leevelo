package com.goods.myapp.model.payment;

import java.util.List;


public interface GoodsPaymentService {

	// 주문 내역 등록
	public void insertGoodsPayment(GoodsPaymentVO vo);

	
	
	// 일반 pager
	// 회원 주문 내역
	public List<GoodsPaymentVO> paymentList(GoodsPaymentVO vo, int start, int end);

	// 회원 주문 내역 갯수
	public int Countpayment(GoodsPaymentVO vo);

	
	
	// 검색창 pager
	// 검색된 회원 수 불러오기
	public int CountSearchPayment(String sPrd);

	// 관리자 회원 검색 검색
	public List<GoodsPaymentVO> SearchPaymentList(String sPrd, int start, int end);

}
