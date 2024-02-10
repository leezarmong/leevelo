package com.goods.myapp.model.product;

import java.util.List;

public interface ProductService {

	// 상품 목록 갯수 체크
	int getCountProduct(ProductInfoVO vo);
	
	// 상품 목록
	List<ProductInfoVO> getProductList(int start, int end, ProductInfoVO vo);
	
	// 상품 상세 정보
	ProductInfoVO productDetail(ProductInfoVO vo);
	
	// 관리자 상품 등록 번호 중복 체크
	int prdCheckID(ProductInfoVO vo);
	
	// 관리자 상품 등록
	void insertProduct(ProductInfoVO vo);

	// 관리자 상품 목록 갯수 확인
	int getAdminCountProduct(ProductInfoVO vo);
	
	// 관리자 상품 목록
	List<ProductInfoVO> getAdminProductList(int start, int end, ProductInfoVO vo);	
	
	// 관리자 상품 정보 수정
	void modifyProduct(ProductInfoVO vo);	
	
	// 관리자 상품 삭제
	void deleteProduct(ProductInfoVO vo);

	// 관리자 검색된 상품 수 카운트
	int countSearchPrd(String sPrd2);
	
	// 관리자 상품 검색 
	List<ProductInfoVO> listSearchPrd(String sPrd2, int start, int end);	
	
}