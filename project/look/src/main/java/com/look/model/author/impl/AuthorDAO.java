package com.look.model.author.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.author.AuthorVO;


@Repository
public class AuthorDAO {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	
	//작가 등록
	public void authorEnroll(AuthorVO vo) {
		sqlsession.insert("AuthorDAO.authorEnroll",vo);
	}
	
	//작가 리스트 (페에징)

}
