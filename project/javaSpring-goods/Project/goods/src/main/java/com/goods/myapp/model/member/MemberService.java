package com.goods.myapp.model.member;

import java.util.List;

import com.goods.myapp.model.payment.GoodsPaymentVO;

public interface MemberService {

	// 회원 가입
	public void insertMember(MemberVO vo);

	// 회원 가입 아이디 중복 체크
	public int checkID(String member_id);

	// 로그인 시 오타 확인 맴버체크
	public int checkMember(MemberVO vo);

	// 로그인
	public MemberVO login(MemberVO vo);

	// 구매 내역 조회
	public  List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end);

	// 구매 갯수
	public int getCountOrder(GoodsPaymentVO vo);

}
