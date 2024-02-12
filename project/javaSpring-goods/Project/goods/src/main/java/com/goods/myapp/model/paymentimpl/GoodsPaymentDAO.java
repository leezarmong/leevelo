package com.goods.myapp.model.paymentimpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goods.myapp.model.payment.GoodsPaymentVO;



@Repository
public class GoodsPaymentDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	
	// 주문 내역 등록
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		sqlsession.insert("GoodsPaymentDAO.insertGoodsPayment", vo);
	}

}
