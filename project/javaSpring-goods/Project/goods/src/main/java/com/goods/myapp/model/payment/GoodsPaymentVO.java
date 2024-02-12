package com.goods.myapp.model.payment;

import java.sql.Date;

public class GoodsPaymentVO {
	private String member_id;
	private int goods_num;	//prd_id (productID)
	private Date order_date;
	private String member_addr;
	private String member_phone;
	private String order_name;
	private String order_process;
	private String order_payment;
	private int order_sum;
	private int order_amount;
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getOrder_process() {
		return order_process;
	}
	public void setOrder_process(String order_process) {
		this.order_process = order_process;
	}
	public String getOrder_payment() {
		return order_payment;
	}
	public void setOrder_payment(String order_payment) {
		this.order_payment = order_payment;
	}
	public int getOrder_sum() {
		return order_sum;
	}
	public void setOrder_sum(int order_sum) {
		this.order_sum = order_sum;
	}
	public int getOrder_amount() {
		return order_amount;
	}
	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}
	
	
	@Override
	public String toString() {
		return "GoodsPaymentVO [member_id=" + member_id + ", goods_num=" + goods_num + ", order_date=" + order_date
				+ ", member_addr=" + member_addr + ", member_phone=" + member_phone + ", order_name=" + order_name
				+ ", order_process=" + order_process + ", order_payment=" + order_payment + ", order_sum=" + order_sum
				+ ", order_amount=" + order_amount + ", getMember_id()=" + getMember_id() + ", getGoods_num()="
				+ getGoods_num() + ", getOrder_date()=" + getOrder_date() + ", getMember_addr()=" + getMember_addr()
				+ ", getMember_phone()=" + getMember_phone() + ", getOrder_process()=" + getOrder_process()
				+ ", getOrder_payment()=" + getOrder_payment() + ", getOrder_sum()=" + getOrder_sum()
				+ ", getOrder_amount()=" + getOrder_amount() + ", getOrder_name()=" + getOrder_name() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	
	
	
}
