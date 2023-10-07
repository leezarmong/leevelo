package com.look.model.cate.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.look.model.cate.CateService;

@Service("CateService")
public class CateServiceImpl implements CateService{
	
	
	
	@Autowired
	CateDAO cateDao;
	

}
