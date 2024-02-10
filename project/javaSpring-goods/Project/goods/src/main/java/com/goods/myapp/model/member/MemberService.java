package com.goods.myapp.model.member;

public interface MemberService {
	
	
	//회원 가입 
	public void insertMember(MemberVO vo);
		
	//회원 가입 아이디 중복 체크
	public int checkID(String member_id);
	
	//로그인 시 오타 확인 맴버체크
	public int checkMember(MemberVO vo);
	
	// 로그인
	public MemberVO login(MemberVO vo);

}
