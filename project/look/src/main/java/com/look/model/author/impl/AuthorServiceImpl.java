package com.look.model.author.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.author.AuthorService;
import com.look.model.author.AuthorVO;

@Service("AuthorService")
public class AuthorServiceImpl implements AuthorService{
	
	@Autowired
	AuthorDAO authorDAO;
	
	
	//작가 등록
	@Override
	public void authorEnroll(AuthorVO vo) {
		authorDAO.authorEnroll(vo);
		
	}

}
