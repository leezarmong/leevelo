package com.goods.myapp.model.member;

import java.sql.Date;

public class MemberVO {

		private int member_no;		// 회원번호
		private String member_id;	// 아이디
		private String member_pwd;	// 비밀번호
		private String member_name;	// 이름
		private String member_phone;// 전화번호
		private int member_age;		// 나이
		private String member_email;// 이메일
		private String member_addr;	// 주소
		private Date member_date;	// 가입날짜
		private String member_faddr;	// 주소
		
		
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
		private String member_laddr;	// 상세 주소
		
		
		public int getMember_no() {
			return member_no;
		}
		public void setMember_no(int member_no) {
			this.member_no = member_no;
		}
		public String getMember_id() {
			return member_id;
		}
		public void setMember_id(String member_id) {
			this.member_id = member_id;
		}
		public String getMember_pwd() {
			return member_pwd;
		}
		public void setMember_pwd(String member_pwd) {
			this.member_pwd = member_pwd;
		}
		public String getMember_name() {
			return member_name;
		}
		public void setMember_name(String member_name) {
			this.member_name = member_name;
		}
		public String getMember_phone() {
			return member_phone;
		}
		public void setMember_phone(String member_phone) {
			this.member_phone = member_phone;
		}
		public int getMember_age() {
			return member_age;
		}
		public void setMember_age(int member_age) {
			this.member_age = member_age;
		}
		public String getMember_email() {
			return member_email;
		}
		public void setMember_email(String member_email) {
			this.member_email = member_email;
		}
		public String getMember_addr() {
			return member_addr;
		}
		public void setMember_addr(String member_addr) {
			this.member_addr = member_addr;
		}
		public Date getMember_date() {
			return member_date;
		}
		public void setMember_date(Date member_date) {
			this.member_date = member_date;
		}
		
		@Override
		public String toString() {
			return "MemberVO [member_no=" + member_no + ", member_id=" + member_id + ", member_pwd=" + member_pwd
					+ ", member_name=" + member_name + ", member_phone=" + member_phone + ", member_age=" + member_age
					+ ", member_email=" + member_email + ", member_addr=" + member_addr + ", member_date=" + member_date
					+ ", member_faddr=" + member_faddr + ", member_laddr=" + member_laddr + ", getMember_faddr()="
					+ getMember_faddr() + ", getMember_laddr()=" + getMember_laddr() + ", getMember_no()="
					+ getMember_no() + ", getMember_id()=" + getMember_id() + ", getMember_pwd()=" + getMember_pwd()
					+ ", getMember_name()=" + getMember_name() + ", getMember_phone()=" + getMember_phone()
					+ ", getMember_age()=" + getMember_age() + ", getMember_email()=" + getMember_email()
					+ ", getMember_addr()=" + getMember_addr() + ", getMember_date()=" + getMember_date()
					+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
					+ "]";
		}
	

}
