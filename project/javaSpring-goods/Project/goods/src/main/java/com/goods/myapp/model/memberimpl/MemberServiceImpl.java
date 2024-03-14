package com.goods.myapp.model.memberimpl;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.myapp.model.member.MemberService;
import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

	// 회원 가입
	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	// 회원 가입 아이디 중복 체크
	@Override
	public int checkID(String member_id) {
		return memberDAO.checkID(member_id);
	}

	// 로그인 시 오타 확인 맴버체크
	@Override
	public int checkMember(MemberVO vo) {
		return memberDAO.checkMember(vo);
	}

	// 로그인
	@Override
	public MemberVO login(MemberVO vo) {
		return memberDAO.login(vo);
	}

	// 구매 내역 조회
	@Override
	// 구매 내역 조회
	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end) {
		return memberDAO.getGoodsPaymentList(vo, start, end);
	}

	// 구매 갯수
	@Override
	public int getCountOrder(GoodsPaymentVO vo) {
		return memberDAO.getCountOrder(vo);
	}

	// 회원정보 수정
	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}

	// 관리자 회원 목록
	@Override
	public List<MemberVO> getAdminMemberList(int start, int end, MemberVO vo) {
		return memberDAO.getAdminMemberList(start, end, vo);
	}

	// 관리자 회원 목록 카운트
	@Override
	public int getAdminCountMember(MemberVO vo) {
		return memberDAO.getAdminCountMember(vo);
	}

	// 관리자 회원 상세 정보
	@Override
	public MemberVO memberDetail(MemberVO vo) {
		return memberDAO.memberDetail(vo);
	}

	// 회원 탈퇴, 삭제
	@Override
	public void deleteMember(MemberVO vo) {
		memberDAO.deleteMember(vo);
	}

	// 관리자 회원 정보 수정
	@Override
	public void modifyMember(MemberVO vo) {
		memberDAO.modifyMember(vo);
	}

	// 검색된 회원 수 불러오기
	@Override
	public int countSearchMem(String sPrd) {
		return memberDAO.countSearchMem(sPrd);
	}

	// 관리자 회원 검색 검색
	@Override
	public List<MemberVO> listSearchMem(String sPrd, int start, int end) {
		return memberDAO.listSearchMem(sPrd, start, end);
	}

	// 아이디 찾기
	@Override
	public int findId(MemberVO vo) {
		return memberDAO.findId(vo);
	}
	
	// 아이디 불러오기
	@Override
	public MemberVO findId2(MemberVO vo) {
		return memberDAO.findId2(vo);
	}

	// 비밀번호 찾기
	@Override
	public int findPw(MemberVO vo) {
		return memberDAO.findPw(vo);
	}
	
	// 비밀번호 불러오기
	@Override
	public MemberVO findPw2(MemberVO vo) {
		return memberDAO.findPw2(vo);
	}

	// 비밀번호 변경
	@Override
	public void cpwMember(MemberVO vo) {
		memberDAO.cpwMember(vo);
	}

}
