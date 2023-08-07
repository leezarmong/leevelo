package com.rent.model.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductInfoVO {
	private String cate_id;					// 카테고리
	private String prd_name;				// 상품 이름
	private String prd_id;					// 상품 번호
	private Date prd_date;					// 상품 등록 날짜
	private int prd_price;					// 상품 가격
	private String prd_img;					// 상품 이미지  경로
	private int prd_delivery;				// 배송료
	private int prd_stock;					// 재고
	private String prd_option;				// 상품 옵션
	private int prd_discount;				// 상품 할인 금액
	private MultipartFile uploadFile;		// 이미지 등록
	private String keyword ="";				
	private String prd_explain;

	@Override
	public String toString() {
		return "ProductVO [ CATE_ID = " + cate_id +
						", PRD_NAME = " + prd_name +
						", PRD_ID = " + prd_id + 
						", PRD_DATE = " + prd_date + 
						", PRD_PRICE = " + prd_price + 
						", PRD_IMG = " + prd_img + 
						", PRD_DELIVERY = " + prd_delivery + 
						", PRD_STOCK = " + prd_stock + 
						", PRD_OPTION = " + prd_option + 
						", PRD_DISCOUNT = " + prd_discount + 
						", PRD_EXPLAIN = " + prd_explain + " ]";
	}
	
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

	public Date getPrd_date() {
		return prd_date;
	}

	public void setPrd_date(Date prd_date) {
		this.prd_date = prd_date;
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

	public int getPrd_delivery() {
		return prd_delivery;
	}

	public void setPrd_delivery(int prd_delivery) {
		this.prd_delivery = prd_delivery;
	}

	public int getPrd_stock() {
		return prd_stock;
	}

	public void setPrd_stock(int prd_stock) {
		this.prd_stock = prd_stock;
	}

	public String getPrd_option() {
		return prd_option;
	}

	public void setPrd_option(String prd_option) {
		this.prd_option = prd_option;
	}

	public int getPrd_discount() {
		return prd_discount;
	}

	public void setPrd_discount(int prd_discount) {
		this.prd_discount = prd_discount;
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
}
