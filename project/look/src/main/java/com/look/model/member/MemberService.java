package com.look.model.member;

import com.look.model.member.MemberVO;


public interface MemberService {
	
	//회원 가입
	public void insertMember(MemberVO vo);
	
	//회원가입 아이디 중복 체크
	public int checkID(String member_id);
	
	//로그인
	public MemberVO login(MemberVO vo);
	
	//회원 중복 체크
	public int checkMember(MemberVO vo);

	//비밀번호 변경 체크 
	public int findchackPWing(MemberVO vo);
	
	//비밀번호 변경 확인
	public MemberVO findchackPW(MemberVO vo);
	
	// 비밀번호 변경
	public void cpwMember(MemberVO vo);
	
	//아이디 정보 체크 
	public int findchackIDing(MemberVO vo);
		
	//아이디 확인
	public MemberVO findchackID(MemberVO vo); 
}
