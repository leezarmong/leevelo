package com.look.model.cate.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.look.model.cate.CateVO;



@Repository
public class CateDAO {
	
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList(){
		List<CateVO> result = sqlsession.selectList("CateDAO.cateList");
		return result;
	}
	
	

}
