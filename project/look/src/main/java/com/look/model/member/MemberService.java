package com.look.model.member;

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
	public MemberVO findchackPW(MemberVO vo);
}
