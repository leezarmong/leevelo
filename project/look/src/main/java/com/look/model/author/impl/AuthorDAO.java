package com.look.model.author.impl;



import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.author.AuthorVO;
import com.look.model.board.BoardVO;
import com.look.model.pager.Criteria;


@Repository
public class AuthorDAO {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	
	//작가 등록
	public void authorEnroll(AuthorVO vo) {
		sqlsession.insert("AuthorDAO.authorEnroll",vo);
	}
	
	//작가 리스트 (페에징)
	public List<AuthorVO> authorGetList(Criteria cri) {
	List<AuthorVO> result = sqlsession.selectList("AuthorDAO.authorGetList" , cri);		
	return result;
	}
		
	//작가 수 (카운팅)
	public int  authorGetTotal(Criteria cri) {
		return sqlsession.selectOne("AuthorDAO.authorGetTotal",cri);
	}
	
	//작가 디테일 (상세 페이지)
	public AuthorVO authorGetDetail(int authorId) {
		
		AuthorVO result = sqlsession.selectOne("AuthorDAO.authorGetDetail",authorId);
		return result;	
	}
	
	//작가 정보 수정
	public int authorModify(AuthorVO vo) {
		int result =sqlsession.update("AuthorDAO.authorModify",vo);
		return result;
	}


}
