package com.rent.model.member;

import java.util.List;

import com.rent.model.payment.PaymentVO;

public interface MemberService {
	
	// ID 중복검사
	int checkID(MemberVO vo);
	
	// 로그인시 회원 체크
	int checkMember(MemberVO vo);

	// 회원가입
	void insertMember(MemberVO vo);
	
	// 마이페이지
	// 회원 주문내역
	List<PaymentVO> getOrderList(MemberVO vo, int start, int end);
	// 회원 주문내역 갯수
	int getCountOrder(MemberVO vo);
	// 회원정보 수정
	void updateMember(MemberVO vo);
	
	// 로그인
	MemberVO login(MemberVO vo);
	
	// 아이디 찾기
	int findId(MemberVO vo);
	MemberVO findId2(MemberVO vo);
	
	// 비밀번호 찾기
	int findPw(MemberVO vo);
	MemberVO findPw2(MemberVO vo);
	
	// 비밀번호 변경
	void cpwMember(MemberVO vo);
	
	// 관리자 회원 목록
	List<MemberVO> getAdminMemberList(int start, int end, MemberVO vo);
	int getAdminCountMember(MemberVO vo);

	// 검색된 회원 수 불러오기
	int countSearchMem(String sPrd2);
	
	// 관리자 회원 검색
	List<MemberVO> listSearchMem(String sPrd, int start, int end);
	
	// 관리자 회원 상제 정보
	MemberVO memberDetail(MemberVO vo);
	
	// 회원 탈퇴, 삭제
	void deleteMember(MemberVO vo);
	
	// 관리자 회원 정보 수정
	void modifyMember(MemberVO vo);
	
}