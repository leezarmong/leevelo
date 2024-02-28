package com.goods.myapp.model.paymentimpl;

import java.util.HashMap;
import java.util.List;

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

}
