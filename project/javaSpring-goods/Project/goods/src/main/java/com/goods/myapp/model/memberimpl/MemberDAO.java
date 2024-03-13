package com.goods.myapp.model.memberimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	// 회원정보 수정
	public void updateMember(MemberVO vo) {
		sqlsession.update("MemberDAO.updateMember", vo);
	}

	// 관리자 회원 목록
	public List<MemberVO> getAdminMemberList(int start, int end, MemberVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("product", vo);
		return sqlsession.selectList("MemberDAO.getAdminMemberList", map);
	}

	// 관리자 회원 목록 카운트
	public int getAdminCountMember(MemberVO vo) {
		return sqlsession.selectOne("MemberDAO.getAdminCountMember", vo);
	}

	// 관리자 회원 상세 정보
	public MemberVO memberDetail(MemberVO vo) {
		return (MemberVO) sqlsession.selectOne("MemberDAO.memberDetail", vo);
	}

	// 회원 탈퇴, 삭제
	public void deleteMember(MemberVO vo) {
		sqlsession.delete("MemberDAO.deleteMember", vo);
	}

	// 관리자 회원 정보 수정
	public void modifyMember(MemberVO vo) {
		sqlsession.update("MemberDAO.modifyMember", vo);
	}

	// 검색된 회원 수 불러오기
	public int countSearchMem(String sPrd) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sPrd", sPrd);
		return sqlsession.selectOne("MemberDAO.countSearchMem", map);
	}

	// 관리자 회원 검색 검색
	public List<MemberVO> listSearchMem(String sPrd, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sPrd", sPrd);
		map.put("start", start);
		map.put("end", end);
		return sqlsession.selectList("MemberDAO.listSearchMem", map);
	}
	
	// 아이디 찾기
		public int findId(MemberVO vo) {
			System.out.println("이름체크3");
			return sqlsession.selectOne("MemberDAO.findId", vo);
		}
		
		public MemberVO findId2(MemberVO vo) {
			System.out.println("회원체크3");
			return (MemberVO) sqlsession.selectOne("MemberDAO.findId2", vo);
		}

}
