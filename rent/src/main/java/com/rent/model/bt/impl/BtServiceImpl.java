package com.rent.model.bt.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.model.bt.BtService;
import com.rent.model.bt.BtVO;

@Service("BtService")
public class BtServiceImpl implements BtService {

	@Autowired
	private BtDAO btDAO;

	// 선택 보험 정보
	public BtVO btinfo(BtVO vo) {
		return btDAO.btinfo(vo);		
	}
	
}
