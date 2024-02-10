package com.goods.myapp.model.memberimpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goods.myapp.model.member.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	//회원 가입 
	public void insertMember(MemberVO vo) {
		sqlsession.insert("MemberDAO.insertMember",vo);
	}
	
	//회원 가입 아이디 중복 체크
	public int checkID(String member_id) {
		return sqlsession.selectOne("MemberDAO.checkID",member_id);
	}
	
	//로그인 시 오타 확인 맴버체크
	public int checkMember(MemberVO vo) {
		return sqlsession.selectOne("MemberDAO.checkMember",vo);
	}

}
