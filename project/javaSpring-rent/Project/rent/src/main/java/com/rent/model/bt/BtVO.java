package com.rent.model.bt;

public class BtVO {
	private String bt_code;		// 보험 코드
	private String bt_name;		// 보험 이름					
	private String bt_price;	// 보험 가격				
	
	public String getBt_code() {
		return bt_code;
	}

	public void setBt_code(String bt_code) {
		this.bt_code = bt_code;
	}
	
	public String getBt_name() {
		return bt_name;
	}

	public void setBt_name(String bt_name) {
		this.bt_name = bt_name;
	}

	public String getBt_price() {
		return bt_price;
	}

	public void setBt_price(String bt_price) {
		this.bt_price = bt_price;
	}

	@Override
	public String toString() {
		return "BtVO [bt_code=" + bt_code + ", bt_name=" + bt_name + ", bt_price=" + bt_price + "]";
	}
}
