package com.look.model.author.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.author.AuthorService;
import com.look.model.author.AuthorVO;
import com.look.model.pager.Criteria;

@Service("AuthorService")
public class AuthorServiceImpl implements AuthorService{
	
	@Autowired
	AuthorDAO authorDAO;
	
	
	//작가 등록
	@Override
	public void authorEnroll(AuthorVO vo) {
		authorDAO.authorEnroll(vo);	
	}
	
	//작가 리스트 (페에징)
	@Override
	public List<AuthorVO> authorGetList(Criteria cri) {
		return authorDAO.authorGetList(cri);
	}
	
	//작가 수 (카운팅)
	@Override
	public int  authorGetTotal(Criteria cri) {
		return authorDAO.authorGetTotal(cri);
	}
	
	//작가 디테일 (상세 페이지)
	@Override
	public AuthorVO authorGetDetail(int authorId) {
		return authorDAO.authorGetDetail(authorId);
	}

}
