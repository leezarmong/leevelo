package com.goods.myapp.model.paymentimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.myapp.model.payment.GoodsPaymentService;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Service("GoodsPaymentService")
public class GoodsPaymentServiceImpl implements GoodsPaymentService{
	
	@Autowired
	GoodsPaymentDAO goodspaymentDAO;
	
	
	// 주문 내역 등록
	@Override
	public void insertGoodsPayment(GoodsPaymentVO vo) {
	goodspaymentDAO.insertGoodsPayment(vo);
	}

}
