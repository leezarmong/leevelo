package com.look.model.book.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.book.BookVO;

@Repository
public class BookDAO {

	@Autowired
	SqlSessionTemplate sqlsession;
	
	
	//상품 등록
	public void bookEnroll(BookVO vo) {
		sqlsession.insert("BookDAO.bookEnroll",vo);
	}
	
}
