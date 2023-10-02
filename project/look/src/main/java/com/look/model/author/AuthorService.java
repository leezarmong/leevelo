package com.look.model.author;

import java.util.List;

import com.look.model.pager.Criteria;

public interface AuthorService {
	
	
	//작가 등록
	public void authorEnroll(AuthorVO vo); 
	
	
	//작가 리스트 (페에징)
	public List<AuthorVO> authorGetList(Criteria cri);
	
	
	//작가 수 (카운팅)
	public int  authorGetTotal(Criteria cri);

}
