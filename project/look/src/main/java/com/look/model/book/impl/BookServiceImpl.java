package com.look.model.book.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.book.BookService;
import com.look.model.book.BookVO;

@Service("BookService")
public class BookServiceImpl implements BookService {
	
	
	@Autowired
	BookDAO bookDao;
	
	//상품 등록
	@Override
	public void bookEnroll(BookVO vo) {
		bookDao.bookEnroll(vo);
	}
		

}
