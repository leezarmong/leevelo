package com.goods.myapp.model.member;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

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
	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end);

	// 구매 갯수
	public int getCountOrder(GoodsPaymentVO vo);

	// 회원정보 수정
	public void updateMember(MemberVO vo);

	// 관리자 회원 목록
	public List<MemberVO> getAdminMemberList(int start, int end, MemberVO vo);

	// 관리자 회원 목록 카운트
	public int getAdminCountMember(MemberVO vo);

	// 관리자 회원 상세 정보
	public MemberVO memberDetail(MemberVO vo);

	// 회원 탈퇴, 삭제
//		public void deleteMember(MemberVO vo) {
//			mybatis.delete("MemberDAO.deleteMember", vo);
//		}

	// 관리자 회원 정보 수정
	public void modifyMember(MemberVO vo);

}
