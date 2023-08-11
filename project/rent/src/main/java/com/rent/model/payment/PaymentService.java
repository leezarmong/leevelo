package com.rent.model.payment;

import java.util.List;

public interface PaymentService {
		
	// 결제 창 선택 상품 정보 불러오기
	List<PaymentVO> getPaymentProduct(PaymentVO vo);	
	
	// 결제 정보 등록
	void insertPayment(PaymentVO vo);
	
	// 주문  정보 삭제
	void deletePayment(PaymentVO vo);
	
}
