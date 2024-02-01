package com.look.model.board.impl;

import java.util.List;

import javax.sound.midi.Sequence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.board.BoardVO;
import com.look.model.pager.Criteria;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlsession;


	//내용입력
	public void insertBoard(BoardVO vo) {
		sqlsession.insert("BoardDAO.insertBoard", vo);

	}

	//리스트
	public List<BoardVO> boardList() {
		List<BoardVO> result = sqlsession.selectList("BoardDAO.Boardlist");
		return result;
	}
	
	//리스트 페이징
	public List<BoardVO> getListPaging(Criteria cri) {
		List<BoardVO> result = sqlsession.selectList("BoardDAO.getListPaging" ,	cri);
		return result;
	}
	
	//페이지 갯수
	public int getTotal(Criteria cri) {
		return sqlsession.selectOne("BoardDAO.getTotal",cri);
	}
	
	//상세페이지
	public BoardVO  getBoardList(int seq) {
		BoardVO result = sqlsession.selectOne("BoardDAO.getBoardList",seq);
		return result;
	}
	
	//글 삭제
	public int deleteBoard(int seq) {
		int resutl = sqlsession.delete("BoardDAO.deleteBoard",seq);
		return resutl;
	}
	
	//글 수정
	public int updateBoard(BoardVO vo) {
		int result = sqlsession.update("BoardDAO.updateBoard",vo);
		return result;
	}
	
	

}
