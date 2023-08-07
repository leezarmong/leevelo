package com.rent.model.bt.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rent.model.bt.BtVO;

@Repository
public class BtDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 선택 보험 정보
	public BtVO btinfo(BtVO vo) {
		return (BtVO) mybatis.selectOne("BtDAO.btinfo", vo);
	}
}
