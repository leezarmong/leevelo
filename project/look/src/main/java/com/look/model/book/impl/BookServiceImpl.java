package com.look.model.book.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.book.BookService;
import com.look.model.book.BookVO;
import com.look.model.pager.Criteria;

@Service("BookService")
public class BookServiceImpl implements BookService {
	
	
	@Autowired
	BookDAO bookDao;
	
	//상품 등록
	@Override
	public void bookEnroll(BookVO vo) {
		bookDao.bookEnroll(vo);
	}
	
	//상품 리스트
	@Override
	public List<BookVO> goodsGetList(Criteria cri){
		return bookDao.goodsGetList(cri);
	}
		
	//상품 총 개수(카운트)
	@Override
	public int goodsGetTotal(Criteria cri) {
		return bookDao.goodsGetTotal(cri);
	}
		

}
