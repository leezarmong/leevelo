package com.look.model.cate.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CateDAO {
	
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	

}
