package com.goods.myapp.model.productimpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.myapp.model.product.ProductInfoVO;
import com.goods.myapp.model.product.ProductService;



@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductInfoDAO productInfoDAO;

	// 상품 갯수 체크
	public int getCountProduct(ProductInfoVO vo) {
		return productInfoDAO.getCountProduct(vo);
	}

		// 상품 목록
	public List<ProductInfoVO> getProductList(int start, int end, ProductInfoVO vo) {
		return productInfoDAO.getProductList(start, end, vo);
	}
		
		
	// 상품 상세보기
	public ProductInfoVO productDetail(ProductInfoVO vo) {
		return productInfoDAO.productDetail(vo);
	}	
	
	// 관리자 상품 코드 중복검사
	public int prdCheckID(ProductInfoVO vo) {
		return productInfoDAO.prdCheckID(vo);
	}

	// 관리자 상품 등록
	public void insertProduct(ProductInfoVO vo) {
		productInfoDAO.insertProduct(vo);
	}

	// 관리자 상품 목록 갯수 체크
	public int getAdminCountProduct(ProductInfoVO vo) {
		return productInfoDAO.getAdminCountProduct(vo);
	}	

	// 관리자 상품 목록
	public List<ProductInfoVO> getAdminProductList(int start, int end, ProductInfoVO vo) {
		return productInfoDAO.getAdminProductList(start, end, vo);
	}
	
	// 관리자 검색된 상품 수 카운트
	public int countSearchPrd(String sPrd) {
			return productInfoDAO.countSearchPrd(sPrd);
	}
	
	// 관리자 상품 검색 
	@Override
	public List<ProductInfoVO> listSearchPrd(String sPrd2, int start, int end) {
		// TODO Auto-generated method stub
		return productInfoDAO.listSearchPrd(sPrd2, start, end);
	}

	// 관리자 상품 정보 수정
	public void modifyProduct(ProductInfoVO vo) {
		productInfoDAO.modifyProduct(vo);
	}
	
	// 관리자 상품 삭제
	public void deleteProduct(ProductInfoVO vo) {
		productInfoDAO.deleteProduct(vo);
	}
	
}
