package com.goods.myapp.model.productimpl;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goods.myapp.model.product.ProductInfoVO;



@Repository
public class ProductInfoDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 상품 갯수 체크
	public int getCountProduct(ProductInfoVO vo) {
		return mybatis.selectOne("ProductInfoDAO.getCountProduct", vo);
	}
	
	// 상품 목록
	public List<ProductInfoVO> getProductList(int start, int end, ProductInfoVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("product", vo);
		return mybatis.selectList("ProductInfoDAO.getProductList", map);
	}

	// 상품 상세보기
	public ProductInfoVO productDetail(ProductInfoVO vo) {
		return (ProductInfoVO) mybatis.selectOne("ProductInfoDAO.productDetail", vo);
	}
	
	// 관리자 상품 코드 중복검사
	public int prdCheckID(ProductInfoVO vo) {
		return mybatis.selectOne("ProductInfoDAO.prdCheckID", vo);
	}

	// 관리자 상품 등록
	public void insertProduct(ProductInfoVO vo) {
		mybatis.insert("ProductInfoDAO.insertProduct", vo);
	}
	
	// 관리자 페이지 상품 갯수 체크
	public int getAdminCountProduct(ProductInfoVO vo) {
		return mybatis.selectOne("ProductInfoDAO.getAdminCountProduct", vo);
	}
	
	// 관리자 상품 목록
	public List<ProductInfoVO> getAdminProductList(int start, int end, ProductInfoVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("product", vo);
		return mybatis.selectList("ProductInfoDAO.getAdminProductList", map);
	}	
	
	// 관리자 검색된 상품 수 카운트
	public int countSearchPrd(String sPrd) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sPrd", sPrd);
		return mybatis.selectOne("ProductInfoDAO.countSearchPrd", map);
	}		
	
	// 관리자 상품 검색 
	public List<ProductInfoVO> listSearchPrd(String sPrd2, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sPrd", sPrd2);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("ProductInfoDAO.listSearchPrd", map);
	}
	
	// 관리자 상품 정보 수정
	public void modifyProduct(ProductInfoVO vo) {
		mybatis.update("ProductInfoDAO.modifyProduct", vo);
	}
	
	// 관리자 상품 삭제
	public void deleteProduct(ProductInfoVO vo) {
		mybatis.delete("ProductInfoDAO.deleteProduct", vo);
	}
	
}
