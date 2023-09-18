package com.look.model.member.impl;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.look.model.member.MemberService;
import com.look.model.member.MemberVO;


@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;

	//회원 가입
	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}
	
	//회원가입 아이디 중복 체크
	@Override
	public int checkID(String member_id) {
		return memberDao.checkID(member_id);
	}

	//로그인
	@Override
	public MemberVO login(MemberVO vo) {
	return memberDao.login(vo);
	}
	
	//회원 중복 체크
	public int checkMember(MemberVO vo) {
		return memberDao.checkMember(vo);
	}
	
	//비밀번호 변경 체크 
	public int findchackPWing(MemberVO vo) {
		return memberDao.findchackPWing(vo);
	}
	public MemberVO findchackPW(MemberVO vo) {
		return memberDao.findchackPW(vo);
	}
	
	// 비밀번호 변경
		public void cpwMember(MemberVO vo) {
			System.out.print("여기 진입됨?3");
			memberDao.cpwMember(vo);
			System.out.print("여기 진입됨?4");
		}
	
}
