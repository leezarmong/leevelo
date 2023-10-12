package com.look.model.book;

import java.util.List;

import com.look.model.pager.Criteria;

public interface BookService {
	
	
	//상품 등록
	public void bookEnroll(BookVO vo);
	
	//상품 리스트
	public List<BookVO> goodsGetList(Criteria cri);
	
	//상품 총 개수(카운트)
	public int goodsGetTotal(Criteria cri);

}
