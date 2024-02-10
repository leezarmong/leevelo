package com.goods.myapp.model.memberimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.myapp.model.member.MemberService;
import com.goods.myapp.model.member.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDAO;
	
	
	//회원 가입
	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	//회원 가입 아이디 중복 체크
	@Override
	public int checkID(String member_id) {
		return memberDAO.checkID(member_id);
	}
	
	//로그인 시 오타 확인 맴버체크
	@Override
	public int checkMember(MemberVO vo) {
		return memberDAO.checkMember(vo);
	}
	
	// 로그인
	@Override
	public MemberVO login(MemberVO vo) {
		return memberDAO.login(vo);
	}
	

}
