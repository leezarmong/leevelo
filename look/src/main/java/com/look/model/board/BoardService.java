package com.look.model.board;

import java.util.List;

import com.look.model.pager.Criteria;

public interface BoardService {
	
	//입력
	void insertBoard(BoardVO vo);
	
	//리스트 
	public List<BoardVO> boardList();
	
	//리스트 페이징
	public List<BoardVO> getListPaging(Criteria cri);
	
	//페이지 갯수
	public int getTotal(Criteria cri);
	
	//상세페이지 
	public BoardVO  getBoardList(int seq);
	
	//글 삭제
	public int deleteBoard(int seq);
	
	//글 수정
	public int updateBoard(BoardVO vo);
	

}
