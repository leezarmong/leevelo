package com.goods.myapp.model.memberimpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlsession;

	// 회원 가입
	public void insertMember(MemberVO vo) {
		sqlsession.insert("MemberDAO.insertMember", vo);
	}

	// 회원 가입 아이디 중복 체크
	public int checkID(String member_id) {
		return sqlsession.selectOne("MemberDAO.checkID", member_id);
	}

	// 로그인 시 오타 확인 맴버체크
	public int checkMember(MemberVO vo) {
		return sqlsession.selectOne("MemberDAO.checkMember", vo);
	}

	// 로그인
	public MemberVO login(MemberVO vo) {
		return (MemberVO) sqlsession.selectOne("MemberDAO.login", vo);
	}

	// 구매 내역 조회
	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", vo);
		map.put("start", start);
		map.put("end", end);
		return sqlsession.selectList("GoodsPaymentDAO.getGoodsList", map);
	}

	// 구매 갯수
	public int getCountOrder(GoodsPaymentVO vo) {
		return sqlsession.selectOne("MemberDAO.CountOrder", vo);
	}

}
