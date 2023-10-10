package com.look.model.cate.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.cate.CateService;
import com.look.model.cate.CateVO;

@Service("CateService")
public class CateServiceImpl implements CateService{
	
	
	
	@Autowired
	CateDAO cateDao;
	
	
	/* 카테고리 리스트 */
	@Override
	public List<CateVO> cateList(){
		return cateDao.cateList();
	}
	

}
