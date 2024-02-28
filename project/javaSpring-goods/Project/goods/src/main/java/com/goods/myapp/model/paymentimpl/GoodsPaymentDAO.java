package com.goods.myapp.model.paymentimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Repository
public class GoodsPaymentDAO {

	@Autowired
	SqlSession sqlsession;

	// 주문 내역 등록
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		sqlsession.insert("GoodsPaymentDAO.insertGoodsPayment", vo);
	}

	// 회원 주문 내역
	public List<GoodsPaymentVO> paymentList(GoodsPaymentVO vo, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", vo);
		map.put("start", start);
		map.put("end", end);
		return sqlsession.selectList("GoodsPaymentDAO.paymentList", map);
	}
	
	// 회원 주문 내역 갯수
	public int Countpayment (GoodsPaymentVO vo) {
		return sqlsession.selectOne("GoodsPaymentDAO.Countpayment",vo);
	}

}
