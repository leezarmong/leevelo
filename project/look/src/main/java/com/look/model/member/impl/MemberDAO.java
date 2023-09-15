package com.look.model.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.member.MemberVO;

@Repository
public class MemberDAO {
	
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	//회원 가입
	public void insertMember(MemberVO vo) {

		sqlsession.insert("MemberDAO.insertMember",vo);
	}
	
	//회원가입 아이디 중복 체크
	public int checkID(String member_id) {
		return sqlsession.selectOne("MemberDAO.checkID",member_id);
	}
	
	//로그인
	public MemberVO login(MemberVO vo) {
		return (MemberVO) sqlsession.selectOne("MemberDAO.login",vo);
	}
	
	//회원 중복 체크
	public int checkMember(MemberVO vo) {
		return sqlsession.selectOne("MemberDAO.checkMember",vo);
	}
	
	//비밀번호 변경 체크 
	public int findchackPWing(MemberVO vo) {
		return sqlsession.selectOne("MemberDAO.findchackPWing",vo);
	}
	public MemberVO findchackPW(MemberVO vo) {
		System.out.println("회원체크3");
		return (MemberVO) sqlsession.selectOne("MemberDAO.findchackPW", vo);
	}

}
