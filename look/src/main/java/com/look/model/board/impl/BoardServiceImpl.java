package com.look.model.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.board.BoardService;
import com.look.model.board.BoardVO;
import com.look.model.pager.Criteria;

@Service("boardservice")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDAO;

	//입력
	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}
	
	//리스트 
	@Override
	public List<BoardVO> boardList() {
		return boardDAO.boardList();
	}
	
	//리스트 페이징
	@Override
	public List<BoardVO> getListPaging(Criteria cri) {
		return boardDAO.getListPaging(cri);
	} 
	
	//페이지 갯수
	@Override
	public int getTotal(Criteria cri) {
		return boardDAO.getTotal(cri);
	}
	
	//상세페이지 
	@Override
	public BoardVO  getBoardList(int seq) {
		return boardDAO.getBoardList(seq);
	}
	//글 삭제
	@Override
	public int deleteBoard(int seq) {
		return boardDAO.deleteBoard(seq);
	}
	
	//글 수정
	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
	}
	

}
