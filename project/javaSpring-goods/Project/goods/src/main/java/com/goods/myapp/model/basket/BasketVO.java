package com.goods.myapp.model.basket;

public class BasketVO {// 장바구니

	private String member_id;
	private int prd_id;
	private int basket_sum;
	private int basket_amount;
	private String prd_name;
	
	
	public int getPrd_id() {
		return prd_id;
	}
	public void setPrd_id(int prd_id) {
		this.prd_id = prd_id;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	public int getBasket_sum() {
		return basket_sum;
	}
	public void setBasket_sum(int basket_sum) {
		this.basket_sum = basket_sum;
	}
	public int getBasket_amount() {
		return basket_amount;
	}
	public void setBasket_amount(int basket_amount) {
		this.basket_amount = basket_amount;
	}
	@Override
	public String toString() {
		return "BasketVO [member_id=" + member_id + ", prd_id=" + prd_id + ", basket_sum=" + basket_sum
				+ ", basket_amount=" + basket_amount + ", prd_name=" + prd_name + ", getPrd_id()=" + getPrd_id()
				+ ", getPrd_name()=" + getPrd_name() + ", getMember_id()=" + getMember_id() + ", getBasket_sum()="
				+ getBasket_sum() + ", getBasket_amount()=" + getBasket_amount() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
