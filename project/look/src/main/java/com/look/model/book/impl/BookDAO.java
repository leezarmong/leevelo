package com.look.model.book.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.book.BookVO;
import com.look.model.pager.Criteria;

@Repository
public class BookDAO {

	@Autowired
	SqlSessionTemplate sqlsession;
	
	
	//상품 등록
	public void bookEnroll(BookVO vo) {
		sqlsession.insert("BookDAO.bookEnroll",vo);
	}
	
	//상품 리스트
	public List<BookVO> goodsGetList(Criteria cri){
		List<BookVO> result = sqlsession.selectList("BookDAO.goodsGetList",cri);
		return result;
	}
	
	//상품 총 개수(카운트)
	public int goodsGetTotal(Criteria cri) {
		return sqlsession.selectOne("BookDAO.goodsGetTotal",cri);
	}
	
}
