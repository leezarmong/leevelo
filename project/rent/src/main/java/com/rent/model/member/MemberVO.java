package com.rent.model.member;

import java.sql.Date;

public class MemberVO {
	private int member_seq; 		// 회원 고유코드
	private String member_id; 		// 회원 아이디
	private String member_name; 	// 회원 이름
	private String member_password; // 회원 비밀번호
	private String member_license; 	// 회원 면허
	private String member_year; 	// 회원 생년월일
	private Date member_date; 		// 회원 가입날짜
	private String member_email; 	// 회원 이메일
	private String member_phone; 	// 회원 연락처
	private String member_zipcode; 	// 우편 번호
	private String member_faddr;	// 주소
	private String member_laddr;	// 상세 주소
	
	public int getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_license() {
		return member_license;
	}
	public void setMember_license(String member_license) {
		this.member_license = member_license;
	}
	public String getMember_year() {
		return member_year;
	}
	public void setMember_year(String member_year) {
		this.member_year = member_year;
	}
	public Date getMember_date() {
		return member_date;
	}
	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_zipcode() {
		return member_zipcode;
	}
	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}
	public String getMember_faddr() {
		return member_faddr;
	}
	public void setMember_faddr(String member_faddr) {
		this.member_faddr = member_faddr;
	}
	public String getMember_laddr() {
		return member_laddr;
	}
	public void setMember_laddr(String member_laddr) {
		this.member_laddr = member_laddr;
	}
	
	
	@Override
	public String toString() {
		return "MemberVO [member_seq=" + member_seq + ", member_id=" + member_id + ", member_name=" + member_name
				+ ", member_password=" + member_password + ", member_license=" + member_license + ", member_year="
				+ member_year + ", member_date=" + member_date + ", member_email=" + member_email + ", member_phone="
				+ member_phone + ", member_zipcode=" + member_zipcode + ", member_faddr=" + member_faddr
				+ ", member_laddr=" + member_laddr + "]";
	}
	
	
}
