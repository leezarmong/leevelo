package com.goods.myapp.model.product;

import java.util.Date; 

import org.springframework.web.multipart.MultipartFile;

public class ProductInfoVO {
	private String cate_id;					// 카테고리
	private String prd_name;				// 상품 이름
	private String prd_id;					// 상품 번호
	private int prd_price;					// 상품 가격
	private String prd_img;					// 상품 이미지  경로
	private MultipartFile uploadFile;		// 이미지 등록
	private String keyword ="";				
	private String prd_explain;				// 제품 설명

	
	
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public String getCate_id() {
		return cate_id;
	}

	public void setCate_id(String cate_id) {
		this.cate_id = cate_id;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	
	
	public String getPrd_id() {
		return prd_id;
	}

	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}

	public int getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}

	public String getPrd_img() {
		return prd_img;
	}

	public void setPrd_img(String prd_img) {
		this.prd_img = prd_img;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getPrd_explain() {
		return prd_explain;
	}

	public void setPrd_explain(String prd_explain) {
		this.prd_explain = prd_explain;
	}

	@Override
	public String toString() {
		return "ProductInfoVO [cate_id=" + cate_id + ", prd_name=" + prd_name + ", prd_id=" + prd_id + ", prd_price="
				+ prd_price + ", prd_img=" + prd_img + ", uploadFile=" + uploadFile + ", keyword=" + keyword
				+ ", prd_explain=" + prd_explain + ", getKeyword()=" + getKeyword() + ", getCate_id()=" + getCate_id()
				+ ", getPrd_name()=" + getPrd_name() + ", getPrd_id()=" + getPrd_id() + ", getPrd_price()="
				+ getPrd_price() + ", getPrd_img()=" + getPrd_img() + ", getUploadFile()=" + getUploadFile()
				+ ", getPrd_explain()=" + getPrd_explain() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}
