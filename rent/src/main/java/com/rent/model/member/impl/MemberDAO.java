package com.rent.model.member.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rent.model.member.MemberVO;
import com.rent.model.payment.PaymentVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 아이디 중복검사
	public int checkID(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.checkID", vo);
	}

	// 회원 존재 유무 검사
	public int checkMember(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.checkMember", vo);
	}

	// 회원가입
	public void insertMember(MemberVO vo) {
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	// 로그인
	public MemberVO login(MemberVO vo) {
		return (MemberVO) mybatis.selectOne("MemberDAO.login", vo);
	}

	// 회원정보 수정
	public void updateMember(MemberVO vo) {
		mybatis.update("MemberDAO.updateMember", vo);
	}

	// 회원 주문내역
	public List<PaymentVO> getOrderList(MemberVO vo, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", vo.getMember_id());
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("MemberDAO.orderMember", map);
	}

	// 회원 주문내역 갯수
	public int getCountOrder(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.orderCount", vo);
	}
	
	// 아이디 찾기
	public int findId(MemberVO vo) {
		System.out.println("이름체크3");
		return mybatis.selectOne("MemberDAO.findId", vo);
	}
	
	public MemberVO findId2(MemberVO vo) {
		System.out.println("회원체크3");
		return (MemberVO) mybatis.selectOne("MemberDAO.findId2", vo);
	}
	
	// 비밀번호 찾기
	public int findPw(MemberVO vo) {
		System.out.println("이름체크3");
		return mybatis.selectOne("MemberDAO.findPw", vo);
	}
	
	public MemberVO findPw2(MemberVO vo) {
		System.out.println("회원체크3");
		return (MemberVO) mybatis.selectOne("MemberDAO.findPw2", vo);
	}
	
	// 비밀번호 변경
	public void cpwMember(MemberVO vo) {
		mybatis.update("MemberDAO.cpwMember", vo);
	}
	
	// 관리자 회원 목록
	public List<MemberVO> getAdminMemberList(int start, int end, MemberVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("product", vo);
		return mybatis.selectList("MemberDAO.getAdminMemberList", map);
	}

	public int getAdminCountMember(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.getAdminCountMember", vo);
	}

	// 관리자 회원 검색 검색
	public List<MemberVO> listSearchMem(String sPrd, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sPrd", sPrd);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("MemberDAO.listSearchMem", map);
	}	
	
	// 검색된 회원 수 불러오기
	public int countSearchMem(String sPrd) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sPrd", sPrd);
		return mybatis.selectOne("MemberDAO.countSearchMem", map);
	}	
	
	// 관리자 회원 상세 정보
	public MemberVO memberDetail(MemberVO vo) {
		return (MemberVO) mybatis.selectOne("MemberDAO.memberDetail", vo);
	}
	
	// 회원 탈퇴, 삭제
	public void deleteMember(MemberVO vo) {
		mybatis.delete("MemberDAO.deleteMember", vo);
	}
	
	// 관리자 회원 정보 수정
	public void modifyMember(MemberVO vo) {
		mybatis.update("MemberDAO.modifyMember", vo);
	}
	
}
