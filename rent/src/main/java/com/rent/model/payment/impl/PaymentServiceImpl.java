package com.rent.model.payment.impl;

import java.util.List;

import org.bouncycastle.jcajce.provider.digest.SHA3;
import org.bouncycastle.util.encoders.Hex;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.model.payment.PaymentService;
import com.rent.model.payment.PaymentVO;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private PaymentDAO paymentDAO;
	
	// 신용카드 정보 암호화
	public void securityCREDIT(PaymentVO vo) {
		SHA3.DigestSHA3 digestSHA3 = new SHA3.DigestSHA3(512);
		byte[] digest = digestSHA3.digest(vo.getCredit_number().getBytes());
		String securitycredit = Hex.toHexString(digest);
		vo.setCredit_number(securitycredit);
		System.out.println("SHA3-512: " + vo.getCredit_number());
	}
		
	// 결제 창 선택 상품 정보 불러오기
	public List<PaymentVO> getPaymentProduct(PaymentVO vo) {
		return paymentDAO.getPaymentProduct(vo);
	}
	
	// 결제 정보 등록
	public void insertPayment(PaymentVO vo) {
		paymentDAO.insertPayment(vo);
	}
	
	// 주문  정보 삭제
	public void deletePayment(PaymentVO vo) {
		paymentDAO.deletePayment(vo);
	}
	
}
