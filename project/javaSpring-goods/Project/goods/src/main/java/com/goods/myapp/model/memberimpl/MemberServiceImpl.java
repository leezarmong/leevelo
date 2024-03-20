package com.goods.myapp.model.memberimpl;


import java.util.List;

import org.bouncycastle.jcajce.provider.digest.SHA3;
import org.bouncycastle.util.encoders.Hex;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.myapp.model.member.MemberService;
import com.goods.myapp.model.member.MemberVO;
import com.goods.myapp.model.payment.GoodsPaymentVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	// 패스워드 암호화
		public void securityPWD(MemberVO vo) {
			SHA3.DigestSHA3 digestSHA3 = new SHA3.DigestSHA3(512);
			byte[] digest = digestSHA3.digest(vo.getMember_pwd().getBytes());
			String securitypwd = Hex.toHexString(digest);
			vo.setMember_pwd(securitypwd);
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

	// 회원 가입
	@Override
	public void insertMember(MemberVO vo) {
		securityPWD(vo);
		memberDAO.insertMember(vo);
	}

	// 회원 가입 아이디 중복 체크
	@Override
	public int checkID(MemberVO vo) {
		return memberDAO.checkID(vo);
	}

	// 로그인 시 오타 확인 맴버체크
	@Override
	public int checkMember(MemberVO vo) {
		securityPWD(vo);
		return memberDAO.checkMember(vo);
	}

	// 로그인
	@Override
	public MemberVO login(MemberVO vo) {
		securityPWD(vo);
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
		securityPWD(vo);
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
	
	// 비밀번호 찾기 count
	@Override
	public int findPw(MemberVO vo) {
		System.out.println("이름체크3");
		return memberDAO.findPw(vo);
	}
	
	// 비밀번호 불러오기 select
	@Override
	public MemberVO findPw2(MemberVO vo) {
		return memberDAO.findPw2(vo);
	}
	
	// 비밀번호 변경
	@Override
	public void changePass(MemberVO vo) {
		securityPWD(vo);
		memberDAO.changePass(vo);
	}



}
