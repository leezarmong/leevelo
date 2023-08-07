package com.rent.model.member.impl;

import java.util.List;

import org.bouncycastle.jcajce.provider.digest.SHA3;
import org.bouncycastle.util.encoders.Hex;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.model.member.MemberService;
import com.rent.model.member.MemberVO;
import com.rent.model.payment.PaymentVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	// 패스워드 암호화
	public void securityPWD(MemberVO vo) {
		SHA3.DigestSHA3 digestSHA3 = new SHA3.DigestSHA3(512);
		byte[] digest = digestSHA3.digest(vo.getMember_password().getBytes());
		String securitypwd = Hex.toHexString(digest);
		vo.setMember_password(securitypwd);
	}
	
	public void imsiPW(MemberVO vo) {
		char[] charSet = new char[] { 
				'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
				'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
				'U', 'V', 'W', 'X', 'Y', 'Z' };
		int idx = 0;
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 10; i++) {
			idx = (int) (charSet.length * Math.random());
			sb.append(charSet[idx]);
		}
		String imPW = sb.toString();
	}

	// ID 중복검사
	public int checkID(MemberVO vo) {
		return memberDAO.checkID(vo);
	}

	// 회원 유무 검사
	public int checkMember(MemberVO vo) {
		securityPWD(vo);
		return memberDAO.checkMember(vo);
	}

	// 회원가입
	public void insertMember(MemberVO vo) {
		securityPWD(vo);
		memberDAO.insertMember(vo);
	}

	// 로그인
	public MemberVO login(MemberVO vo) {
		securityPWD(vo);
		return memberDAO.login(vo);
	}

	// 회원정보 수정
	public void updateMember(MemberVO vo) {
		securityPWD(vo);
		memberDAO.updateMember(vo);
	}

	// 회원 주문내역
	public List<PaymentVO> getOrderList(MemberVO vo, int start, int end) {
		return memberDAO.getOrderList(vo, start, end);
	}

	// 회원 주문내역 갯수
	public int getCountOrder(MemberVO vo) {
		return memberDAO.getCountOrder(vo);
	}

	// 아이디 찾기
	public int findId(MemberVO vo) {
		return memberDAO.findId(vo);
	}
	
	public MemberVO findId2(MemberVO vo) {
		return memberDAO.findId2(vo);
	}
	
	// 비밀번호 찾기
	public int findPw(MemberVO vo) {
		return memberDAO.findPw(vo);
	}
	
	public MemberVO findPw2(MemberVO vo) {
		return memberDAO.findPw2(vo);
	}
	
	// 비밀번호 변경
	public void cpwMember(MemberVO vo) {
		securityPWD(vo);
		memberDAO.cpwMember(vo);
	}

	// 관리자 회원 목록
	public List<MemberVO> getAdminMemberList(int start, int end, MemberVO vo) {
		return memberDAO.getAdminMemberList(start, end, vo);
	}

	public int getAdminCountMember(MemberVO vo) {
		return memberDAO.getAdminCountMember(vo);
	}
	
	// 검색된 회원 수 불러오기
	public int countSearchMem(String sPrd) {
		return memberDAO.countSearchMem(sPrd);
	}
	
	// 관리자 회원 검색	
	@Override
	public List<MemberVO> listSearchMem(String sPrd, int start, int end) {
		return memberDAO.listSearchMem(sPrd, start, end);
	}
	
	// 회원 정보 상세보기
	public MemberVO memberDetail(MemberVO vo) {
		return memberDAO.memberDetail(vo);
	}
	
	// 회원 정보 삭제
	public void deleteMember(MemberVO vo) {
		memberDAO.deleteMember(vo);
	}
	
	// 회원 정보 수정
	public void modifyMember(MemberVO vo) {
		memberDAO.modifyMember(vo);
	}
	
}