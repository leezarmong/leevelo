package com.goods.myapp.model.paymentimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.myapp.model.payment.GoodsPaymentService;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Service("GoodsPaymentService")
public class GoodsPaymentServiceImpl implements GoodsPaymentService {

	@Autowired
	GoodsPaymentDAO goodspaymentDAO;

	// 주문 내역 등록
	@Override
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		goodspaymentDAO.insertGoodsPayment(vo);
	}
	
	

	// 일반 pager
	// 회원 주문 내역
	@Override
	public List<GoodsPaymentVO> paymentList(GoodsPaymentVO vo, int start, int end) {
		return goodspaymentDAO.paymentList(vo, start, end);
	}

	// 회원 주문 내역 갯수
	@Override
	public int Countpayment(GoodsPaymentVO vo) {
		return goodspaymentDAO.Countpayment(vo);
	}
	
	

	// 검색창 pager
	// 검색된 회원 수 불러오기
	@Override
	public int CountSearchPayment(String sPrd) {
		return goodspaymentDAO.CountSearchPayment(sPrd);
	}

	// 관리자 회원 검색 검색
	@Override
	public List<GoodsPaymentVO> SearchPaymentList(String sPrd, int start, int end) {
		return goodspaymentDAO.SearchPaymentList(sPrd, start, end);
	}

}
